#!/bin/bash
set -e

apt-get update --fix-missing
apt-get -y install git make build-essential autoconf libtool pkg-config curl unzip