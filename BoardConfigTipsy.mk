# Common board config for marlin, sailfish

# Disable dex pre-opt
WITH_DEXPREOPT := false

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

-include vendor/google/marlin/BoardConfigVendor.mk
