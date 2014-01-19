#!/bin/sh

set -e

apt-get install dpkg
dpkg --add-architecture or1k

apt-get update
apt-get build-dep -y eglibc

export DEB_BUILD_OPTIONS=nocheck

apt-get source eglibc
cd eglibc-2.18
dpkg-buildpackage -d -us -uc

