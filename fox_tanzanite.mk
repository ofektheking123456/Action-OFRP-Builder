# Inherit OrangeFox configuration
$(call inherit-product, vendor/recovery/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/tanzanite/device.mk)

# Device identifier
PRODUCT_NAME := fox_tanzanite
PRODUCT_DEVICE := tanzanite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 14 4G
PRODUCT_MANUFACTURER := Xiaomi

# OrangeFox Build Flags
FOX_VERSION := R11.1
FOX_BUILD_TYPE := Unofficially
OF_KEEP_FORCED_ENCRYPTION := 1
OF_ALLOW_DISABLE_NAVBAR := 0
OF_USE_MAGISKBOOT := 1
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 1
OF_DONT_KEEP_LOG_HISTORY := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
