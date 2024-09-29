# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
echo -e "\e[1;33mwarning:\e[0m \e[1mClone Vendor Tree\e[0m"
git clone -b fourteen https://github.com/asterixiverz/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
echo -e "\e[1;33mwarning:\e[0m \e[1mClone Kernel Tree\e[0m"
git clone --depth=1 -b 4.19 https://github.com/asterixiverz/kernel_xiaomi_fog-msm4.19 kernel/xiaomi/fog

# Clone LineageOS' hardware/xiaomi
echo -e "\e[1;33mwarning:\e[0m \e[1mClone Hardware Dependencies for Xiaomi Devices from LineageOS\e[0m"
git clone -b lineage-21 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..
