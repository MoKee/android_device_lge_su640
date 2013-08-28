# inherit from the proprietary version
-include vendor/lge/su640/BoardConfigVendor.mk

-include device/lge/iprj-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := su640
TARGET_OTA_ASSERT_DEVICE := su640

# Try to build the kernel
TARGET_KERNEL_CONFIG := su640_wind_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/su640/kernel

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/su640/bluetooth

#fstab fix
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB = device/lge/su640/fstab.iprj
RECOVERY_FSTAB_VERSION := 2

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/su640

# cpu fix
TARGET_CPU_VARIANT := cortex-a8
TARGET_ARCH_VARIANT_CPU := cortex-a8

TARGET_NO_HW_VSYNC := true

#temp - gcc 4.7 causes bootloop for us. use cm10.1 4.6 for now
TARGET_GCC_VERSION_EXP := 4.6
BOARD_EGL_NEEDS_LEGACY_FB := true

#Enable use of retire fence from MDP driver
TARGET_DISPLAY_USE_RETIRE_FENCE := true
