# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/tipsy/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit some common Tipsy stuff.
$(call inherit-product, vendor/tipsy/config/common_full_phone.mk)

-include device/google/marlin/marlin/device-tipsy.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := tipsy_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:7.1.1/NMF26V/3562348:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 7.1.1 NMF26V 3562348 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
