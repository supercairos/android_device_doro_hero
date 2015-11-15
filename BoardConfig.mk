DEVICE_PATH 					:= device/doro/liberto_hero
TARGET_SPECIFIC_HEADER_PATH 	:= $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM 			:= msm8916
TARGET_BOARD_PLATFORM_GPU 		:= qcom-adreno306

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME 	:= MSM8916
TARGET_NO_BOOTLOADER 			:= true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# CPU
TARGET_BOARD_SUFFIX 					:= _32
TARGET_ARCH 							:= arm
TARGET_ARCH_VARIANT 					:= armv7-a-neon
TARGET_CPU_ABI 							:= armeabi-v7a
TARGET_CPU_ABI2 						:= armeabi
TARGET_CPU_VARIANT 						:= cortex-a53
TARGET_CPU_CORTEX_A53 					:= true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION 	:= true
ARCH_ARM_HAVE_TLS_REGISTER 				:= true
TARGET_GLOBAL_CFLAGS 					+= -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS 					+= -mfpu=neon -mfloat-abi=softfp

# Kernel
TARGET_KERNEL_CONFIG			:= cm_hero_defconfig
ifeq ($(TARGET_BUILD_VARIANT),eng)
TARGET_KERNEL_ADDITIONAL_CONFIG := cyanogenmod_debug_config
endif

TARGET_KERNEL_SOURCE 			:= kernel/doro/msm8916
BOARD_CUSTOM_BOOTIMG_MK 		:= $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE 				:= 0x80000000
BOARD_KERNEL_CMDLINE 			:= console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_CMDLINE			+= androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE 			:= 2048
BOARD_KERNEL_SEPARATED_DT 		:= true
BOARD_KERNEL_TAGS_OFFSET 		:= 0x01E00000
BOARD_RAMDISK_OFFSET     		:= 0x02000000

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Partition table
TARGET_USERIMAGES_USE_EXT4 			:= true
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1879048192
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 1860648960
BOARD_CACHEIMAGE_PARTITION_SIZE 	:= 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE 	:= ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE 	:= 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE 				:= 131072 # (BOARD_KERNEL_PAGESIZE * 64)

PRODUCT_CHARACTERISTICS 			:= default

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# RIL
TARGET_RIL_VARIANT 		:= caf
PROTOBUF_SUPPORTED 		:= true

# Malloc implementation
MALLOC_IMPL 			:= dlmalloc

# CMHW
BOARD_USES_CYANOGEN_HARDWARE 	:= true
BOARD_HARDWARE_CLASS 			:= $(DEVICE_PATH)/cmhw/src

# Fonts
EXTENDED_FONT_FOOTPRINT 		:= true

# Graphics
TARGET_USES_C2D_COMPOSITION 		:= true
TARGET_USES_ION 					:= true
USE_OPENGL_RENDERER 				:= true
NUM_FRAMEBUFFER_SURFACE_BUFFERS 	:= 3
OVERRIDE_RS_DRIVER 					:= libRSDriver_adreno.so

# Shader cache config options
# Maximum size of the GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE 				:= 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE 					:= 2048*1024

# Time services
BOARD_USES_QC_TIME_SERVICES 		:= true

# Camera
# BOARD_CAMERA_SENSORS := \
#    ov8858 \
#    ov2680
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Audio
BOARD_USES_ALSA_AUDIO 				:= true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY 	:= true
AUDIO_FEATURE_DEEP_BUFFER_RINGTONE 	:= true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE 	:= true
AUDIO_FEATURE_ENABLED_FM 		    := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR 	:= $(DEVICE_PATH)/bluetooth/
BOARD_HAVE_BLUETOOTH 							:= true
BOARD_HAVE_BLUETOOTH_QCOM 						:= true
BLUETOOTH_HCI_USE_MCT 							:= true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

# NFC
BOARD_NFC_CHIPSET := pn547

# Wifi
BOARD_HAS_QCOM_WLAN 				:= true
BOARD_HAS_QCOM_WLAN_SDK 			:= true
BOARD_WLAN_DEVICE 					:= qcwcn
BOARD_HOSTAPD_DRIVER 				:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 			:= lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER 		:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 	:= lib_driver_cmd_qcwcn
TARGET_USES_QCOM_WCNSS_QMI 			:= true
TARGET_USES_WCNSS_CTRL 				:= true
WIFI_DRIVER_FW_PATH_AP 				:= "ap"
WIFI_DRIVER_FW_PATH_STA 			:= "sta"
WPA_SUPPLICANT_VERSION 				:= VER_0_8_X

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

# Video
TARGET_HAVE_SIGNED_VENUS_FW := true

# Media
TARGET_QCOM_MEDIA_VARIANT 			:= caf-new
TARGET_ENABLE_QC_AV_ENHANCEMENTS 	:= true

# Recovery
RECOVERY_FSTAB_VERSION 						:= 2
TARGET_RECOVERY_FSTAB 						:= $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_HAS_LARGE_FILESYSTEM 					:= true
RECOVERY_SDCARD_ON_DATA 					:= true
BOARD_USE_CUSTOM_RECOVERY_FONT 				:= \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT 				:= "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH 			:= true
TARGET_RECOVERY_QCOM_RTC_FIX 				:= true

# Props
TARGET_SYSTEM_PROP 							+= $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/doro/hero/BoardConfigVendor.mk
