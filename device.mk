#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_HAVE_BLUETOOTH := false
TARGET_HAVE_WIFIHAL := false

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
PRODUCT_PACKAGES += \
    ssv6051

## Platform
TARGET_AMLOGIC_SOC := gxl

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Wifi
PRODUCT_COPY_FILES += \
    hardware/amlogic/kernel-modules/icomm/ssv6051/ssv6051-wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-wifi.cfg \
    hardware/amlogic/kernel-modules/icomm/ssv6051/image/ssv6051-sw.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/ssv6051/ssv6051-sw.bin

$(call inherit-product, device/amlogic/gx-common/gx.mk)
$(call inherit-product, vendor/amlogic/a95xf1/a95xf1-vendor.mk)
