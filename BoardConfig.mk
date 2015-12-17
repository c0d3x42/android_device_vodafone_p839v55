#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


LOCAL_PATH := device/vodafone/p839v55

BOARD_VENDOR := vodafone-qcom

TARGET_SPECIFIC_HEADER_PATH := device/vodafone/p839v55/include

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Properties
TARGET_SYSTEM_PROP += device/vodafone/p839v55/system.prop

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# CPU
TARGET_CPU_CORTEX_A53 := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/vodafone/p839v55/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.selinux=permissive androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.mode=normal loglevel=4

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_KERNEL_SOURCE := kernel/vodafone/su6
TARGET_KERNEL_CONFIG := msm_P839V55_defconfig

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x00000100

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Asserts
TARGET_OTA_ASSERT_DEVICE := p839v55

# Audio
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
BOARD_USES_ALSA_AUDIO := true

# Camera
#USE_DEVICE_SPECIFIC_CAMERA := true

# CMHW
BOARD_HARDWARE_CLASS := device/vodafone/p839v55/cmhw/src

# Add suffix variable to uniquely identify the board
TARGET_BOARD_SUFFIX := _32

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_HAVE_NEW_GRALLOC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
TARGET_NO_RPC := true
TARGET_GPS_HAL_PATH := $(LOCAL_PATH)/gps
TARGET_PROVIDES_GPS_LOC_API := true

# Init
#TARGET_UNIFIED_DEVICE := true
#TARGET_INIT_VENDOR_LIB := libinit_msm
#TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_p839v55.c
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Malloc
MALLOC_IMPL := dlmalloc

#NFC
BOARD_NFC_HAL_SUFFIX := 8916

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432	# 32768 * 1024 mmcblk0p17
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432	# 32768 * 1024 mmcblk0p23
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560	# 2621440 * 1024 mmcblk0p31
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432 	# 32768 * 1024 mmcblk0p11
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12306070528 # 12017647 * 1024 mmcblk0p32

BOARD_CACHEIMAGE_PARTITION_SIZE := 318767104 #311296 * 1024 mmcblk0p22
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.qcom
BOARD_SUPPRESS_EMMC_WIPE := true
COMMON_GLOBAL_CFLAGS += -DRECOVERY_FONT='"roboto_15x24.h"'
TARGET_USERIMAGES_USE_EXT4 := true

# RIL
TARGET_RIL_VARIANT := caf
PROTOBUF_SUPPORTED := true

# SELinux

include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/vodafone/p839v55/sepolicy

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 32
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/pronto/pronto_wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WPA_SUPPLICANT_VERSION := VER_0_8_X

-include vendor/vodafone/p839v55/BoardConfigVendor.mk
