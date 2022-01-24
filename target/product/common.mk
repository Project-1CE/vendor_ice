#
# Copyright (C) 2022 Project ICE
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, vendor/ice/target/product/version.mk)
$(call inherit-product-if-exists, vendor/ice-priv/keys/keys.mk)

# Filesystem
TARGET_FS_CONFIG_GEN += vendor/ice/target/config/config.fs

# Inherit from common Qualcomm device
$(call inherit-product, device/qcom/common/common.mk)

# Include definitions for Snapdragon Clang
$(call inherit-product, vendor/ice/sdclang/sdclang.mk)

# Include gapps makefile
$(call inherit-product-if-exists, vendor/gapps/common/common-vendor.mk)

# Include packages makefile
$(call inherit-product, vendor/ice/target/product/packages.mk)

# Include properties makefile
$(call inherit-product, vendor/ice/target/product/properties.mk)

# Move Wi-Fi modules to vendor
PRODUCT_VENDOR_MOVE_ENABLED := true

# Permissions
PRODUCT_COPY_FILES += \
    vendor/ice/target/config/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    vendor/ice/target/config/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml \
    vendor/ice/target/config/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml
