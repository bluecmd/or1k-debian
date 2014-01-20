#!/bin/bash

set -e

DIR=$(dirname $0)
source $DIR/settings.sh

sources_create

apt-get install dpkg
dpkg --add-architecture or1k

sources_append 'bootstrap'
sources_append 'stage1'

apt-get update
apt-get dist-upgrade

apt-get -o Dpkg::Options::="--force-confold" \
  build-dep -y binutils gcc-4.8 linux

apt-get install -y binutils-or1k-linux-gnu

apt-get source gcc-4.8

# target gcc-4.8
export DEB_BUILD_OPTIONS=nocheck
(cd gcc-4.8-4.8.2 && \
  DEB_TARGET_ARCH=or1k DEB_BUILD_PROFILE=stage1 \
    with_deps_on_target_arch_pkgs=yes dpkg-buildpackage -b -d)
