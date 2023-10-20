#!/bin/bash

echo 'Starting Cloning repos for beyond2lte'
echo 'Cloning Kernel tree [1/7]'
# Kernel for exynos9820
rm -rf kernel/samsung/exynos9820
git clone https://github.com/LineageOS/android_kernel_samsung_exynos9820 kernel/samsung/exynos9820

echo 'Cloning Common Tree [2/7]'
# Common tree for exynos9820-common
rm -rf device/samsung/exynos9820-common
git clone https://github.com/ProjectElixir-Devices/android_device_samsung_exynos9820-common device/samsung/exynos9820-common

echo 'Cloning Device Tree [3/7]'
# Device tree for beyond2lte
rm -rf device/samsung/beyond2lte
git clone https://github.com/ProjectElixir-Devices/android_device_samsung_beyond2lte device/samsung/beyond2lte

echo 'Cloning Vendor Trees [4/7]'
# Vendor blobs for beyond2lte
rm -rf vendor/samsung/beyond2lte
git clone https://github.com/TheMuppets/proprietary_vendor_samsung_beyond2lte vendor/samsung/beyond2lte
rm -rf vendor/samsung/exynos9820-common
git clone https://github.com/TheMuppets/proprietary_vendor_samsung_exynos9820-common vendor/samsung/exynos9820-common

echo 'Cloning Hardware Samsung [5/7]'
# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/ElixirOS-982x/hardware_samsung -b evo hardware/samsung
mv nfc hardware/samsung

echo 'Cloning Samsung_Slsi and Linaro BSP repos [6/7]'
# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone https://github.com/ElixirOS-982x/android_device_samsung_slsi_sepolicy -b lineage-21.0 device/samsung_slsi/sepolicy
# Linaro BSP
rm -rf hardware/samsung_slsi-linaro
git clone https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_graphics.git hardware/samsung_slsi-linaro/graphics
git clone https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_config.git hardware/samsung_slsi-linaro/config
git clone https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_exynos.git hardware/samsung_slsi-linaro/exynos
git clone https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_openmax.git hardware/samsung_slsi-linaro/openmax
git clone https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_exynos5.git hardware/samsung_slsi-linaro/exynos5

echo 'Cloning Sepolicy Dependency repo [7/7]'
# Sepolicy
rm -rf device/aosp/sepolicy
git clone https://github.com/crdroidandroid/android_device_crdroid_sepolicy device/aosp/sepolicy

rm -rf packages/apps/Nfc
git clone https://github.com/CherishOS/android_packages_apps_Nfc.git packages/apps/Nfc
