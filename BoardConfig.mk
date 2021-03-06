# scorpio92(4PDA), config for Cellon C8960, Newman N2, Freelander i20
#2013

TARGET_OTA_ASSERT_DEVICE := m0,i9300,GT-I9300
DISABLE_DEXPREOPT := true
TARGET_SPECIFIC_HEADER_PATH := device/samsung/i9300/overlay/include

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
EXYNOS4X12_ENHANCEMENTS := true
EXYNOS4_ENHANCEMENTS := true
ifdef EXYNOS4X12_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4X12_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
endif
TARGET_BOARD_PLATFORM := exynos4
TARGET_SOC := exynos4x12
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12

# Images
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/i9300/recovery.rc

# Kernel
BOARD_KERNEL_CMDLINE := "console=ttySAC2,115200"
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
#TARGET_KERNEL_CONFIG := cyanogenmod_i9300_defconfig

# Recovery
RECOVERY_NAME := CWM-based Recovery by kaasnake
TARGET_RECOVERY_INITRC := device/samsung/i9300/recovery/recovery.rc
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/i9300/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Filesystem
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 515899392
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1198522368
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Audio
BOARD_USES_GENERIC_AUDIO := true

# Camera
USE_CAMERA_STUB := true

# Graphics
BOARD_EGL_CFG := vendor/samsung/i9300/proprietary/main/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_SKIAHWJPEG := true
COMMON_GLOBAL_CFLAGS += -DSEC_HWJPEG_G2D
BOARD_USES_HWCOMPOSER := true
BOARD_USE_SYSFS_VSYNC_NOTIFICATION := true

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0" 
#BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0" 

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := 
BOARD_HAVE_SAMSUNG_WIFI          := false

BOARD_WLAN_DEVICE_REV            := bcm4330
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          :="/system/etc/wifi/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           :="/system/etc/wifi/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          :="/system/etc/wifi/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"
WIFI_DRIVER_MODULE_ARG           :="firmware_path=/system/etc/wifi/fw_bcmdhd.bin nvram_path=/system/etc/wifi/bcmdhd.cal"
WIFI_DRIVER_MODULE_AP_ARG        :="firmware_path=/system/etc/wifi/fw_bcmdhd_apsta.bin nvram_path=/system/etc/wifi/bcmdhd.cal"
WIFI_BAND                        := 802_11_ABG
HAVE_HOSTAPD                     := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/i9300/bluetooth/vnd_smdk4x12.txt
WITH_A2DP := true
BOARD_CUSTOM_BRCM_PATCHRAM_PLUS := ../../../vendor/samsung/i9300/proprietary/main/system/bin/brcm_patchram_plus.c
BOARD_BLUETOOTH_BCM4329 := false

# GPS
#BOARD_USES_GPSSHIM := true
#BOARD_GPS_NEEDS_XTRA := true
#BOARD_GPS_LIBRARIES := libloc

# Sensors
BOARD_VENDOR_USE_AKMD := true
BOARD_VENDOR_USE_AKMD := akm8963

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# Enable JIT
WITH_JIT := true

# OMX
BOARD_USE_SAMSUNG_COLORFORMAT := true
BOARD_NONBLOCK_MODE_PROCESS := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USES_MFC_FPS := true
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_CSC_FIMC := false

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"

