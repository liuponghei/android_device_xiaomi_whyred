#
# Copyright (C) 2018 The LineageOS Project
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
PRODUCT_RELEASE_NAME := Z01K

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/Z01K/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

# Inherit from Omni custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from whyred device
$(call inherit-product, device/asus/Z01K/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_Z01K
PRODUCT_DEVICE := Z01K
PRODUCT_MANUFACTURER := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z01KD
PRODUCT_FULL_TREBLE_OVERRIDE := true

TARGET_VENDOR_PRODUCT_NAME := Z01K
TARGET_VENDOR_DEVICE_NAME := Z01K
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Z01K PRODUCT_NAME=Z01K
PRODUCT_GMS_CLIENTID_BASE := android-Z01K
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Z01K-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEIMIFA release-keys"
BUILD_FINGERPRINT := asus/Z01K/Z01K:8.1.0/OPM1.171019.011/V9.5.11.0.OEIMIFA:user/release-keys
