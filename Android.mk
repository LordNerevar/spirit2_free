LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := src/fm/a2d/sf
LOCAL_SRC_FILES += $(call all-java-files-under, src)

LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, res)

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v8-renderscript \
    android-support-v7-palette \
    android-support-v7-cardview \
    android-common \
    android-visualizer \
    guava

LOCAL_PACKAGE_NAME := fm.a2d.sf
LOCAL_OVERRIDES_PACKAGES := SpiritFM

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

include $(BUILD_MULTI_PREBUILT)
