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

# inherit from the proprietary version
-include vendor/huawei/C8500S/BoardConfigVendor.mk

# use a local header path
TARGET_SPECIFIC_HEADER_PATH := device/huawei/C8500S/include

# ARMv6-compatible processor rev 2 (v6l)
# CPU
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI := armeabi-v6j

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := C8500S
TARGET_OTA_ASSERT_DEVICE := c8500s,C8500S,huawei

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
BOARD_LIBCAMERA_MISSING_AUTOFOCUS := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 20000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := C8500S

# Browser
JS_ENGINE := v8

# USB mass storage
BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/C8500S/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH :="/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/C8500S/recovery/recovery_ui.c
BOARD_LDPI_RECOVERY := true

# RIL
TARGET_PROVIDES_LIBRIL := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# Graphics
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/huawei/C8500S/prebuilt/lib/egl/egl.cfg
BOARD_HAS_LIMITED_EGL := true
TARGET_ELECTRONBEAM_FRAMES := 8

# WiFI
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_FW_STA_PATH := "/system/wifi/firmware.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/wifi/firmware.bin nvram_path=/system/wifi/nvram.txt iface_name=wlan"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_PATH := "/system/wifi/bcm4319.ko"
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WEXT_NO_COMBO_SCAN := true

# Kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/C8500S/prebuilt/recovery_kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=huawei console=ttyUSBCONSOLE0 androidboot.console=ttyUSBCONSOLE0 androidboot.localproppath=telecom/cn androidboot.network=cdma androidboot.swtype=normal androidboot.mode=boot
BOARD_KERNEL_PAGESIZE := 4096

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00400000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 08c00000 00020000 "system"
# mtd5: 00a00000 00020000 "cache"
# mtd6: 134a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x134a0000

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144 

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329
