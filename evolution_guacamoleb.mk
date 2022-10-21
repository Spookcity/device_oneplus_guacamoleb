#
# Copyright (C) 2019 The LineageOS Project
# Copyright (C) 2022 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

EVO_BUILD_TYPE := OFFICIAL
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1901
PRODUCT_BRAND := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7
PRODUCT_SYSTEM_DEVICE := OnePlus7

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7-user 12 SKQ1.211113.001 P.202210120500 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202210120500:user/release-keys
