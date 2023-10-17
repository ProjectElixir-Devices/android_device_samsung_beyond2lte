#!/bin/bash

echo 'Starting Cloning repos for beyond2lte'
echo 'Cloning Kernel tree [1/7]'
# Kernel for exynos9820
rm -rf kernel/samsung/exynos9820
git clone https://github.com/linux4-bringup-priv/android_kernel_samsung_exynos9820 -b lineage-21.0 kernel/samsung/exynos9820

echo 'Cloning Common Tree [2/7]'
# Common tree for exynos9820-common
rm -rf device/samsung/exynos9820-common
git clone https://github.com/ProjectElixir-Devices/android_device_samsung_exynos9820-common -b ELIXIR-14 device/samsung/exynos9820-common

echo 'Cloning Device Tree [3/7]'
# Device tree for beyond2lte
rm -rf device/samsung/beyond2lte
git clone https://github.com/ProjectElixir-Devices/android_device_samsung_beyond2lte device/samsung/beyond2lte

echo 'Cloning Vendor Trees [4/7]'
# Vendor blobs for beyond2lte
rm -rf vendor/samsung/beyond2lte
git clone https://github.com/linux4-bringup-priv/android_vendor_samsung_beyond2lte -b lineage-20.0 vendor/samsung/beyond2lte
rm -rf vendor/samsung/exynos9820-common
git clone https://github.com/linux4-bringup-priv/android_vendor_samsung_exynos9820-common -b lineage-21.0 vendor/samsung/exynos9820-common

echo 'Cloning Hardware Samsung [5/7]'
# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/DragonFox-Project/hardware_samsung hardware/samsung --depth 1 -b evo-udc
mv nfc hardware/samsung

echo 'Cloning Samsung_Slsi and Linaro BSP repos [6/7]'
# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone https://github.com/DragonFox-Project/android_device_samsung_slsi_sepolicy device/samsung_slsi/sepolicy --depth 1 -b evo-udc
# Linaro BSP
rm -rf hardware/samsung_slsi-linaro
git clone https://github.com/DragonFox-Project/android_hardware_samsung_slsi-linaro_graphics hardware/samsung_slsi-linaro/graphics --depth 1 -b evo-udc/slsi-q
git clone https://github.com/linux4-bringup-priv/android_hardware_samsung_slsi-linaro_config.git -b lineage-21.0 hardware/samsung_slsi-linaro/config
git clone https://github.com/linux4-bringup-priv/android_hardware_samsung_slsi-linaro_exynos.git -b lineage-21.0 hardware/samsung_slsi-linaro/exynos
git clone https://github.com/linux4-bringup-priv/android_hardware_samsung_slsi-linaro_openmax.git -b lineage-21.0 hardware/samsung_slsi-linaro/openmax
git clone https://github.com/linux4-bringup-priv/android_hardware_samsung_slsi-linaro_exynos5.git -b lineage-21.0 hardware/samsung_slsi-linaro/exynos5
git clone https://github.com/linux4-bringup-priv/android_hardware_samsung_slsi-linaro_interfaces.git -b lineage-21.0 hardware/samsung_slsi-linaro/interfaces

echo 'Cloning Sepolicy Dependency repo [7/7]'
# Sepolicy
rm -rf device/aosp/sepolicy
git clone https://github.com/crdroidandroid/android_device_crdroid_sepolicy device/aosp/sepolicy

rm -rf packages/apps/Nfc
git clone https://github.com/Evolution-X/packages_apps_Nfc.git packages/apps/Nfc
