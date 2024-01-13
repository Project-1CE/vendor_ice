#
# Copyright (C) 2023 Project ICE
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/ice_common.mk)
$(call inherit-product, device/google/pantah/device-ice.mk)

# Inherit some common Project ICE stuff.
$(call inherit-product, vendor/ice/target/product/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := ice_panther

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 UP1A.231105.003 11010452 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/UP1A.231105.003/11010452:user/release-keys

# Get non-open-source specific aspects
$(call inherit-product, vendor/google/panther/panther-vendor.mk)
