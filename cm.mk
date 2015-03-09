## Specify phone tech before including full_phone
# $(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := hero_64

# Inherit some common CM stuff.
# $(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doro/hero_64/device_hero_64.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hero_64
PRODUCT_NAME := cm_hero_64
PRODUCT_BRAND := doro
PRODUCT_MODEL := hero_64
PRODUCT_MANUFACTURER := doro
