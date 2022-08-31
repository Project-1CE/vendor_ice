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

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Sounds
$(call inherit-product, frameworks/base/data/sounds/AudioPackage14.mk)

PRODUCT_COPY_FILES += \
    vendor/ice/sounds/alarms/material_gentle.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/material_gentle.ogg \
    vendor/ice/sounds/notifications/material_ambient.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_ambient.ogg \
    vendor/ice/sounds/notifications/material_decorative_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative_1.ogg \
    vendor/ice/sounds/notifications/material_decorative_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative_2.ogg \
    vendor/ice/sounds/notifications/material_decorative-celebration_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative-celebration_1.ogg \
    vendor/ice/sounds/notifications/material_decorative-celebration_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative-celebration_2.ogg \
    vendor/ice/sounds/notifications/material_decorative-celebration_3.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative-celebration_3.ogg \
    vendor/ice/sounds/notifications/material_high-intensity-alert.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_high-intensity-alert.ogg \
    vendor/ice/sounds/notifications/material_high-intensity.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_high-intensity.ogg \
    vendor/ice/sounds/notifications/material_simple_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple_1.ogg \
    vendor/ice/sounds/notifications/material_simple_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple_2.ogg \
    vendor/ice/sounds/notifications/material_simple-alert.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-alert.ogg \
    vendor/ice/sounds/notifications/material_simple-celebration_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-celebration_1.ogg \
    vendor/ice/sounds/notifications/material_simple-celebration_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-celebration_2.ogg \
    vendor/ice/sounds/notifications/material_simple-celebration_3.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-celebration_3.ogg \
    vendor/ice/sounds/ringtones/material_minimal.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/material_minimal.ogg

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=material_minimal.ogg \
    ro.config.alarm_alert=material_gentle.ogg \
    ro.config.notification_sound=material_simple_1.ogg
