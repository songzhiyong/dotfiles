#!/bin/bash
cd ~/dev/android
path=$(awk -F "=" '/root_path/ {print $2}' config.ini)
pkg_name=$(awk -F "=" '/pkg_name/ {print $2}' config.ini)
# echo $path
# echo $pkg_name
echo "-----build-------"
cd $path
./gradlew :app:assembleDebug
echo "-----uninstall---"
adb uninstall $pkg_name
echo "-----install-----"
adb install app/build/outputs/apk/app-debug.apk
echo "-----DONE--------"