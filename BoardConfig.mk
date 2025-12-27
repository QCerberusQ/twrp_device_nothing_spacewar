# -------------------------------------------------
# BASIC
# -------------------------------------------------
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
TW_DEVICE_VERSION := QCerberusQ

# -------------------------------------------------
# ARCH
# -------------------------------------------------
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_VARIANT := cortex-a76

# -------------------------------------------------
# APEX
# -------------------------------------------------
DEXPREOPT_GENERATE_APEX_IMAGE := true

# -------------------------------------------------
# ASSERT
# -------------------------------------------------
TARGET_OTA_ASSERT_DEVICE := Spacewar

# -------------------------------------------------
# A/B
# -------------------------------------------------
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    odm \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot

# -------------------------------------------------
# KERNEL (PREBUILT IMAGE + SOURCE FOR HEADERS)
# -------------------------------------------------
TARGET_PREBUILT_KERNEL := device/nothing/Spacewar/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := device/nothing/Spacewar/prebuilt/dtbo.img

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Kernel cmdline (stock)
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += earlycon=msm_geni_serial,0x880000
BOARD_KERNEL_CMDLINE += ip6table_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += iptable_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += pcie_ports=compat
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=0

BOARD_RAMDISK_USE_LZ4 := true

# -------------------------------------------------
# METADATA
# -------------------------------------------------
BOARD_USES_METADATA_PARTITION := true

# -------------------------------------------------
# ANDROID VERSION SPOOF
# -------------------------------------------------
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# -------------------------------------------------
# FILESYSTEMS
# -------------------------------------------------
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_VENDOR := vendor
TARGET_VENDOR_PROP += ./device/nothing/Spacewar/vendor.prop

# -------------------------------------------------
# PLATFORM
# -------------------------------------------------
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lahaina

# -------------------------------------------------
# RECOVERY
# -------------------------------------------------
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# -------------------------------------------------
# VERIFIED BOOT
# -------------------------------------------------
BOARD_AVB_ENABLE := true

# -------------------------------------------------
# CRYPTO
# -------------------------------------------------
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
TW_USE_FSCRYPT_POLICY := 1
TW_PREPARE_DATA_MEDIA_EARLY := true

# -------------------------------------------------
# TWRP UI / INPUT
# -------------------------------------------------
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_USE_EVDEV_INPUT := true

# -------------------------------------------------
# VENDOR BOOT
# -------------------------------------------------
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
VENDOR_BOOT_HAS_RECOVERY_RAMDISK := true
