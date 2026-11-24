# Canadian G8 LG MmTel integration.
PRODUCT_PACKAGES += \
    AlphaplusLgIms \
    product.lge.data.lgdataservice-manager \
    com.lge.ims.httpTxn \
    alphaplus-lg-ims-httptxn-permissions \
    alphaplus-lg-ims-framework-compat \
    alphaplus-lg-ims-framework-compat-permissions \
    alphaplus-lg-data-manager-permissions \
    alphaplus-lg-ims-privapp-permissions \
    libalphaplus_lgims_compat \
    alphaplus_ims_libims_lge \
    alphaplus_ims_libimsmmpf_lge \
    alphaplus_ims_libimswms_lge \
    alphaplus_ims_libimscamerajni_lge \
    alphaplus_ims_libLgeProductFeatures2 \
    alphaplus_ims_LGDataFeature \
    vendor.lge.hardware.lgdata@1.0 \
    alphaplus_ims_vendor_lge_hardware_lgdata_1_1 \
    alphaplus_ims_vendor_lge_hardware_soi_1_0 \
    alphaplus_ims_vendor_lge_hardware_vss_ims_1_0

# Canadian G8 40b IMS configuration inputs.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/com.lge.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/lg-ims/com.lge.ims.xml \
    $(LOCAL_PATH)/config/carrier_code.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/lg-ims/carrier_code.xml \
    $(LOCAL_PATH)/config/compat-profile.properties:$(TARGET_COPY_OUT_PRODUCT)/etc/lg-ims/compat-profile.properties

PRODUCT_PACKAGES += \
    alphaplus_imsipsecstarter \
    alphaplus_imsipsecclient
