#! /bin/bash

set -e

# TODO: use dpkg-architecture
BUILD="amd64"
TARGET="or1k"

UPSTREAM="http://snapshot.debian.org/archive/debian/20140112T221115Z/"
SUITE="unstable"

PREFIX_CHROOT="sbuild-${TARGET}"
CHROOT="${PREFIX_CHROOT}-${BUILD}"

mk-sbuild \
  --arch=${BUILD} \
  --name=${PREFIX_CHROOT} \
  --source-template="$PWD/sources.list.or1k" \
  --debootstrap-mirror=${UPSTREAM} ${SUITE}

sudo schroot -c source:${CHROOT} -u root -d / -- dpkg --add-architecture ${TARGET}
sudo schroot -c source:${CHROOT} -u root -d / -- tee /etc/apt/apt.conf.d/80bootstrap << EOF
Acquire::Check-Valid-Until false;
APT::Get::AllowUnauthenticated true;
EOF

sudo schroot -c source:${CHROOT} -u root -d / -- apt-get update
# TODO:
#sudo schroot -c source:${CHROOT} -u root -d / -- apt-get install $toolchain_packages

exit 0
