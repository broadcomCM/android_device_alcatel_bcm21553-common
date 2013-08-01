#
# Copyright (C) 2009 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it

LOCAL_PATH:= $(call my-dir)

# Board
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_PREBUILT_LIBAUDIO := true
BUILD_WITH_ALSA_UTILS := true

# Camera
USE_CAMERA_STUB := true
ifeq ($USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
BOARD_USE_CAF_LIBCAMERA_GB_REL := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
endif

# 3D
BOARD_EGL_CFG := device/alcatel/bcm21553-common/prebuilt/lib/egl/egl.cfg
BOARD_USES_HGL := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
USE_OPENGL_RENDER := true
TARGET_ELECTRONBEAM_FRAMES := 20

# Mobile Data
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Device related defines
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_BASE := 0x81600000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# JIT / Optimizations
WITH_JIT := true
ENABLE_JSC_JIT := true
BOARD_USE_SCREENCAP := true
JS_ENGINE := v8

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/lm-2/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/lm-2/gadget/lun0/file"

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wifi/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wifi/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "bcm4330"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# FM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
