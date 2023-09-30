#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=a95xf1
export DEVICE_COMMON=g12-common
export TARGET_SOC=gxl
export VENDOR_COMMON=amlogic
export VENDOR_DEVICE=amlogic
export TARGET_SOC=gxl

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
