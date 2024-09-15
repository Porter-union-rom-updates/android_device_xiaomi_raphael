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

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

PRODUCT_DEVICE := raphael
PRODUCT_NAME := omni_raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_raphael-eng 99.87.36 SP2A.220405.004 eng.runner.20240626.060307 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_raphael/raphael:99.87.36/SP2A.220405.004/runner06260600:eng/test-keys
