#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common Evolution-X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Official
EVO_BUILD_TYPE := OFFICIAL
EXTRA_UDFPS_ANIMATIONS := true

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Maintainer Prop
EVO_DONATE_URL := https://paypal.me/spookcity138
EVO_MAINTAINER := Rick_Macek
EVO_SUPPORT_URL := https://t.me/EvolutionXOnePlus

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7/OnePlus7:11/RKQ1.201022.002/2112101742:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7 \
	PRODUCT_NAME=OnePlus7
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
