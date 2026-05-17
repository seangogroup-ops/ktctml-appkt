#!/bin/bash
# Chạy script này SAU khi đã chạy: npx cap add android
echo "Đang copy icon vào Android project..."
cp -r android-icons/mipmap-mdpi/     android/app/src/main/res/mipmap-mdpi/
cp -r android-icons/mipmap-hdpi/     android/app/src/main/res/mipmap-hdpi/
cp -r android-icons/mipmap-xhdpi/    android/app/src/main/res/mipmap-xhdpi/
cp -r android-icons/mipmap-xxhdpi/   android/app/src/main/res/mipmap-xxhdpi/
cp -r android-icons/mipmap-xxxhdpi/  android/app/src/main/res/mipmap-xxxhdpi/
echo "✓ Icon đã được copy xong!"
