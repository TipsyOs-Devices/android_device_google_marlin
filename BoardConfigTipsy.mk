# Common board config for marlin, sailfish

# Audio
BOARD_SUPPORTS_SOUND_TRIGGER := true

# Disable dex pre-opt
WITH_DEXPREOPT := false

# Kernel
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-8.0/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := fuckery_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Sepolicy
BOARD_SEPOLICY_DIRS += device/google/marlin/sepolicy/verizon

# Ignore vendor partition audio_effects.conf and use the device (system/etc/) one
TARGET_IGNORE_VENDOR_AUDIO_EFFECTS_CONF := true

TARGET_USE_DEVICE_AUDIO_EFFECTS_CONF := true

# Snapdragon LLVM
TARGET_USE_SDCLANG := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

-include vendor/google/marlin/BoardConfigVendor.mk

#Opts
my_clang := true
