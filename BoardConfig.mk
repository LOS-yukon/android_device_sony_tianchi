# Copyright 2014 The Android Open Source Project
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

include device/sony/yukon/PlatformConfig.mk

TARGET_RECOVERY_FSTAB = device/sony/tianchi/rootdir/fstab.tianchi

TARGET_BOOTLOADER_BOARD_NAME := D5303

BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2399141888
# Reserve space for data encryption (5112839168-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5112822784

# kernel configs
TARGET_KERNEL_SOURCE := kernel/sony/msm8226
TARGET_KERNEL_CONFIG := aosp_yukon_tianchi_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage

BOARD_KERNEL_CMDLINE += androidboot.hardware=tianchi
BOARD_KERNEL_CMDLINE += mem=1003M
