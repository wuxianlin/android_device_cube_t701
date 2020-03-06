#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := t701

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/cube/t701/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t701
PRODUCT_NAME := omni_t701
PRODUCT_BRAND := ALLDOCUBE
PRODUCT_MODEL := T701
PRODUCT_MANUFACTURER := ALLDOCUBE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=T701 \
    BUILD_PRODUCT=T701 \
    TARGET_DEVICE=T701
