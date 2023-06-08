#!/usr/bin/env bash
set -e
mkdir -p result
docker run --platform=linux/amd64 -v $(pwd)/result:/result -v $(pwd)/script:/script -v $(pwd)/patches:/patches -it build_libwebrtc_android
