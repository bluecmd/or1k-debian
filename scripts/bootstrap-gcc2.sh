#!/bin/sh

set -e

# Warning:
# This requires the exact same version of build native libc6
# installed.

apt-get update
apt-get -y install dpkg
dpkg --add-architecture or1k

apt-get update
apt-get -y dist-upgrade
apt-get -o Dpkg::Options::="--force-confold" build-dep -y \
  gcc-4.8 --no-install-recommends

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
  DEB_TARGET_ARCH=or1k DEB_BUILD_PROFILE=stage2 with_gccxbase=true \
    with_deps_on_target_arch_pkgs=yes dpkg-buildpackage -b -d)
