$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace NS-P11A8100 with your Device Name's Value.
# Replace insignia with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/insignia/NS-P11A8100/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := NS-P11A8100
PRODUCT_NAME := omni_NS-P11A8100
PRODUCT_BRAND := insignia
PRODUCT_MODEL := NS-P11A8100
PRODUCT_MANUFACTURER := insignia

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="insignia/NS-P11A8100/NS-P11A8100:7.0/NRD90M/1508915305:user/release-keys" \
    PRIVATE_BUILD_DESC="full_giec8163_ew_w1-user 7.0 NRD90M 1508915305 release-keys"