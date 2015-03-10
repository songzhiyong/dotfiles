#!/bin/bash

#================================================================================
# Simple shell script to debug android project with gradle
# Usage: debug.sh <mode>
#          mode b : build debug version
#          mode u : uninstall application
#          mode i : install application
#          mode a : build->uninstall->install
# @author Jerome Song <songzhiyong1121@gmail.com>
#================================================================================

# wget -O /Users/jerome/AndroidStudioProjects/Launcher2/app/src/main/assets/cache.json http://54.201.20.211/api/cache_app_categories.json 

cd ~/dev/android
MODE="$1"
ROOT_PATH=`awk -F "=" '/root_path/ {print $2}' config.ini`
PKG_NAME=`awk -F "=" '/pkg_name/ {print $2}' config.ini`
cd $ROOT_PATH
if [[ "$MODE" == *b* ]]||[[ "$MODE" == *a* ]]||[[ "$MODE" == ""  ]];then
  ./gradlew :app:assembleDebug
fi
if [[ "$MODE" == *u* ]]||[[ "$MODE" == *a* ]];then
  echo "[Uninstall...]"
  adb uninstall $PKG_NAME
fi
sleep 2
if [[ "$MODE" == *r* ]];then
  echo "[Upgrade...]"
  adb install -r app/build/outputs/apk/app-debug.apk
fi
if [[ "$MODE" == *i* ]]||[[ "$MODE" == *a* ]];then
  echo "[Install...]"
  adb install app/build/outputs/apk/app-debug.apk
fi
echo "[DONE]"
