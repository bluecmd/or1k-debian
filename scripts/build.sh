  #!/bin/bash

set -e

TARGET="${TARGET:-or1k}"
BUILD=$(dpkg-architecture -qDEB_BUILD_ARCH)
CHROOT=sbuild-scripts-test-${TARGET}-${BUILD}

PACKAGE=$1
VERSION=$2

if [ -d workdir/${PACKAGE}-${VERSION}* ]; then
  echo 'Directory exists, press enter to remove'
  rm -r workdir/${PACKAGE}-${VERSION}*
fi

mkdir -p workdir/
cd workdir/

sudo apt-get update -o Dir::Etc::sourcelist=./sources.list
PACKAGE=$(apt-cache showsrc -o Dir::Etc::sourcelist=./sources.list $PACKAGE \
  | grep 'Package: ' | head -n 1 | cut -d ' ' -f 2)

FULL_VERSION=$(apt-cache showsrc -o Dir::Etc::sourcelist=./sources.list $PACKAGE \
  | grep -E 'Version: .*'${VERSION} | grep -v 'Standard' | sort -r \
  | head -n 1 | cut -d ' ' -f 2 | sed 's/[0-9]://')

VERSION=$(echo ${FULL_VERSION} | sed 's/-[A-Za-z0-9+.~]*$//')

echo "Really using package '${PACKAGE}' version '${VERSION}'"
sleep 2

apt-get source -o Dir::Etc::sourcelist=./sources.list $PACKAGE
sbuild -c ${CHROOT} -A --arch=${BUILD} --host=${TARGET} -d unstable ${PACKAGE}_${FULL_VERSION}.dsc

