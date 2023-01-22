#!/bin/bash
set -e

VERSION=$1

curl -L "https://github.com/protocolbuffers/protobuf/releases/download/v21.1/protoc-$VERSION.zip" \
    -o "/app/protoc.zip"

unzip /app/protoc.zip -d /app