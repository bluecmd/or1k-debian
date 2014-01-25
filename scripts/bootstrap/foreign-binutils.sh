#!/bin/bash

set -e
SCRIPT='foreign-binutils'
source $(dirname $0)/../settings.sh

setup_system

sources_append 'updates'
sources_append 'final'

upgrade_system

install_build_dep binutils
apt-get install -y zlib1g-dev:or1k

## source binutils
export DEB_BUILD_OPTIONS=nocheck
apt-get source binutils
(cd binutils-2.24 && \
  WITH_SYSROOT=/ dpkg-buildpackage -b -aor1k -d)
