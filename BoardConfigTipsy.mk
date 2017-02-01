# Common board config for marlin, sailfish

# Disable dex pre-opt
WITH_DEXPREOPT := false

# Kernel
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-6.3/bin
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

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

-include vendor/google/marlin/BoardConfigVendor.mk
