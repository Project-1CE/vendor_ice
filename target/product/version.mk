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

ICE_CODENAME := sugisawa
ICE_SUBVERSION := beta1

ifndef ICE_BUILDTYPE
  ICE_BUILD_VARIANT := unofficial
else
  ICE_BUILD_VARIANT := nightly
endif

ICE_VERSION := $(ICE_CODENAME)-$(ICE_SUBVERSION)-$(ICE_BUILD)-$(shell date -u +%Y%m%d)-$(shell echo $(ICE_BUILD_VARIANT) | tr a-z A-Z)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.ice.version=$(ICE_VERSION)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.ice.version.major=$(ICE_CODENAME) \
    ro.ice.version.minor=$(ICE_SUBVERSION) \
    ro.ice.build.variant=$(ICE_BUILD_VARIANT)
