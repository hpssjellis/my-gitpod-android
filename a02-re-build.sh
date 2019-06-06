#!/bin/bash

#export ANDROID_SDK_ROOT="/workspace/rocksetta-gitpod-links/android/"
#echo $ANDROID_SDK_ROOT

#export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"

#export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"
#export PATH="${PATH}:$/workspace/rocksetta-gitpod-links/cordova/node_modules/:/workspace/rocksetta-gitpod-links/cordova/node_modules/cordova/bin:/workspace/rocksetta-gitpod-links/cordova/node_modules/qrcode/bin"

#echo $PATH


echo "Enter a folder name of the app you wish to re-build"
echo "The App must have been built with a01-create-cordova-app.sh"
read wow4

#cordova create $wow4 com.$wow4.$wow4 $wow4
#cordova create hello com.example.hello HelloWorld


cd $wow4


#cordova platform add android


cordova build android --no-telemetry


# backup old .apk
cp /workspace/rocksetta-gitpod-links/public/$wow4-app-debug.apk /workspace/rocksetta-gitpod-links/public/$wow4-backup-app-debug.apk

#copy new .apk to the public folder
cp /workspace/rocksetta-gitpod-links/$wow4/platforms/android/app/build/outputs/apk/debug/app-debug.apk /workspace/rocksetta-gitpod-links/public/$wow4-app-debug.apk



#printf "\n\n<a href='$wow4/platforms/android/app/build/outputs/apk/$wow4-debug.apk'>$wow4/platforms/android/app/build/outputs/apk/$wow4-debug.apk

echo "<li> Next rebuild <a href="$wow4-app-debug.apk">$wow4-app-debug.apk</a><br>" >> /workspace/rocksetta-gitpod-links/public/index.html

apachectl start

echo "Refresh your web browser!"
echo "You must delete your old download on your phone or the installation will give an error as the file name has changed"
