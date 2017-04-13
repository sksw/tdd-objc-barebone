#!/bin/bash

set -euo pipefail

TARGET_NAME=$1
echo "> Testing target $1"
xcodebuild -workspace "${TARGET_NAME}.xcworkspace" \
    -scheme "${TARGET_NAME}" \
    -destination "platform=iOS Simulator,name=iPhone 6 Plus" \
    clean \
    build \
    test

