#!/usr/bin/env bash

git clone https://github.com/Unity-Technologies/com.unity.webrtc.git --depth=1
cd com.unity.webrtc
patch -N BuildScripts~/build_libwebrtc_android.sh < /patches/x86_64.patch
mkdir -p out/Debug
mkdir -p out/Release
./BuildScripts~/build_libwebrtc_android.sh
cp /com.unity.webrtc/artifacts/webrtc-android.zip /result/.
