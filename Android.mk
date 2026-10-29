#
# Automatically generated file. DO NOT MODIFY
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),asteroids)

$(foreach f,$(wildcard $(LOCAL_PATH)/radio/*.img), \
    $(eval $(call add-radio-file,radio/$(notdir $(f)))))

endif
