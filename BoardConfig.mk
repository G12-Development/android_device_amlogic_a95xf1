#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#



DEVICE_PATH := device/amlogic/a95xf1

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a95xf1


BOARD_HAVE_BLUETOOTH := false

## DTB
TARGET_DTB_NAME := a95xf1_2g

# GPU
TARGET_AMLOGIC_GPU_ARCH := utgard

#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 134217728
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4


# Wifi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_icomm
BOARD_WLAN_DEVICE := icomm
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_icomm
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WIFI_DRIVER_SOCKET_IFACE := wlan0
PRODUCT_CFI_INCLUDE_PATHS += hardware/amlogic/kernel-modules/icomm/wpa_supplicant_8_lib

include device/amlogic/gx-common/BoardConfigCommon.mk

include vendor/amlogic/a95xf1/BoardConfigVendor.mk
