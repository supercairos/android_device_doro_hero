-include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH 			:= device/doro/liberto_hero
TARGET_SPECIFIC_HEADER_PATH 	:= $(DEVICE_PATH)/include

# Init
TARGET_PLATFORM_DEVICE_BASE 		:= /devices/soc.0/

# CPU
TARGET_CPU_CORTEX_A53 			:= true

# Kernel
TARGET_KERNEL_CONFIG			:= cm_hero_defconfig
TARGET_KERNEL_SOURCE 			:= kernel/doro/msm8916
BOARD_KERNEL_CMDLINE			+= androidboot.selinux=permissive

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

# Graphics
BOARD_EGL_CFG 						:= device/doro/liberto_hero/egl.cfg

# Recovery
RECOVERY_FSTAB_VERSION 					:= 2
TARGET_RECOVERY_FSTAB 					:= device/doro/liberto_hero/recovery/etc/cwm.fstab

# Recovery storage
BOARD_HAS_LARGE_FILESYSTEM 				:= true
RECOVERY_SDCARD_ON_DATA 				:= true

# Recovery graphics
BOARD_USE_CUSTOM_RECOVERY_FONT 				:= \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT 				:= "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH 			:= true
TARGET_RECOVERY_QCOM_RTC_FIX 				:= true

# Props
TARGET_SYSTEM_PROP 							+= $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/doro/hero/BoardConfigVendor.mk
