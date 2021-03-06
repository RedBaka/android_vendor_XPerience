# Inherit common XPe stuff
$(call inherit-product, vendor/XPe/config/common_full.mk)

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/XPe/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip
endif

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

# Include CM LatinIME dictionaries
    PRODUCT_PACKAGE_OVERLAYS += vendor/XPe/overlay/dictionaries

$(call inherit-product, vendor/XPe/config/telephony.mk)
