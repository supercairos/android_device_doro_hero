# ANDROID_COMMON_BUILD_MK = true

# Bootloader
TARGET_NO_BOOTLOADER 			:= true
TARGET_NO_RADIOIMAGE 			:= true
TARGET_BOOTLOADER_BOARD_NAME 		:= msm8916

# Platform
TARGET_BOARD_PLATFORM 			:= msm8916
TARGET_BOARD_PLATFORM_GPU 		:= qcom-adreno306

# Init
TARGET_PLATFORM_DEVICE_BASE 		:= /devices/soc.0/

# Architecture
TARGET_ARCH 				:= arm64
TARGET_ARCH_VARIANT			:= armv8-a
TARGET_CPU_ABI 				:= arm64-v8a
TARGET_CPU_ABI2 			:=
TARGET_CPU_VARIANT 			:= generic
TARGET_CPU_SMP 				:= true

TARGET_2ND_ARCH 			:= arm
TARGET_2ND_ARCH_VARIANT 		:= armv7-a-neon
TARGET_2ND_CPU_ABI 			:= armeabi-v7a
TARGET_2ND_CPU_ABI2 			:= armeabi
TARGET_2ND_CPU_VARIANT 			:= cortex-a53
TARGET_USES_64_BIT_BINDER 		:= true

TARGET_USE_QCOM_BIONIC_OPTIMIZATION 	:= true

# Graphics
# Display
TARGET_QCOM_DISPLAY_VARIANT 		:= caf-new
USE_OPENGL_RENDERER 			:= true
NUM_FRAMEBUFFER_SURFACE_BUFFERS 	:= 3
TARGET_USES_C2D_COMPOSITION 		:= true

# Egl
BOARD_EGL_CFG 				:= device/doro/liberto_hero/egl.cfg
MAX_EGL_CACHE_KEY_SIZE			:= 12*1024
MAX_EGL_CACHE_SIZE 			:= 2048*1024

# Kernel
TARGET_KERNEL_ARCH              	:= arm64
TARGET_KERNEL_HEADER_ARCH       	:= arm64
TARGET_PREBUILT_KERNEL 			:= device/doro/liberto_hero/kernel
TARGET_USES_UNCOMPRESSED_KERNEL 	:= true
TARGET_COMPILE_WITH_MSM_KERNEL 	:= true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel includes
TARGET_CUSTOM_KERNEL_HEADERS 		:= device/doro/liberto_hero/include
BOARD_KERNEL_CMDLINE 			:= console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE        		:= 0x80000000
BOARD_KERNEL_PAGESIZE    		:= 2048
BOARD_KERNEL_SEPARATED_DT 		:= true
BOARD_MKBOOTIMG_ARGS 			:= --dt device/doro/liberto_hero/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# QCOM BSP
COMMON_GLOBAL_CFLAGS 			+= -DQCOM_BSP
TARGET_USES_ION 			:= true
TARGET_USES_NEW_ION_API 		:= true
TARGET_USES_QCOM_BSP 			:= true
TARGET_NO_RPC := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE 		:= true
COMMON_GLOBAL_CFLAGS 			+= -DQCOM_HARDWARE

# Power
# TARGET_POWERHAL_VARIANT := qcom

# Recovery
TARGET_USERIMAGES_USE_EXT4 			:= true
BOARD_HAS_LARGE_FILESYSTEM 			:= true
BOARD_USE_CUSTOM_RECOVERY_FONT 			:= \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT 			:= "BGRA_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH 		:= true
TARGET_RECOVERY_INITRC 				:= device/doro/liberto_hero/recovery/init.rc
TARGET_RECOVERY_FSTAB 				:= device/doro/liberto_hero/recovery/etc/recovery.fstab
RECOVERY_SDCARD_ON_DATA 			:= true

# TWRP-Specific
DEVICE_RESOLUTION 				:= 720x1280
TW_THEME 					:= portrait_hdpi
TW_BRIGHTNESS_PATH 				:= /sys/class/leds/lcd-backlight/brightness
TW_NO_BATT_PERCENT 				:= true
TW_MAX_BRIGHTNESS 				:= 255
TW_NO_USB_STORAGE 				:= true
TW_INCLUDE_CRYPTO 				:= true

TARGET_RECOVERY_QCOM_RTC_FIX 			:= true
TW_TARGET_USES_QCOM_BSP 			:= true
TW_NEW_ION_HEAP 				:= true
