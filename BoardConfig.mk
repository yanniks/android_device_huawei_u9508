# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the proprietary version
include vendor/huawei/u9508/BoardConfigVendor.mk

# Platform
TARGET_BOOTANIMATION_PRELOAD := true
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

BOARD_VENDOR := huawei
TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_SOC := k3v2

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_SPECIFIC_HEADER_PATH := device/huawei/u9508/overlay/include

# kernel
BOARD_KERNEL_CMDLINE := console=ttyS0 vmalloc=384M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnvm1),p14(modemnvm2),p15(system),p16(cache),p17(cust),p18(userdata);mmcblk1:p1(ext_sdcard)
BOARD_KERNEL_PAGESIZE := 2048 
TARGET_PREBUILT_KERNEL := device/huawei/u9508/kernel
#u9508 specific files
#TARGET_KERNEL_SOURCE := kernel/huawei/k3v2oem1
#TARGET_KERNEL_CONFIG := cyanogenmod_u9508_defconfig

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_INITRC := device/huawei/u9508/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/huawei/u9508/recovery/etc/recovery.fstab
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/huawei/u9508/recovery/recovery_keys.c
DEVICE_RESOLUTION := 720x1280
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
#BOARD_CUSTOM_GRAPHICS := device/huawei/u9508/recovery/graphics.c

# USB
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_MTP_DEVICE := "/dev/mtp"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5926551552
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_FLASH_BLOCK_SIZE := 131072


#Graphics
BOARD_EGL_CFG := device/huawei/u9508/prebuilts/lib/egl/egl.cfg

# HWComposer
BOARD_USES_HWCOMPOSER := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# Wifi 
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u9508/bluetooth

## Audio
BOARD_USES_GENERIC_AUDIO := true
#TARGET_PROVIDES_LIBAUDIO := true
#BOARD_PREBUILT_LIBAUDIO := true
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_QCOM_AUDIO_V2 := true
#BUILD_WITHOUT_PV := false

## Lights
#TARGET_PROVIDES_LIBLIGHTS := true

# RIL
#BOARD_RIL_CLASS := ../../../device/huawei/u9508/ril/

# Camera
USE_CAMERA_STUB := true
#COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB
#BOARD_USE_FROYO_LIBCAMERA := true
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
#USE_CAMERA_STUB := false
# BOARD_USE_REVERSE_FFC := true

## FM Radio
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := tavarua

# Gps


# HDMI
#TARGET_HAVE_HDMI_OUT := true

# TARGET_OTA_ASSERT_DEVICE := u9508,U9508,U9508B,u9508B

