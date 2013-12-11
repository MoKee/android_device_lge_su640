$(call inherit-product, device/lge/iprj-common/iprj.mk)

$(call inherit-product-if-exists, vendor/lge/su640/su640-vendor.mk)

## These are different between models
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/fstab.iprj:root/fstab.iprj

## Model specific files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.iprj.rc:root/init.iprj.rc

PRODUCT_NAME := full_su640 
PRODUCT_DEVICE := su640 
PRODUCT_MODEL := LG-su640 
