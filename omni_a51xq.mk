#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a51xq device
$(call inherit-product, device/samsung/a51xq/device.mk)

PRODUCT_DEVICE := a51xq
PRODUCT_NAME := omni_a51xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCG07
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a51xqkdi-user 11 RP1A.200720.012 SCG07KDS1DXA1 release-keys"

BUILD_FINGERPRINT := samsung/SCG07_jp_kdi/SCG07:11/RP1A.200720.012/SCG07KDS1DXA1:user/release-keys
