#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/google/beast

$(call inherit-product, vendor/google/beast/beast-vendor.mk)

$(call inherit-product, device/amlogic/g12-common/g12.mk)
