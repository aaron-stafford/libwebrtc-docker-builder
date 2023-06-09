#!/usr/bin/env bash
set -e
set -x
mkdir -p result
docker run --platform=linux/amd64 -v /result:/result -v $(pwd)/script:/script -v $(pwd)/patches:/patches -it build_libwebrtc_android --env WEBRTC_GIT_REPO=https://github.com/aaron-stafford/com.unity.webrtc --env WEBRTC_GIT_REPO_BRANCH=issue-802-part-1 ./script/runner.sh all
