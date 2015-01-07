#!/bin/bash
#
#
# Simple shell script to debug android project with gradle
# Usage: debug.sh <mode>
#          mode b : build debug version
#          mode u : uninstall application
#          mode i : install application
#          mode a : build->uninstall->install
# @author Jerome Song <songzhiyong1121@gmail.com>
#

cd ~/dev/android
mode="$1"
path=$(awk -F "=" '/root_path/ {print $2}' config.ini)
pkg_name=$(awk -F "=" '/pkg_name/ {print $2}' config.ini)
# echo $path
# echo $pkg_name
echo "$mode"
echo "-----build-------"
cd $path
./gradlew :app:assembleDebug
echo "-----uninstall---"
adb uninstall $pkg_name
echo "-----install-----"
adb install app/build/outputs/apk/app-debug.apk
echo "-----DONE--------"
