#!/usr/bin/env bash

rm -rf out/*
mkdir out/Debug
mkdir out/Release

docker run --platform=linux/amd64 -v $(pwd)/out:/out -it build_libwebrtc_android
