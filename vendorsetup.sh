# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b fifteen https://github.com/asterixiverz/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b 4.19 https://github.com/asterixiverz/kernel_xiaomi_fog-msm4.19 kernel/xiaomi/fog

# Clone YAAP hardware/xiaomi
git clone -b fifteen https://github.com/yaap/hardware_xiaomi hardware/xiaomi

# Clone private-keys
rm -rf vendor/yaap/signing/keys
git clone -b yaap https://github.com/asterixiverz/vendor_sign vendor/yaap/signing/keys

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..