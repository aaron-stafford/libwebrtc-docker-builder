#!/usr/bin/env bash
set -e
set -x
git clone --branch bugfix-depot_tools-issue-workaround https://github.com/lumin-leaper/com.unity.webrtc --depth=1
pushd com.unity.webrtc
mkdir -p out/Debug
mkdir -p out/Release
bash -e BuildScripts~/build_libwebrtc_android.sh
cp /com.unity.webrtc/artifacts/webrtc-android.zip /result/.
popd
