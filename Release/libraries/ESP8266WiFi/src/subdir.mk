################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFi.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiClient.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiClientSecure.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiServer.cpp \
C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiUdp.cpp 

LINK_OBJ += \
./libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp.o \
./libraries/ESP8266WiFi/src/WiFiClient.cpp.o \
./libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.o \
./libraries/ESP8266WiFi/src/WiFiServer.cpp.o \
./libraries/ESP8266WiFi/src/WiFiUdp.cpp.o 

CPP_DEPS += \
.\libraries\ESP8266WiFi\src\ESP8266WiFi.cpp.d \
.\libraries\ESP8266WiFi\src\ESP8266WiFiAP.cpp.d \
.\libraries\ESP8266WiFi\src\ESP8266WiFiGeneric.cpp.d \
.\libraries\ESP8266WiFi\src\ESP8266WiFiMulti.cpp.d \
.\libraries\ESP8266WiFi\src\ESP8266WiFiSTA.cpp.d \
.\libraries\ESP8266WiFi\src\ESP8266WiFiScan.cpp.d \
.\libraries\ESP8266WiFi\src\WiFiClient.cpp.d \
.\libraries\ESP8266WiFi\src\WiFiClientSecure.cpp.d \
.\libraries\ESP8266WiFi\src\WiFiServer.cpp.d \
.\libraries\ESP8266WiFi\src\WiFiUdp.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFi.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiClient.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiClientSecure.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiServer.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiUdp.cpp.o: C:/Development/ARDUINO/Eclipse/eclipse/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/libraries/ESP8266WiFi/src/WiFiUdp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:\Development\ARDUINO\Eclipse\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-IC:\Development\ARDUINO\arduino_esp8266_workspace\ESP8266_MQTT/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -ffunction-sections -fdata-sections -DF_CPU=160000000L -DLWIP_OPEN_SRC -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10609 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_ESP01\"" -DESP8266  -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\variants\generic" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\DNSServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\ArduinoJson\5.11.2\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\Development\ARDUINO\Eclipse\eclipse\arduinoPlugin\libraries\WiFiManager\0.12.0" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


