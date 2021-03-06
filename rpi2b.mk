#
# Copyright (C) 2014 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/raspberrypi/rpi2b/device.mk)

PRODUCT_NAME := rpi2b
PRODUCT_DEVICE := rpi2b
PRODUCT_BRAND := FirefoxOS
PRODUCT_MANUFACTER := raspberrypi
PRODUCT_MODEL := rpi2b

EXPORT_DEVICE_PREFS := $(LOCAL_PATH)/prefs

GECKO_CONFIGURE_ARGS := \
	--disable-b2g-bt \
	--disable-b2g-ril

# Set Gecko toolchain
GECKO_TOOLS_PREFIX = prebuilts/gcc/$(HOST_PREBUILT_TAG)/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

BOARD_GAIA_MAKE_FLAGS := NOFTU=1 NO_LOCK_SCREEN=1

