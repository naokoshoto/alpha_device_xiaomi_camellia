#
# Copyright (C) 2023 The LineageOS project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from camellia device
$(call inherit-product, device/xiaomi/camellia/device.mk)

# Pixel Stuff
TARGET_ENABLE_BLUR := true
TARGET_USES_AOSP_RECOVERY := true

# Google Apps Stuffs
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# RisingOS Stuffs
RISING_CHIPSET := DM700
SUSHI_BOOTANIMATION := 1080
RISING_PACKAGE_TYPE := GAPPS
RISING_MAINTAINER := NaokoShoto
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_ENABLE_PRIVAPP_ENFORCEMENT := false


# Device identifier. This must come after all inclusions
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_NAME := lineage_camellia
PRODUCT_DEVICE := camellia
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := camellia

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

