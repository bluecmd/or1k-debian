#!/bin/sh

cd $(dirname $0)

mkdir -p .lists

PACKAGE=${1?}

APT_OPTS="-o Dir::State::Lists=./.lists -o Dir::Etc::sourcelist=./sources.list"

echo "Please ignore any lock related errors below, it's irrelevant"
apt-get update $APT_OPTS

PACKAGE=$(apt-cache showsrc $APT_OPTS $PACKAGE \
  | grep 'Package: ' | head -n 1 | cut -d ' ' -f 2)

FULL_VERSION=$(apt-cache showsrc $APT_OPTS $PACKAGE \
  | grep -E 'Version: .*'${VERSION} | grep -v 'Standard' | sort -r \
  | head -n 1 | cut -d ' ' -f 2)

echo "Really using package '${PACKAGE}' version '${FULL_VERSION}'"
sleep 2

DEB_BUILD_OPTS=nocheck DEB_BUILD_OPTIONS=nocheck sbuild --no-arch-all -d unstable -c unstable-or1k --arch or1k ${PACKAGE}_${FULL_VERSION}
