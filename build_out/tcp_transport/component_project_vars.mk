# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/tcp_transport $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/tcp_transport/include $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/tcp_transport/include $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/tcp_transport/include
COMPONENT_LDFLAGS +=   -L$(BL60X_SDK_PATH)/components/network/axk_protocol_stack/tcp_transport -ltcp_transport 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/network/axk_protocol_stack/tcp_transport/libtcp_transport.a
component-tcp_transport-build: 
