# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, device/micromax/a110/device_a110.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a110
PRODUCT_NAME := cm_a110
PRODUCT_BRAND := micromax
PRODUCT_MODEL := a110
PRODUCT_MANUFACTURER := micromax
