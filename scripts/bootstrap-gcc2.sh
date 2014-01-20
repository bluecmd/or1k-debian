#!/bin/bash

set -e

DIR=$(dirname $0)
source $DIR/settings.sh

sources_create

apt-get update
apt-get -y install dpkg
dpkg --add-architecture or1k

sources_append 'updates'
sources_append 'bootstrap'
sources_append 'stage1'
sources_append 'stage2'

apt-get update
apt-get -y dist-upgrade

install_build_dep gcc-4.8

apt-get install -y binutils-or1k-linux-gnu binutils-multiarch
apt-get remove -y libc6-dev-i386

# Just overwrite everything for now
apt-get download -y libc6-dev:or1k linux-libc-dev:or1k
for i in *.deb
do
  dpkg -x $i /
done

# Until I get around to find binutils
ln -sf /usr/include/or1k-linux-gnu /usr/or1k-linux-gnu/include
ln -sf /usr/lib/or1k-linux-gnu /usr/or1k-linux-gnu/lib

apt-get source gcc-4.8

# target gcc-4.8
# TODO: add patch to --disable-multilib
export DEB_BUILD_OPTIONS=nocheck
(cd gcc-4.8-4.8.2 && \
  DEB_TARGET_ARCH=or1k DEB_BUILD_PROFILE=stage2 \
    with_deps_on_target_arch_pkgs=yes dpkg-buildpackage -b -d)
