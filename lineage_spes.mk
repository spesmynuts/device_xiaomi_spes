#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common risingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

# RisingOS Flags
WITH_GMS := true
PRODUCT_NO_CAMERA := true
# TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := false
TARGET_USE_GOOGLE_TELEPHONY := true
RISING_MAINTAINER := spesmynuts

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon 680" \
    RISING_MAINTAINER="spesmynuts"

# Launchers
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:13/TKQ1.221114.001/V14.0.5.0.TGCINXM:user/release-keys"

PRODUCT_SYSTEM_NAME := spes_global
PRODUCT_SYSTEM_DEVICE := spes

# Gapps (Basic)
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true