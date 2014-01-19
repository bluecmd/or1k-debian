#!/bin/sh

set -e

apt-get install dpkg
dpkg --add-architecture or1k

apt-get update
apt-get install -y gettext file quilt autoconf gawk debhelper \
  gcc gcc-4.8-or1k-linux-gnu libgcc-4.8-dev-or1k-cross linux-libc-dev:or1k

# Hack since we are using libgcc-4.8-dev-or1k-cross instead of libgcc-4.8-dev:or1k
ln -sf /usr/lib/gcc-cross/or1k-linux-gnu/4.8/include-fixed /usr/lib/gcc/or1k-linux-gnu/4.8/include-fixed
ln -sf /usr/lib/gcc-cross/or1k-linux-gnu/4.8/include /usr/lib/gcc/or1k-linux-gnu/4.8/include

export DEB_BUILD_OPTIONS=nocheck

# TODO: control.mk and sysdeps/or1k.mk
# Disable stage1 in debhelpers.mk
# TODO: remove libc6 dep

apt-get source eglibc
cd eglibc-2.18
# TODO: was it DEB_STAGE=stage1 instead of bootstrap?
LINUX_SOURCE=/usr LINUX_ARCH_HEADERS=/usr/include/or1k-linux-gnu \
  dpkg-buildpackage -aor1k -d

#  while true; do /usr/bin/make -C sunrpc  srcdir=/tmp/eglibc-2.18 objdir=/tmp/eglibc-2.18/build-tree/or1k-libc/ /tmp/eglibc-2.18/build-tree/or1k-libc//sunrpc/cross-rpcgen; don

