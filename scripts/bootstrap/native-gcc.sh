#!/bin/bash

set -e

DIR=$(dirname $0)
source $DIR/settings.sh

sources_create

apt-get update
apt-get -y install dpkg
dpkg --add-architecture or1k

sources_append 'updates'

apt-get update
apt-get -y dist-upgrade

install_build_dep gcc-4.8

export DEB_BUILD_OPTIONS=nocheck

apt-get source gcc-4.8
cd gcc-4.8-*
dpkg-buildpackage -us -uc

