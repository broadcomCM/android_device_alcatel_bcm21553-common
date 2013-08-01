# Copyright (C) 2010 The Android Open Source Project
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

# Libs
PRODUCT_PACKAGES += \
    libstagefrighthw \
    overlay.bcm21553 \
    lights.bcm21553

# Update utilities
PRODUCT_PACKAGES += \
    libOmxCore \
    alcatelServiceMode \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    screencap \
    FM

# Live Wallpapers
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Keychars
PRODUCT_COPY_FILES += \
    device/alcatel/bcm21553-common/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/alcatel/bcm21553-common/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/alcatel/bcm21553-common/prebuilt/usr/keychars/sec_key.kcm.bin:system/usr/keychars/sec_key.kcm.bin

# Keymap
PRODUCT_COPY_FILES += \
    device/alcatel/bcm21553-common/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/alcatel/bcm21553-common/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/alcatel/bcm21553-common/prebuilt/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/alcatel/bcm21553-common/prebuilt/usr/keylayout/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
    device/alcatel/bcm21553-common/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/alcatel/bcm21553-common/prebuilt/usr/keylayout/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl

# Media
PRODUCT_COPY_FILES += \
    device/alcatel/bcm21553-common/prebuilt/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    device/alcatel/bcm21553-common/prebuilt/etc/asound.conf:system/etc/asound.conf \
    device/alcatel/bcm21553-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# GPS
PRODUCT_COPY_FILES += \
    device/alcatel/bcm21553-common/prebuilt/etc/gps.conf:system/etc/gps.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/alcatel/bcm21553-common/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/alcatel/bcm21553-common/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs \
    device/alcatel/bcm21553-common/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/alcatel/bcm21553-common/prebuilt/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
    device/alcatel/bcm21553-common/prebuilt/lib/modules/brcm_switch.ko:system/lib/modules/brcm_switch.ko

# Media Profiles
PRODUCT_COPY_FILES += \
    device/alcatel/bcm21553-common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
