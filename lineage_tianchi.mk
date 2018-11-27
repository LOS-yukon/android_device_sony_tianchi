# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel properties
TARGET_KERNEL_CONFIG := aosp_yukon_tianchi_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := D5303,tianchi

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/tianchi/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit LOS common Phone stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Fingerprint for tianchi (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5303
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5303/D5303:5.1.1/19.4.A.0.182/2188515266:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5303-user 5.1.1 19.4.A.C.0.182 2188515266 release-keys"

# Override Product Name for LineageOS
PRODUCT_NAME		:= lineage_tianchi
PRODUCT_DEVICE		:= tianchi
PRODUCT_MODEL		:= Xperia T2 Ultra
PRODUCT_BRAND		:= Sony
PRODUCT_MANUFACTURER	:= Sony
