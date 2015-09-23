LOCAL_PATH := device/doro/liberto_hero

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/fstab.qcom:root/fstab.qcom

# Inherit the rest from msm8916-common
$(call inherit-product, device/cyanogen/msm8916-common/msm8916.mk)
$(call inherit-product-if-exists, vendor/doro/hero/hero-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES 	+= BUILD_UTC_DATE=0
PRODUCT_NAME 					:= Liberto 825
PRODUCT_DEVICE 					:= liberto_hero
PRODUCT_BRAND 					:= Doro
PRODUCT_MODEL 					:= Hero
PRODUCT_MANUFACTURER 			:= Doro
