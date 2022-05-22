#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include vendor/amlogic/a95xf1/BoardConfigVendor.mk

include device/amlogic/gx-common/BoardConfigCommon.mk

DEVICE_PATH := device/amlogic/a95xf1

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a95xf1

## DTB
TARGET_DTB_NAME := a95xf1_2g

GPU_TYPE := mali
GPU_ARCH := utgard

BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 134217728
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# SOC
TARGET_AMLOGIC_SOC := gxl

# Wifi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_icomm
BOARD_WLAN_DEVICE := icomm
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_icomm
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
