# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_mqtt $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_mqtt/include $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_mqtt/include $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_mqtt/include
COMPONENT_LDFLAGS +=   -L$(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_mqtt -laxk_mqtt 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_mqtt/libaxk_mqtt.a
component-axk_mqtt-build: 
