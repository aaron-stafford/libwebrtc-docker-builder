#!/usr/bin/env bash
set -e
set -x
mkdir -p result
docker run --env WEBRTC_GIT_REPO=$LIBWEBRTC_REPO --env WEBRTC_GIT_REPO_BRANCH=$LIBWEBRTC_REPO_BRANCH --platform=linux/amd64 -v /result:/result -v $(pwd)/script:/script -v $(pwd)/patches:/patches -it build_libwebrtc_android
