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

# Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/ice/overlay/no-rro

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ice/overlay/no-rro

ifeq ($(TARGET_NO_TELEPHONY), true)
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ice/overlay/wifionly
endif

PRODUCT_PACKAGES += \
    ICEFrameworksOverlay \
    ICELauncher3Overlay \
    ICENetworkStackOverlay \
    ICESettingsOverlay \
    ICESettingsProviderOverlay \
    ICESimpleDeviceConfigOverlay \
    ICESystemUIOverlay
