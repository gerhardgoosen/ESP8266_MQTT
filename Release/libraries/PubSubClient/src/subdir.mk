################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/libraries/PubSubClient/2.6.0/src/PubSubClient.cpp 

LINK_OBJ += \
./libraries/PubSubClient/src/PubSubClient.cpp.o 

CPP_DEPS += \
.\libraries\PubSubClient\src\PubSubClient.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/PubSubClient/src/PubSubClient.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/libraries/PubSubClient/2.6.0/src/PubSubClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


