LOCAL_PATH := device/nothing/Spacewar

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# -------------------------------------------------
# KERNEL MODULES (ONLY WHAT IS NEEDED)
# -------------------------------------------------
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/lib/modules/fts_tp.ko:$(TARGET_COPY_OUT_RECOVERY)/root/lib/modules/fts_tp.ko

# Touchscreen IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/system/usr/idc/fts_ts.idc:$(TARGET_COPY_OUT_RECOVERY)/root/system/usr/idc/fts_ts.idc

# -------------------------------------------------
# FASTBOOTD
# -------------------------------------------------
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# -------------------------------------------------
# TWRP CORE CONFIG
# -------------------------------------------------
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TWRP_INCLUDE_LOGCAT := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_APEX := true

# -------------------------------------------------
# CRYPTO
# -------------------------------------------------
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

# -------------------------------------------------
# FIRMWARE
# -------------------------------------------------
TARGET_RECOVERY_FIRMWARE_DIRS += vendor/firmware

# -------------------------------------------------
# HEALTH
# -------------------------------------------------
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)

# -------------------------------------------------
# VINTF
# -------------------------------------------------
PRODUCT_ENFORCE_VINTF_MANIFEST := true
