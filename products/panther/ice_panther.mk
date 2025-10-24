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

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="panther-user 16 BP2A.250805.005 13691446 release-keys" \
    BuildFingerprint=google/panther/panther:16/BP2A.250805.005/13691446:user/release-keys \
    DeviceProduct=panther

# Get non-open-source specific aspects
$(call inherit-product, vendor/google/panther/panther-vendor.mk)
