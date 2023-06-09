#!/usr/bin/env bash
set -e
set -x
mkdir -p result
docker run --env WEBRTC_GIT_REPO=$WEBRTC_PLUGIN_REPO --env WEBRTC_GIT_REPO_BRANCH=WEBRTC_PLUGIN_REPO_BRANCH --platform=linux/amd64 -v $(pwd)/../result:/result -v $(pwd)/script:/script -v $(pwd)/patches:/patches -it build_libwebrtc_android ./script/runner.sh all
