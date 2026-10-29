#
# Automatically generated file. DO NOT MODIFY
#

AB_OTA_PARTITIONS += \
    abl \
    aop \
    aop_config \
    bluetooth \
    cpucp \
    cpucp_dtb \
    devcfg \
    dsp \
    featenabler \
    hyp \
    imagefv \
    keymaster \
    modem \
    multiimgoem \
    qupfw \
    shrm \
    tz \
    uefi \
    uefisecapp \
    xbl \
    xbl_config \
    xbl_ramdump

FIRMWARE_PATH := vendor/nothing/asteroids/radio
FIRMWARE_IMAGES := $(notdir $(wildcard $(FIRMWARE_PATH)/*.img))

$(foreach f, $(FIRMWARE_IMAGES), \
    $(eval BOARD_CUSTOMIMAGES_PARTITION_LIST += $(basename $(f))) \
    $(eval BOARD_$(call to-upper,$(basename $(f)))_IMAGE_LIST := $(FIRMWARE_PATH)/$(f)))
