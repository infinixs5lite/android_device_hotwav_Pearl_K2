#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Pearl_K2 device
$(call inherit-product, device/hotwav/Pearl_K2/device.mk)

PRODUCT_DEVICE := Pearl_K2
PRODUCT_NAME := omni_Pearl_K2
PRODUCT_BRAND := HOTWAV
PRODUCT_MODEL := Pearl K2
PRODUCT_MANUFACTURER := hotwav

PRODUCT_GMS_CLIENTID_BASE := android-uct

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k39tv1_64_bsp-user 9 PPR1.180610.011 1561808070 release-keys"

BUILD_FINGERPRINT := HOTWAV/Pearl_K2/Pearl_K2:9/PPR1.180610.011/1561808070:user/release-keys
