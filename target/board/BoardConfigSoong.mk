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

SOONG_CONFIG_NAMESPACES += iceVarsPlugin

SOONG_CONFIG_iceVarsPlugin :=

define addVar
  SOONG_CONFIG_iceVarsPlugin += $(1)
  SOONG_CONFIG_iceVarsPlugin_$(1) := $$(subst ",\",$$($1))
endef

$(foreach v,$(EXPORT_TO_SOONG),$(eval $(call addVar,$(v))))

SOONG_CONFIG_NAMESPACES += iceGlobalVars
SOONG_CONFIG_iceGlobalVars +=

# Set default values

# Soong value variables
