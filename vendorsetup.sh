# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove hardware/lineage/compat to avoid conflicts
rm -rf hardware/lineage/compat/Android.bp

# Kernel & Vendor Sources
git clone https://github.com/spesmynuts/vendor_xiaomi_spes -b 14 vendor/xiaomi/spes --depth=1 
<<<<<<< HEAD
git clone git clone https://github.com/TheMatheusDev/android_kernel_xiaomi_sm6225-2.git kernel/xiaomi/sm6225 --depth=1
=======
git clone https://github.com/KrustyCook/android_kernel_xiaomi_sm6225 -b master kernel/xiaomi/sm6225 --depth=1
>>>>>>> origin

# Sepolicy fix for imsrcsd
echo -e "${color}Switch back to legacy imsrcsd sepolicy${end}"
rm -rf device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/ims/imsservice.te
cp device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/legacy-ims/hal_rcsservice.te device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/ims/hal_rcsservice.te

# LineageOS Hardware
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi

# JamesDSP
git clone https://github.com/Arijit78/packages_apps_JamesDSPManager.git packages/apps/JamesDSPManager --depth=1
