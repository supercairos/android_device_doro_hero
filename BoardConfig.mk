USE_CAMERA_STUB := true
TARGET_NO_RADIOIMAGE := true

ANDROID_COMMON_BUILD_MK = true

# Bootloader
TARGET_NO_BOOTLOADER 			:= true
TARGET_BOOTLOADER_BOARD_NAME 	:= msm8916

# Platform
TARGET_BOARD_PLATFORM 		:= msm8916
TARGET_BOARD_PLATFORM_GPU 	:= qcom-adreno306

# Architecture
TARGET_ARCH 				:= arm64
TARGET_ARCH_VARIANT			:= armv8-a
TARGET_CPU_ABI 				:= arm64-v8a
TARGET_CPU_ABI2 			:=
TARGET_CPU_VARIANT 			:= generic

TARGET_2ND_ARCH 			:= arm
TARGET_2ND_ARCH_VARIANT 	:= armv7-a-neon
TARGET_2ND_CPU_ABI 			:= armeabi-v7a
TARGET_2ND_CPU_ABI2 		:= armeabi
TARGET_2ND_CPU_VARIANT 		:= cortex-a53
ARCH_ARM_HAVE_TLS_REGISTER 	:= true

# Graphics
# Display
TARGET_QCOM_DISPLAY_VARIANT 	:= caf
USE_OPENGL_RENDERER 			:= true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION 	:= true

BOARD_EGL_CFG 				:= device/doro/liberto_hero/egl.cfg
MAX_EGL_CACHE_KEY_SIZE		:= 12*1024
MAX_EGL_CACHE_SIZE 			:= 2048*1024

# Kernel
TARGET_KERNEL_ARCH              := arm64
TARGET_KERNEL_HEADER_ARCH       := arm64
TARGET_PREBUILT_KERNEL 			:= device/doro/liberto_hero/kernel
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_COMPILE_WITH_MSM_KERNEL 	:= true

# Kernel includes
TARGET_CUSTOM_KERNEL_HEADERS 	:= device/doro/liberto_hero/include
BOARD_KERNEL_CMDLINE 			:= console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE 				:= 0x80000000
BOARD_KERNEL_PAGESIZE 			:= 2048
BOARD_KERNEL_SEPARATED_DT 		:= true
BOARD_MKBOOTIMG_ARGS 			:= --dt device/doro/liberto_hero/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100

# QCOM BSP
TARGET_USES_QCOM_BSP 		:= true
COMMON_GLOBAL_CFLAGS 		+= -DQCOM_BSP
TARGET_USES_ION 			:= true
TARGET_USES_NEW_ION_API 	:= true
TARGET_NO_RPC 				:= true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE 	:= true
COMMON_GLOBAL_CFLAGS 		+= -DQCOM_HARDWARE

# Recovery
TARGET_USERIMAGES_USE_EXT4 			:= true
BOARD_HAS_LARGE_FILESYSTEM 			:= true
RECOVERY_GRAPHICS_USE_LINELENGTH 	:= true
TARGET_RECOVERY_INITRC 				:= device/doro/liberto_hero/recovery/init.rc
TARGET_RECOVERY_FSTAB 				:= device/doro/liberto_hero/recovery/etc/recovery.fstab
TARGET_PLATFORM_DEVICE_BASE 		:= /devices/soc.0/
# RECOVERY_SDCARD_ON_DATA 			:= true

# TWRP-Specific
DEVICE_RESOLUTION 				:= 720x1280
TW_BRIGHTNESS_PATH 				:= /sys/class/leds/lcd-backlight/brightness
TW_NO_BATT_PERCENT 				:= true
TW_MAX_BRIGHTNESS 				:= 255
TW_NO_USB_STORAGE 				:= true
