#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Inherit some common crDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="crDroid"

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Face unlock
TARGET_SUPPORT_FACE_UNLOCK := true

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Maintainter
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=masemoel

# Quick tap
TARGET_SUPPORTS_QUICK_TAP := true
