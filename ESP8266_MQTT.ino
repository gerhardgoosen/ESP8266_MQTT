#include "Arduino.h"

#include "FS.h"
#include "ESP8266WiFi.h"
#include "PubSubClient.h"
#include "DNSServer.h"            //Local DNS Server used for redirecting all requests to the configuration portal
#include "ESP8266WebServer.h"     //Local WebServer used to serve the configuration portal
#include "WiFiManager.h"        //https://github.com/tzapu/WiFiManager WiFi Configuration Magic
#include "ArduinoJson.h"          //https://github.com/bblanchon/ArduinoJson

WiFiClient espClient;
PubSubClient client(espClient);

//init WiFiManager
WiFiManager wifiManager;

char msg[200];
int reconnectCount = 0;

const char* mqtt_server;
const char* mqtt_port;
String deviceName;

//flag for saving data
bool shouldSaveConfig = false;
//define your default values here, if there are different values in config.json, they are overwritten.
char mqtt_device_name_param[40];
char mqtt_server_param[40];
char mqtt_port_param[6];

String mqttClientId;
String chipId; //= (String) ESP.getChipId();
String mqttTop; //= chipId + "/mqtt";
String resetTop; //= chipId + "/reset";
String apTop; //= chipId + "/ap";

void setup() {
	Serial.begin(115200);
	pinMode(0, OUTPUT);     // Initialize the GPIO0 pin as an output
	pinMode(2, OUTPUT);     // Initialize the GPIO2 pin as an output
	digitalWrite(0, HIGH);     //off
	digitalWrite(2, HIGH);     //off

	// put your setup code here, to run once:
	initESP();

	//init MQTT
	initPubSub();
}


void loop() {
	// put your main code here, to run repeatedly:
	if (!client.connected()) {
		mqttReconnect();
	}
	client.loop();
}


void initESP() {

	//read configuration from FS json
	Serial.println("mounting FS...");

	if (SPIFFS.begin()) {
		Serial.println("mounted file system");
		if (SPIFFS.exists("/config.json")) {
			//file exists, reading and loading
			Serial.println("reading config file");
			File configFile = SPIFFS.open("/config.json", "r");
			if (configFile) {
				Serial.println("opened config file");
				size_t size = configFile.size();
				// Allocate a buffer to store contents of the file.
				std::unique_ptr<char[]> buf(new char[size]);

				configFile.readBytes(buf.get(), size);
				DynamicJsonBuffer jsonBuffer;
				JsonObject& json = jsonBuffer.parseObject(buf.get());
				// json.printTo(Serial);

				if (json.success()) {
					Serial.println("\nparsed json");
					strcpy(mqtt_device_name_param, json["mqtt_device_name"]);
					strcpy(mqtt_server_param, json["mqtt_server"]);
					strcpy(mqtt_port_param, json["mqtt_port"]);

				} else {
					Serial.println("failed to load json config");
				}
			}
		} else {
			Serial.println("no config file????");
		}
	} else {
		Serial.println("failed to mount FS");
	}
	//end read

	// The extra parameters to be configured (can be either global or just in the setup)
	// After connecting, parameter.getValue() will get you the configured value
	// id/name placeholder/prompt default length
	WiFiManagerParameter custom_mqtt_server("mqtt_server", "MQTT Server", mqtt_server_param, 40);
	WiFiManagerParameter custom_mqtt_port("mqtt_port", "MQTT Port", mqtt_port_param, 6);
	WiFiManagerParameter custom_mqtt_device_name("mqtt_device_name", "Device Name", mqtt_device_name_param, 40);

	//Use this if you need to do something when your device enters configuration mode on failed WiFi connection attempt.
	wifiManager.setAPCallback(configModeCallback);

	//set config save notify callback
	wifiManager.setSaveConfigCallback(saveConfigCallback);
	wifiManager.setConfigPortalTimeout(120);

	//add all your parameters here
	wifiManager.addParameter(&custom_mqtt_server);
	wifiManager.addParameter(&custom_mqtt_port);
	wifiManager.addParameter(&custom_mqtt_device_name);

	// //first parameter is name of access point, second is the password
	//wifiManager.autoConnect("AP-NAME", "AP-PASSWORD");
	////if you just want an unsecured access point
	//wifiManager.autoConnect("AP-NAME");
	////or if you want to use and auto generated name from 'ESP' and the esp's Chip ID use
	//wifiManager.autoConnect();

	mqttClientId = "ESP-";
	mqttClientId += String(ESP.getChipId());


	if (!wifiManager.autoConnect(mqttClientId.c_str(),mqttClientId.c_str() )) {
		Serial.println("failed to connect and hit timeout");
		delay(3000);
		//reset and try again, or maybe put it to deep sleep
		ESP.reset();
		delay(5000);
	}

	//if you get here you have connected to the WiFi
	Serial.println("connected...yay :)");

	//read updated parameters
	mqtt_server = custom_mqtt_server.getValue();
	mqtt_port = custom_mqtt_port.getValue();
	deviceName = custom_mqtt_device_name.getValue();

	//save the custom parameters to FS
	if (shouldSaveConfig) {
		Serial.println("\n\n ===== \n\nsaving config \n\n=====");
		DynamicJsonBuffer jsonBuffer;
		JsonObject& json = jsonBuffer.createObject();
		json["mqtt_server"] = mqtt_server;
		json["mqtt_port"] = mqtt_port;
		json["mqtt_device_name"] = deviceName;

		File configFile = SPIFFS.open("/config.json", "w");
		if (!configFile) {
			Serial.println("failed to open config file for writing");
		}
		json.printTo(Serial);
		json.printTo(configFile);
		configFile.close();
		Serial.println("configFile saved and closed");
		//end save
	}

	Serial.println("esp local ip");
	Serial.println(WiFi.localIP());

}

//callback notifying us of the need to save config
void saveConfigCallback() {
	Serial.println("Should save config");
	shouldSaveConfig = true;
}

void resetToAPMode() {
	Serial.println("Reseting to config mode");
	wifiManager.resetSettings();
	delay(3000);
	ESP.reset();
	delay(3000);
}

void configModeCallback(WiFiManager *myWiFiManager) {
	Serial.println("Entered config mode");
	Serial.println(WiFi.softAPIP());
	Serial.println(myWiFiManager->getConfigPortalSSID());
}

void initPubSub() {
	//server setting got from AP config mode
	client.setServer(mqtt_server, atoi(mqtt_port));
	//mqttCallBack handling topics
	client.setCallback(callback);

}

void mqttReconnect() {
	// Loop until we're reconnected
	while (!client.connected()) {
		Serial.print("Attempting MQTT connection...");
		// Attempt to connect
		if (client.connect(mqttClientId.c_str())) {
			Serial.println("connected");

			// ... and resubscribe

			mqttRegisterDeviceOnBroker();

			reconnectCount = 0;
		} else {
			Serial.print("failed, rc=");
			Serial.print(client.state());
			Serial.println(" try again in 3 seconds");
			// Wait 5 seconds before retrying
			delay(3000);

			reconnectCount = reconnectCount + 1;

			if (reconnectCount > 5) {
				Serial.print("mqtt connection failed reconnectCount : ");
				Serial.println(reconnectCount);
				resetToAPMode();
			}
		}
	}
}

void mqttRegisterDeviceOnBroker() {
	Serial.println("mqttRegisterDeviceOnBroker:");

	StaticJsonBuffer<300> JSONbuffer;
	JsonObject& JSONencoder = JSONbuffer.createObject();

	JSONencoder["chipId"] = ESP.getChipId();
	JSONencoder["deviceName"] = deviceName;

	char JSONmessageBuffer[100];
	JSONencoder.printTo(JSONmessageBuffer, sizeof(JSONmessageBuffer));

	Serial.println(JSONmessageBuffer);
	chipId = (String) ESP.getChipId();
	mqttTop = chipId + "/mqtt";
	resetTop = chipId + "/reset";
	apTop = chipId + "/ap";
	if ((client.subscribe(mqttTop.c_str()) == true)
			&& (client.subscribe(apTop.c_str()) == true)
			&& (client.subscribe(resetTop.c_str()) == true)) {
		Serial.print("Success subscribe device on");
		Serial.println(apTop.c_str());
		Serial.print("Success subscribe device on");
		Serial.println(mqttTop.c_str());
		Serial.print("Success subscribe device on");
		Serial.println(resetTop.c_str());

		String topic = "register/esp8266";
		Serial.print("topic:");
		Serial.println(topic);

		if (client.publish(topic.c_str(), JSONmessageBuffer) == true) {
			Serial.println("Success sending device registration message");
		} else {
			Serial.println("Error sending sending device registration message");
		}
	} else {
		Serial.print("Error subscribing device on ");
		Serial.println(apTop);
		Serial.print("Error subscribe device on");
		Serial.println(mqttTop);
		Serial.print("Error subscribe device on");
		Serial.println(resetTop);
	}
}

void callback(char* topic_in, byte* payload, unsigned int length) {
	Serial.println("Message arrived >>>>>> ");
	payload[length] = '\0'; // Null terminator used to terminate the char array
	String message_in = (char*) payload;

	Serial.print("Message arrived on topic: [");
	Serial.print(topic_in);
	Serial.print("], ");
	Serial.println(message_in);

	//handle config
	if (strcmp(topic_in, mqttTop.c_str()) == 0) {

		Serial.println("/handle mqtt");
		handleMQTT((char*) payload);
	} else if (strcmp(topic_in, resetTop.c_str()) == 0) {

		Serial.println("/handle reset");
		ESP.reset();
	} else if (strcmp(topic_in, apTop.c_str()) == 0) {

		Serial.println("/ap mode");
		configModeCallback(&wifiManager);
		if(wifiManager.startConfigPortal(mqttClientId.c_str(),(char*)ESP.getChipId() )){

		}

	} else {
		Serial.print(topic_in);
		Serial.print(":");
		Serial.println(message_in);
		handleMQTT((char*) payload);
	}
}

void handleMQTT(char * payload) {
	Serial.println("handleMQTT>>>>");

	Serial.println(payload);
	DynamicJsonBuffer jsonBuffer;
	JsonObject& json = jsonBuffer.parseObject(payload);

	if (json.success()) {
		Serial.println("\nparsed json");
		json.printTo(Serial);

		int mqttPin;
		char mqttMode[10];
		char mqttPayload[10];
		char mqttPubTopic[100];

		mqttPin = json["pin"];
		strcpy(mqttMode, json["mode"]);
		strcpy(mqttPayload, json["payload"]);
		strcpy(mqttPubTopic, json["mqttPub"]);

		Serial.println("handleSubscription >>>");
		if (strcmp(mqttMode, "digital") == 0) {
			Serial.println("mode digital >>>");
			handleDigitalMode(mqttPin, mqttPayload, mqttPubTopic);
		} else if (strcmp(mqttMode, "analog") == 0) {
			Serial.println("mode analog >>>");
			handleAnalogMode(mqttPin, (int) mqttPayload, mqttPubTopic);
		} else if (strcmp(mqttMode, "dht") == 0) {
			Serial.println("mode dht >>>");
			// initialize temperature sensor
			//  startDHTSensor();
		}

	} else {
		Serial.println("\n could NOT parse json");
	}

}

void handleAnalogMode(int pin, int payload, char* publishTopic) {
	Serial.println("handleAnalogMode>>>");
	Serial.print("changing gpio ");
	Serial.print(pin);
	analogWrite(pin, payload);

	Serial.print("Publishing to : ");
	Serial.println(publishTopic);
	int val = analogRead(pin);
	Serial.print("val gpio ");
	Serial.println(val);

	char temp[6];
	dtostrf(val, 4, 2, temp);
	client.publish(publishTopic, temp);
}

void handleDigitalMode(int pin, char* payload, char* publishTopic) {
	Serial.println("handleDigitalMode>>>");

	// ESP is acive low

	if (strcmp((char*) payload, "HIGH") == 0) {
		Serial.print("changing gpio ");
		Serial.print(pin);
		Serial.println(" state to  : HIGH");
		digitalWrite(pin, HIGH);
	} else if (strcmp((char*) payload, "LOW") == 0) {
		Serial.print("changing gpio ");
		Serial.print(pin);
		Serial.println(" state to  : LOW");
		digitalWrite(pin, LOW);
	}

	Serial.print("Publishing to : ");
	Serial.println(publishTopic);
	int val = digitalRead(pin);
	Serial.print("val gpio ");
	Serial.println(val);

	char temp[6];
	dtostrf(val, 4, 2, temp);
	client.publish(publishTopic, temp);

}
