# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_tls $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_tls/include $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_tls/include
COMPONENT_LDFLAGS +=   -L$(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_tls -laxk_tls 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_tls/libaxk_tls.a
component-axk_tls-build: 
