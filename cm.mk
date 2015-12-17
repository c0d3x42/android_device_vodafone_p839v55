# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, device/vodafone/p839v55/full_p839v55.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p839v55
PRODUCT_NAME := cm_p839v55
PRODUCT_BRAND := vodafone
PRODUCT_MANUFACTURER := vodafone
PRODUCT_RELEASE_NAME := p839v55



# Set product name
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=SmartUltra6

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Vodafone/Blade-S6/P839Z55:5.0.2/LRX22G/eng.zte.20150508.150143:user/release-keys \
    PRIVATE_BUILD_DESC="msm8916_32-user 5.0.2 LRX22G eng.zte.20150508.150143 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-vodafone
