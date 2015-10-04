DEVICE_PATH 					:= device/doro/liberto_hero
TARGET_SPECIFIC_HEADER_PATH 	:= $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM 		:= msm8916
TARGET_BOARD_PLATFORM_GPU 	:= qcom-adreno306

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME 	:= MSM8916
TARGET_NO_BOOTLOADER 			:= true

# Init
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

# Kernel
TARGET_KERNEL_CONFIG			:= cm_hero_defconfig
ifneq ($(TARGET_BUILD_VARIANT),user)
TARGET_KERNEL_ADDITIONAL_CONFIG := cyanogenmod_debug_config
endif

TARGET_KERNEL_SOURCE 			:= kernel/doro/msm8916
BOARD_CUSTOM_BOOTIMG_MK 		:= $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE 				:= 0x80000000
BOARD_KERNEL_CMDLINE 			:= console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE			+= androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE 			:= 2048
BOARD_KERNEL_SEPARATED_DT 		:= true
BOARD_KERNEL_TAGS_OFFSET 		:= 0x01E00000
BOARD_RAMDISK_OFFSET     		:= 0x02000000
TARGET_GLOBAL_CFLAGS 			+= -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS 			+= -mfpu=neon -mfloat-abi=softfp


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

# malloc implementation
MALLOC_IMPL := dlmalloc

# Graphics
BOARD_EGL_CFG 							:= device/doro/liberto_hero/config/egl.cfg

# Audio
BOARD_USES_ALSA_AUDIO 		:= true
TARGET_QCOM_AUDIO_VARIANT 	:= caf

# Bluetooth
BOARD_HAVE_BLUETOOTH 		:= true
BOARD_HAVE_BLUETOOTH_QCOM 	:= true
BLUETOOTH_HCI_USE_MCT 		:= true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Dex
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

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

# Recovery
RECOVERY_FSTAB_VERSION 					:= 2
TARGET_RECOVERY_FSTAB 					:= device/doro/liberto_hero/recovery/etc/cwm.fstab
BOARD_HAS_LARGE_FILESYSTEM 				:= true
RECOVERY_SDCARD_ON_DATA 				:= true
BOARD_USE_CUSTOM_RECOVERY_FONT 				:= \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT 				:= "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH 			:= true
TARGET_RECOVERY_QCOM_RTC_FIX 				:= true

# Props
TARGET_SYSTEM_PROP 							+= $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/doro/hero/BoardConfigVendor.mk
