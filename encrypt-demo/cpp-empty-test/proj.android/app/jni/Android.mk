LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cpp_empty_test_shared

LOCAL_MODULE_FILENAME := libcpp_empty_test

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := main.cpp \
                   ../../../Classes/AppDelegate.cpp \
                   ../../../Classes/HelloWorldScene.cpp

# x-studio365 Encrypt Solution Support Sources
LOCAL_SRC_FILES += ../../../Classes/EncryptManager.cpp \
                   ../../../Classes/cryptk/aes_core.cpp \
                   ../../../Classes/cryptk/cryptk_utils.cpp \
                   ../../../Classes/cryptk/cryptk_wrapper.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes \
                    $(LOCAL_PATH)/../../../../../extensions \
                    $(LOCAL_PATH)/../../../../.. \
                    $(LOCAL_PATH)/../../../../../cocos/editor-support

LOCAL_STATIC_LIBRARIES := cc_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module, cocos)
