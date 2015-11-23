# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/doro/liberto_hero/full_hero.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := Doro Liberto 825

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := liberto_hero
PRODUCT_NAME := cm_liberto_hero
PRODUCT_BRAND := Doro
PRODUCT_MODEL := Liberto 825
PRODUCT_MANUFACTURER := Doro

# Set product name
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Doro_Liberto_825 \
	BUILD_FINGERPRINT=Doro/825A_EU_RET/825A:5.1.1/EU_RET_00.52.04/321:user/release-keys \
	PRIVATE_BUILD_DESC="msm8916_32-user 5.1.1 LMY47V 321 release-keys"
	
PRODUCT_GMS_CLIENTID_BASE := android-doro
