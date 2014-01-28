Format: 1.0
Source: binutils
Binary: binutils, binutils-dev, binutils-multiarch, binutils-hppa64, binutils-spu, binutils-doc, binutils-source
Architecture: any all
Version: 2.24-2.1
Maintainer: Matthias Klose <doko@debian.org>
Uploaders: James Troup <james@nocrew.org>, Daniel Jacobowitz <dan@debian.org>
Standards-Version: 3.9.5
Vcs-Browser: https://code.launchpad.net/~doko/binutils/pkg-2.24-debian
Vcs-Bzr: http://bazaar.launchpad.net/~doko/binutils/pkg-2.24-debian
Build-Depends: autoconf (>= 2.64), bison, flex, gettext, texinfo, dejagnu, quilt, python3:any, file, xz-utils, lsb-release, zlib1g-dev
Package-List: 
 binutils deb devel optional
 binutils-dev deb devel extra
 binutils-doc deb doc optional
 binutils-hppa64 deb devel optional
 binutils-multiarch deb devel extra
 binutils-source deb devel optional
 binutils-spu deb devel optional
Checksums-Sha1: 
 9f81e4883e0445efb2a875683fb7e9fae2de6877 32027275 binutils_2.24.orig.tar.gz
 b66cbc78218ecac8c53d4d9563a8ba207c68ce8a 248217 binutils_2.24-2.1.diff.gz
Checksums-Sha256: 
 4d7fa637d927cee57c68701a4ec98b1ba988c93b78b6a38c5425d1501070083b 32027275 binutils_2.24.orig.tar.gz
 3aeeb3666698cbf509bd96c7bbfaf66195b6ddf91dd932e65a98f94b34010e26 248217 binutils_2.24-2.1.diff.gz
Files: 
 0e2dcbaec7c96d60687440ca98816e10 32027275 binutils_2.24.orig.tar.gz
 0e0c9bf0a46c774dd7722813a1183ed9 248217 binutils_2.24-2.1.diff.gz
Testsuite: autopkgtest
