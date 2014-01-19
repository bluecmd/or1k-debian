#!/bin/sh

set -e

apt-get install dpkg
dpkg --add-architecture or1k

apt-get update
apt-get -o Dpkg::Options::="--force-confold" \
  build-dep -y binutils gcc-4.8 linux

apt-get install -y binutils-or1k-linux-gnu
export DEB_BUILD_OPTIONS=nocheck

apt-get source gcc-4.8

# host gcc-4.8
# (cd gcc-4.8-4.8.2 && \
#   dpkg-buildpackage -b -d)

# target gcc-4.8

(cd gcc-4.8-4.8.2 && \
  DEB_TARGET_ARCH=or1k DEB_BUILD_PROFILE=stage1 \
    with_deps_on_target_arch_pkgs=yes dpkg-buildpackage -b -d)
