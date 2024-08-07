# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_common $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_common/include $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_common/include $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_common/include
COMPONENT_LDFLAGS +=   -L$(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_common -laxk_common 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/axk_common/libaxk_common.a
component-axk_common-build: 
