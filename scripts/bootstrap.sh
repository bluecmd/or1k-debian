#!/bin/sh

set -e
mkdir -p /tmp/bootstrap
cd /tmp/bootstrap

apt-get update
apt-get -o Dpkg::Options::="--force-confold" \
  build-dep -y binutils gcc-4.8 linux

export DEB_BUILD_OPTIONS=nocheck

## source binutils
#apt-get source binutils
#(cd binutils-2.24 && \
#  TARGET=or1k dpkg-buildpackage -b)
#
## source linux
#apt-get source linux
#(cd linux-3.12.6 && \
#  DEB_BUILD_PROFILE=stage1 dpkg-buildpackage -aor1k)

# source gcc-4.8
apt-get source gcc-4.8
(cd gcc-4.8-4.8.2 && \
  dpkg-buildpackage -b -d && \
  GCC_TARGET=or1k DEB_BUILD_PROFILE=stage1 dpkg-buildpackage -b -d)
