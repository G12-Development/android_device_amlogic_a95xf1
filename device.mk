#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/a95xf1

$(call inherit-product, vendor/amlogic/a95xf1/a95xf1-vendor.mk)

$(call inherit-product, device/amlogic/gx-common/gx.mk)

## Bluetooth
BOARD_HAVE_BLUETOOTH_RTK_TV := false
#include hardware/realtek/rtkbt/rtkbt.mk

## Init-Files
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
PRODUCT_PACKAGES += \
    ssv6051

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Wifi
PRODUCT_CFI_INCLUDE_PATHS += \
    hardware/amlogic/kernel-modules/icomm/wpa_supplicant_8_lib

PRODUCT_COPY_FILES += \
    hardware/amlogic/kernel-modules/icomm/ssv6051/ssv6051-wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-wifi.cfg \
    hardware/amlogic/kernel-modules/icomm/ssv6051/image/ssv6051-sw.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-sw.bin
