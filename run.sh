#!/usr/bin/env bash
set -e
set -x
mkdir -p result
docker run --platform=linux/amd64 -v $(pwd)/../result:/result -v $(pwd)/script:/script -v $(pwd)/patches:/patches -it build_libwebrtc_android ./script/runner.sh all
