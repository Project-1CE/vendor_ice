#
# Copyright (C) 2022 Project Kaleidoscope
# Copyright (C) 2025 Project ICE
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOARD_PLATFORM := goldfish

# Inherit from sdk_phone_x86_64 device.
$(call inherit-product, device/generic/goldfish/64bitonly/product/sdk_phone64_x86_64.mk)

# Inherit some common Project ICE stuff.
$(call inherit-product, vendor/ice/target/product/common.mk)

# Enable mainline checking.
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/media/bootanimation.zip

# Overrides
PRODUCT_NAME := ice_sdk_phone_x86_64
