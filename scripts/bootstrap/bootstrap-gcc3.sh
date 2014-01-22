#!/bin/bash

set -e

SCRIPT='gcc3'
source $(dirname $0)/settings.sh

setup_system

sources_append 'updates'
sources_append 'bootstrap'
sources_append 'gcc3'

upgrade_system

install_build_dep gcc-4.8
apt-get install -y binutils-or1k-linux-gnu \
  binutils-multiarch libc6-dev:or1k

# Until I get around to find binutils
ln -sf /usr/include/or1k-linux-gnu /usr/or1k-linux-gnu/include
ln -sf /usr/lib/or1k-linux-gnu /usr/or1k-linux-gnu/lib

apt-get source gcc-4.8

# target gcc-4.8
export DEB_BUILD_OPTIONS=nocheck
(cd gcc-4.8-4.8.2 && \
  DEB_TARGET_ARCH=or1k with_multiarch_lib=yes \
    with_deps_on_target_arch_pkgs=yes dpkg-buildpackage -b -d -us -uc)
