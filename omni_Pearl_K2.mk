#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
        libpuresoftkeymasterdevice

        TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
            $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
                $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

                # Fastbootd
                PRODUCT_PACKAGES += \
                    android.hardware.fastboot@1.0-impl-mock \
                        android.hardware.boot@1.1-impl-recovery \
                            android.hardware.boot@1.1-impl
PRODUCT_DEVICE := Pearl_K2
PRODUCT_NAME := omni_Pearl_K2
PRODUCT_BRAND := HOTWAV
PRODUCT_MODEL := Pearl K2
PRODUCT_MANUFACTURER := hotwav

PRODUCT_GMS_CLIENTID_BASE := android-uct

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k39tv1_64_bsp-user 9 PPR1.180610.011 1561808070 release-keys"

BUILD_FINGERPRINT := HOTWAV/Pe