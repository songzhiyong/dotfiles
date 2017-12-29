#!/bin/bash
#================================================================================
# connect and package release package
# @author Jerome Song <songzhiyong1121@gmail.com>
#================================================================================
ssh page@10.0.0.99
cd ~/android/projects/android-magic/
git pull https://jerome-eyespage:s3cr3tp4ss@github.com/eyespage/android-magic.git 
./gradlew assembleOfficial_siteRelease

