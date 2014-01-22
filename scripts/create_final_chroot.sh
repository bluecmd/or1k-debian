#! /bin/bash

set -e

# TODO: use dpkg-architecture
BUILD="amd64"
TARGET="or1k"

UPSTREAM="http://snapshot.debian.org/archive/debian/20140112T221115Z/"
SUITE="unstable"

PREFIX_CHROOT="final-${TARGET}"
CHROOT="${PREFIX_CHROOT}-${BUILD}"

mk-sbuild \
  --arch=${BUILD} \
  --name=${PREFIX_CHROOT} \
  --debootstrap-mirror=${UPSTREAM} ${SUITE}

cd $(dirname $0)
sudo schroot -c source:${CHROOT} -u root -d / -- $PWD/setup_final_chroot.sh

exit 0
