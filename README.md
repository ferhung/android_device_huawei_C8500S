CyanogenMod 7 device configuration for the Huawei C8500S

Powered by ferhung

Originally designed from Huawei U8150 which changed, improved and optimized by tilal6991 and alanorth

HOW-TO BUILD:
============

Based on Ubuntu 10.10

1)Download and install repo:

$ mkdir ~/bin

$ PATH=~/bin:$PATH

$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

$ chmod a+x ~/bin/repo

2)Download the source:

$ mkdir ~/android/system/

$ cd ~/android/system/

$ repo init -u git://github.com/CyanogenMod/android.git -b gingerbread

$ repo sync -j16

3)Download the rommanager:

$ ~/android/vendor/cyanogen/get-rommanager

4)Copy the device configuration to ~/android/system/device/huawei/C8500S. Then build:

$ cd ~/android/system

$ . build/envsetup.sh && brunch C8500S

5)Installing:

If the build was successful, you can now take the update zip found in out/target/product/C8500S/ and flash using a custom recovery. Make sure to grab the latest Gapps to complete the experience.
