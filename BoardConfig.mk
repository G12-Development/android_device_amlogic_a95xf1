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


BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_AP := "/vendor/etc/wifi/6255/fw_bcm43455c0_ag.bin"
WIFI_DRIVER_FW_PATH_STA := "vendor/etc/wifi/6255/fw_bcm43455c0_ag_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X
## Wi-Fi
#BOARD_WLAN_DEVICE := realtek
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
#WIFI_DRIVER_SOCKET_IFACE := wlan0
#PRODUCT_CFI_INCLUDE_PATHS += hardware/realtek/wlan/wpa_supplicant_8_lib
