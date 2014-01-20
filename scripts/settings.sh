#!/bin/bash

function setup_system() {
  WORKDIR=/srv/build-script/${SCRIPT?}
  echo "Changing directry to ${WORKDIR}"
  mkdir -p ${WORKDIR}
  cd ${WORKDIR}

  rm -f *.deb

  sources_create

  apt-get update
  apt-get -y install dpkg
  dpkg --add-architecture or1k
}

function upgrade_system() {
  apt-get update
  apt-get -y dist-upgrade
}

function sources_create() {
  cat > /etc/apt/sources.list << _EOF_
deb [arch=amd64] http://snapshot.debian.org/archive/debian/20140112T221115Z/ unstable main
deb-src http://snapshot.debian.org/archive/debian/20140112T221115Z/ unstable main
_EOF_
}

function sources_append() {
  cat >> /etc/apt/sources.list << _EOF_
deb http://localhost/~bluecmd/repositories/$1 unstable main
deb-src http://localhost/~bluecmd/repositories/$1 unstable main
_EOF_
}

function sources_append_or1k() {
  cat >> /etc/apt/sources.list << _EOF_
deb [arch=or1k] http://localhost/~bluecmd/repositories/$1 unstable main
_EOF_
}

function install_build_dep() {
  apt-get -o Dpkg::Options::="--force-confold" \
    build-dep -y --no-install-recommends $*
}
