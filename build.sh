#!/bin/bash
set -e

docker build -t tmp -f builder.dockerfile .