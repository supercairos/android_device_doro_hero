# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/doro/liberto_hero/full_hero.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := Liberto Hero

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := liberto_hero
PRODUCT_NAME := cm_liberto_hero
PRODUCT_BRAND := doro
PRODUCT_MODEL := liberto_hero
PRODUCT_MANUFACTURER := doro

# Set product name
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Liberto_Hero
	
PRODUCT_GMS_CLIENTID_BASE := android-doro
