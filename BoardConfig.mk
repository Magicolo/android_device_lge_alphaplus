#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lge/alphaplus

# inherit from common tree
-include device/lge/sm8150-common/BoardConfigCommon.mk

# Audio - LGE
BOARD_LGE_HAS_HIFI_QUAD_DAC := true
BOARD_LGE_HAS_EXT_AMPLIFIER := true

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG += vendor/lge/lge-alpha.config
# Use the arm64 kernel's CPU-specific page-table isolation policy.
BOARD_KERNEL_CMDLINE := $(filter-out kpti=off,$(BOARD_KERNEL_CMDLINE))

# Keep build account and host names out of the kernel version banner.
KERNEL_MAKE_FLAGS += KBUILD_BUILD_USER=builder KBUILD_BUILD_HOST=android-build

# Lights
$(call soong_config_set,LGE_LIGHTS_HAL,INCLUDE_DIR,$(DEVICE_PATH)/include)

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# inherit from the proprietary version
-include vendor/lge/alphaplus/BoardConfigVendor.mk

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/ims/sepolicy/private

BOARD_VENDOR_SEPOLICY_DIRS += device/lge/alphaplus/ims/sepolicy/vendor
