#!/bin/bash
set -e

VERSION=$1

curl -L https://go.dev/dl/go$VERSION.tar.gz -o /app/go.tar.gz
tar -xf /app/go.tar.gz

export GOROOT="/go"
export GOPATH="/goData"
export PATH="/go/bin:$PATH"