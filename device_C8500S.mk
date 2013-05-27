# Copyright (C) 2011 The Android Open Source Project
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
#

DEVICE_PACKAGE_OVERLAYS += device/huawei/C8500S/overlay

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    Gallery \
    lights.msm7k \
    copybit.C8500S \
    gps.C8500S \
    libOmxCore \
    libmm-omxcore \
    libcamera

# Vold config
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/C8500S/prebuilt/bin/vold:system/bin/vold

# GPS
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/lib/hw/gps.C8500S.so:system/lib/hw/gps.C8500S.so

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Keys
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/C8500S/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/init.huawei.rc:root/init.huawei.rc \
    device/huawei/C8500S/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc

# Wi-Fi releated
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/wifi/firmware_apsta.bin:system/wifi/firmware_apsta.bin \
    device/huawei/C8500S/prebuilt/wifi/firmware.bin:system/wifi/firmware.bin \
    device/huawei/C8500S/prebuilt/wifi/nvram.txt:system/wifi/nvram.txt \
    device/huawei/C8500S/prebuilt/wifi/bcm4319.ko:system/wifi/bcm4319.ko \
    device/huawei/C8500S/prebuilt/wifi/zram.ko:system/wifi/zram.ko \
    device/huawei/C8500S/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/C8500S/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Other
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/C8500S/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/C8500S/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/C8500S/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/C8500S/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \
    device/huawei/C8500S/prebuilt/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus

# USB autorun.iso for cdrom emulation in kernel driver
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

PRODUCT_COPY_FILES += device/huawei/C8500S/prebuilt/kernel:kernel

# Phonelocation
PRODUCT_COPY_FILES += \
    device/huawei/C8500S/prebuilt/usr/share/phoneloc.dat:system/usr/share/phoneloc.dat \
    device/huawei/C8500S/prebuilt/lib/libphoneloc-jni.so:system/lib/libphoneloc-jni.so

$(call inherit-product-if-exists, vendor/huawei/C8500S/C8500S-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_CN_supl.mk)

# LDPI assets
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_NAME := cm_C8500S
PRODUCT_DEVICE := C8500S
PRODUCT_MODEL := C8500S
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
