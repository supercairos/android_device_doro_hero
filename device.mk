DEVICE_PATH  := device/doro/liberto_hero

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Wifi
PRODUCT_PACKAGES += \
    hostapd_default.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin
	
PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wcnss_service
    
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
    
# ZRAM
PRODUCT_PACKAGES += \
    init.qcom.zram.sh

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl
	
# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml \
    memtrack.msm8916
	
# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916	
	
# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916	
	
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
	init.crda.sh \
	init.qcom.bt.sh \
	init.qcom.coex.sh \
	init.qcom.rc \
	init.qcom.usb.rc \
	ueventd.qcom.rc \
	init.target.rc
	
# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

$(call inherit-product-if-exists, vendor/doro/hero/hero-vendor.mk)