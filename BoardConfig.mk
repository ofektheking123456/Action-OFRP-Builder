#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Software distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/tanzanite

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Assertions
TARGET_OTA_ASSERT_DEVICE := tanzanite

# Bootloader / Platform
TARGET_BOOTLOADER_BOARD_NAME := tanzanite
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel Configuration
BOARD_KERNEL_CMDLINE := bootconfig loop.max_part=7
BOARD_PAGE_SIZE := 4096
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Kernel Binary (Ensure kernel is placed in device/xiaomi/tanzanite/prebuilt/kernel)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# System & Partition Sizes
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
BOARD_HAS_NO_REAL_SDCARD := true

# Virtual A/B / Recovery Configuration
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := xiaomi_dynamic_partitions
BOARD_XIAOMI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE := 9122611200

# Crypto / Encryption & Decryption
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FDBE := true
BOARD_USES_METADATA_PARTITION := true

# OrangeFox UI & Hardware Settings
TW_THEME := portrait_hd
RECOVERY_GRAPHICS_USE_HEADER_2 := true
TW_ALLOW_MISSING_TEMPLATED_HOS := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 160

# Device Features & Tools
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_NTFS_3G := true
OF_QUICK_BACKUP_LIST := "/boot;/data;"
OF_USE_GREEN_LED := 0

# OrangeFox Project Flags
OF_KEEP_FORCED_ENCRYPTION := true
OF_NO_TREBLE_COMPATIBILITY_CHECK := true
OF_ENABLE_LPTOOLS := true
