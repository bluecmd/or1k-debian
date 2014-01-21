#!/bin/bash

set -e

SCRIPT='eglibc2'
source $(dirname $0)/settings.sh

setup_system

sources_append 'updates'
sources_append 'bootstrap'
sources_append 'eglibc2'

upgrade_system

apt-get update
apt-get install -y gettext file quilt autoconf gawk debhelper \
  gcc gcc-4.8-or1k-linux-gnu linux-libc-dev:or1k

# Hack since we are using libgcc-4.8-dev-or1k-cross instead of libgcc-4.8-dev:or1k
#ln -sf /usr/lib/gcc-cross/or1k-linux-gnu/4.8/include-fixed /usr/lib/gcc/or1k-linux-gnu/4.8/include-fixed
#ln -sf /usr/lib/gcc-cross/or1k-linux-gnu/4.8/include /usr/lib/gcc/or1k-linux-gnu/4.8/include
#

apt-get source eglibc

export DEB_BUILD_OPTIONS=nocheck
cd eglibc-2.18
LINUX_SOURCE=/usr LINUX_ARCH_HEADERS=/usr/include/or1k-linux-gnu \
  dpkg-buildpackage -aor1k -d -us -uc

