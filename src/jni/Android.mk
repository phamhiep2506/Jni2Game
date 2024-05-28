LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libs/libevdev/include \
	$(LOCAL_PATH)/libs/libevdev/libevdev
LOCAL_EXPORT_C_INCLUDES := \
	$(LOCAL_PATH)/libs/libevdev/include \
	$(LOCAL_PATH)/libs/libevdev/libevdev
LOCAL_SRC_FILES := main.cpp

include $(BUILD_EXECUTABLE)