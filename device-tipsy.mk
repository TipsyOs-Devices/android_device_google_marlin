# Camera
PRODUCT_PACKAGES += libion

# Fingerprint sensor type
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.fingerprint=fpc

# Snap
PRODUCT_PACKAGES += Snap

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/marlin/overlay-tipsy

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Update engine
PRODUCT_PACKAGES += brillo_update_payload
