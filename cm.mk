## Specify phone tech before including full_phone
# $(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := liberto_hero

# Inherit some common CM stuff.
# $(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doro/liberto_hero/device_liberto_hero.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := liberto_hero
PRODUCT_NAME := cm_liberto_hero
PRODUCT_BRAND := doro
PRODUCT_MODEL := liberto_hero
PRODUCT_MANUFACTURER := doro
