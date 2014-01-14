  #!/bin/bash

set -e

export DEBFULLNAME='Christian Svensson'
export DEBEMAIL='blue@cmd.nu'

TARGET="${TARGET:-or1k}"
BUILD=$(dpkg-architecture -qDEB_BUILD_ARCH)
CHROOT=sbuild-scripts-test-${TARGET}-${BUILD}

if [ -f $1 ]; then
  echo 'Patch file detected, deriving package and version from it'
  PACKAGE=$(basename $1 | cut -f 1 -d '-')
  VERSION=$(basename $1 | cut -f 2 -d '-' | sed 's/\.[a-z0-9]*$//')
  USING_PATCH_FILE='yes'
  PATCH_FILE=$(readlink -f $1)
else
  PACKAGE=$1
  VERSION=$2
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

if [ -d ${PACKAGE}-${VERSION}*/ ]; then
  echo 'Directory exists, cleaning'
  sleep 2
  rm -r ${PACKAGE}-${VERSION}*/
fi


apt-get source -o Dir::Etc::sourcelist=./sources.list $PACKAGE
cd ${PACKAGE}-${VERSION}

if [ "${USING_PATCH_FILE:-no}" = 'no' ]; then
  echo 'Launching shell, exit when you have patched the source. Use "exit 1" to abort.'
  ${SHELL}

  dch -i
  dch -r ''
else
  patch -p1 < ${PATCH_FILE}
fi

dpkg-source --commit
dpkg-buildpackage -S -uc -us -sa -d
NEW_VERSION=$(dpkg-parsechangelog | grep -E 'Version: .*'${VERSION} | head -n 1 \
  | cut -d ' ' -f 2 | sed 's/[0-9]://')

cd ..

NEW_DSC=${PACKAGE}_${NEW_VERSION}.dsc

if [ "${USING_PATCH_FILE:-no}" = 'no' ]; then
  echo 'Saving patch. You can use this as the first argument for automation.'
  debdiff ${PACKAGE}_${FULL_VERSION}.dsc ${NEW_DSC} > ../patches/${PACKAGE}-${VERSION}.patch || true
fi

sbuild -c ${CHROOT} -A --arch=${BUILD} --host=${TARGET} -d unstable ${NEW_DSC}

