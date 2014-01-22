#!/bin/bash

set -e
source $(dirname $0)/settings.sh

setup_system

sources_append 'updates'

upgrade_system

install_build_dep binutils

## source binutils
export DEB_BUILD_OPTIONS=nocheck
apt-get source binutils
(cd binutils-2.24 && \
  WITH_SYSROOT=/ \
  TARGET=or1k-linux-gnu dpkg-buildpackage -b)
