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

TARGET_SYSTEM_PROP 						+= $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/doro/hero/BoardConfigVendor.mk
