#!/bin/bash
echo "NetworkTools for Android"
echo "Welcome to network tools for Android!"
echo "This release uses binarys compiled for dSploit"
echo "In this release:"
echo " - arpspoof"
echo " - ettercap"
echo " - hydra"
echo " - tcpdump"
echo "- and all required libs"
echo
echo
read -p "Please press [ENTER] to install"
echo "Making Bridge..."
adb kill-server
adb start-server
echo "Mounting System..."
adb shell su -c "mount -o rw,remount /system"
echo "Copying Tools To Device..."
adb push tools /sdcard/tmp/tools
echo "Copying Internals..."
adb shell su -c "cp /sdcard/tmp/tools/arpspoof/arpspoof /system/bin/arpspoof
adb shell su -c "cp /sdcard/tmp/tools/ettercap/ettercap /system/bin/ettercap
adb shell su -c "cp /sdcard/tmp/tools/ettercap/etterfilter /system/bin/etterfilter
adb shell su -c "cp /sdcard/tmp/tools/ettercap/etterlog /system/bin/etterlog
adb shell su -c "mkdir /system/usr/share/ettercap/"
adb shell su -c "cp /sdcard/tmp/tools/ettercap/share/etter.conf /system/usr/share/ettercap/etter.conf
adb shell su -c "cp /sdcard/tmp/tools/hydra/hydra /system/bin/hydra
adb shell su -c "cp /sdcard/tmp/tools/hydra/usernames /system/bin/usernames
adb shell su -c "cp /sdcard/tmp/tools/tcpdump/tcpdump /system/bin/tcpdump
adb shell su -c "cp /sdcard/tmp/tools/libs/libcrypto.so /system/lib/libcrypto.so
adb shell su -c "cp /sdcard/tmp/tools/libs/libgif.so /system/lib/libgif.so
adb shell su -c "cp /sdcard/tmp/tools/libs/libltdl.so /system/lib/
adb shell su -c "cp /sdcard/tmp/tools/libs/libnet.so /system/lib/libnet.so
adb shell su -c "cp /sdcard/tmp/tools/libs/libpcap.so /system/lib/libpcap.so
adb shell su -c "cp /sdcard/tmp/tools/libs/libpcre.so /system/lib/libpcre.so
adb shell su -c "cp /sdcard/tmp/tools/libs/libssh.so /system/lib/libssh.so
adb shell su -c "cp /sdcard/tmp/tools/libs/libssl.so /system/lib/libssl.so
echo "Removing Temporary Files..."
adb shell su -c "rm -r /sdcard/tmp/tools"
echo "Done!"
echo "NetworkTools has been installed on your device!"
