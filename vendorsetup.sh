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

# SDClang Environment Variables.
export SDCLANG_CONFIG=$(pwd)/vendor/ice/sdclang/sdclang.json
export SDCLANG_AE_CONFIG="${SDCLANG_CONFIG}"

if [ -n "${ICE_BUILDTYPE}" ]; then
    # Override host metadata.
    export BUILD_USERNAME=jenkins
    export BUILD_HOSTNAME=rd-build-73

    # Set build number for releases.
    export BUILD_NUMBER=rel.2c.$(date +%y%m%d.%H%M%S)

    # Flatten APEXs for performance.
    export OVERRIDE_TARGET_FLATTEN_APEX=true
fi
