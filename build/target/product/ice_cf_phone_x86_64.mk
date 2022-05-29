#
# Copyright (C) 2022 Project Kaleidoscope
# Copyright (C) 2025 Project ICE
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOARD_PLATFORM := cuttlefish
TARGET_NO_TELEPHONY := true

# Inherit from cuttlefish device.
$(call inherit-product, device/google/cuttlefish/vsoc_x86_64/phone/aosp_cf.mk)

# Inherit some common Project ICE stuff.
$(call inherit-product, vendor/ice/target/product/common.mk)

# Enable mainline checking.
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/media/bootanimation.zip

# Overrides
PRODUCT_NAME := ice_cf_phone_x86_64
