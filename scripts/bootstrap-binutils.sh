#!/bin/sh

set -e

apt-get update
apt-get -o Dpkg::Options::="--force-confold" \
  build-dep -y binutils

export DEB_BUILD_OPTIONS=nocheck

## source binutils
apt-get source binutils
(cd binutils-2.24 && \
  WITH_SYSROOT=/ TARGET=or1k-linux-gnu dpkg-buildpackage -b)
