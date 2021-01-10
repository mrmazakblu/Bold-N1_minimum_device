#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := Bold_N1

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
# $(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# COPY PREPDECRYPT FROM QCOM-TWRP_COMMON
# PRODUCT_COPY_FILES += device/qcom/twrp-common/crypto/system/bin/prepdecrypt.sh:recovery/root/system/bin/prepdecrypt.sh

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := BoldN1
PRODUCT_NAME := omni_BoldN1
PRODUCT_BRAND := BLU
PRODUCT_MODEL := BOLD N1
PRODUCT_MANUFACTURER := BLU

# ADB Fix
#PRODUCT_PROPERTY_OVERRIDES += \
#    sys.usb.ffs.aio_compat=true

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=0


