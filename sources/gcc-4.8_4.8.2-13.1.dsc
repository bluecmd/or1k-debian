Format: 1.0
Source: gcc-4.8
Binary: gcc-4.8-base, libgcc1, libgcc1-dbg, libgcc2, libgcc2-dbg, libgcc-4.8-dev, libgcc4, libgcc4-dbg, lib64gcc1, lib64gcc1-dbg, lib64gcc-4.8-dev, lib32gcc1, lib32gcc1-dbg, lib32gcc-4.8-dev, libn32gcc1, libn32gcc1-dbg, libn32gcc-4.8-dev, libx32gcc1, libx32gcc1-dbg, libx32gcc-4.8-dev, gcc-4.8, gcc-4.8-multilib, gcc-4.8-plugin-dev, gcc-4.8-hppa64, cpp-4.8, gcc-4.8-locales, g++-4.8, g++-4.8-multilib, libgomp1, libgomp1-dbg, lib32gomp1, lib32gomp1-dbg, lib64gomp1, lib64gomp1-dbg, libn32gomp1, libn32gomp1-dbg, libx32gomp1, libx32gomp1-dbg, libitm1, libitm1-dbg, lib32itm1, lib32itm1-dbg, lib64itm1, lib64itm1-dbg, libn32itm1, libn32itm1-dbg, libx32itm1, libx32itm1-dbg, libatomic1, libatomic1-dbg, lib32atomic1, lib32atomic1-dbg, lib64atomic1, lib64atomic1-dbg, libn32atomic1, libn32atomic1-dbg, libx32atomic1, libx32atomic1-dbg, libasan0, libasan0-dbg, lib32asan0, lib32asan0-dbg, lib64asan0, lib64asan0-dbg, libn32asan0, libn32asan0-dbg, libx32asan0, libx32asan0-dbg, libtsan0,
 libtsan0-dbg, libquadmath0, libquadmath0-dbg, lib32quadmath0, lib32quadmath0-dbg, lib64quadmath0, lib64quadmath0-dbg, libn32quadmath0, libn32quadmath0-dbg, libx32quadmath0, libx32quadmath0-dbg, gobjc++-4.8, gobjc++-4.8-multilib, gobjc-4.8, gobjc-4.8-multilib, libobjc-4.8-dev, lib64objc-4.8-dev, lib32objc-4.8-dev, libn32objc-4.8-dev, libx32objc-4.8-dev, libobjc4, libobjc4-dbg, lib64objc4, lib64objc4-dbg, lib32objc4, lib32objc4-dbg, libn32objc4, libn32objc4-dbg, libx32objc4, libx32objc4-dbg, gfortran-4.8, gfortran-4.8-multilib, libgfortran-4.8-dev, lib64gfortran-4.8-dev, lib32gfortran-4.8-dev, libn32gfortran-4.8-dev, libx32gfortran-4.8-dev, libgfortran3, libgfortran3-dbg, lib64gfortran3, lib64gfortran3-dbg, lib32gfortran3, lib32gfortran3-dbg, libn32gfortran3, libn32gfortran3-dbg, libx32gfortran3, libx32gfortran3-dbg, gccgo-4.8, gccgo-4.8-multilib, libgo4, libgo4-dbg, lib64go4, lib64go4-dbg, lib32go4, lib32go4-dbg, libn32go4, libn32go4-dbg, libx32go4, libx32go4-dbg,
 gcj-4.8, gcj-4.8-jdk, gcj-4.8-jre-headless, gcj-4.8-jre, libgcj14, gcj-4.8-jre-lib, libgcj14-awt, libgcj14-dev, libgcj14-dbg, gcj-4.8-source, libgcj-doc, libstdc++6, lib32stdc++6, lib64stdc++6, libn32stdc++6, libx32stdc++6, libstdc++-4.8-dev, libstdc++-4.8-pic, libstdc++6-4.8-dbg, lib32stdc++-4.8-dev, lib32stdc++6-4.8-dbg, lib64stdc++-4.8-dev, lib64stdc++6-4.8-dbg, libn32stdc++-4.8-dev, libn32stdc++6-4.8-dbg, libx32stdc++-4.8-dev, libx32stdc++6-4.8-dbg, libstdc++-4.8-doc, gdc-4.8, libphobos-4.8-dev, libphobos-4.8-dbg, gcc-4.8-soft-float, fixincludes,
 gcc-4.8-source
Architecture: any all
Version: 4.8.2-13.1
Maintainer: Debian GCC Maintainers <debian-gcc@lists.debian.org>
Uploaders: Matthias Klose <doko@debian.org>
Homepage: http://gcc.gnu.org/
Standards-Version: 3.9.4
Vcs-Browser: http://svn.debian.org/viewsvn/gcccvs/branches/sid/gcc-4.8/
Vcs-Svn: svn://svn.debian.org/svn/gcccvs/branches/sid/gcc-4.8
Build-Depends: debhelper (>= 5.0.62), g++-multilib [amd64 i386 kfreebsd-amd64 mips mips64 mips64el mipsel mipsn32 mipsn32el powerpc ppc64 s390 s390x sparc sparc64 x32], libc6.1-dev (>= 2.13-5) [alpha ia64] | libc0.3-dev (>= 2.13-5) [hurd-i386] | libc0.1-dev (>= 2.13-5) [kfreebsd-i386 kfreebsd-amd64] | libc6-dev (>= 2.13-5), libc6-dev (>= 2.13-31) [armel armhf], libc6-dev-amd64 [i386 x32], libc6-dev-sparc64 [sparc], libc6-dev-sparc [sparc64], libc6-dev-s390 [s390x], libc6-dev-s390x [s390], libc6-dev-i386 [amd64 x32], libc6-dev-powerpc [ppc64], libc6-dev-ppc64 [powerpc], libc0.1-dev-i386 [kfreebsd-amd64], lib32gcc1 [amd64 ppc64 kfreebsd-amd64 mipsn32 mipsn32el mips64 mips64el s390x sparc64 x32], libn32gcc1 [mips mipsel mips64 mips64el], lib64gcc1 [i386 mips mipsel mipsn32 mipsn32el powerpc sparc s390 x32], libc6-dev-mips64 [mips mipsel mipsn32 mipsn32el], libc6-dev-mipsn32 [mips mipsel mips64 mips64el], libc6-dev-mips32 [mipsn32 mipsn32el mips64 mips64el], libc6-dev-x32 [amd64 i386], libx32gcc1 [amd64 i386], libc6.1-dbg [alpha ia64] | libc0.3-dbg [hurd-i386] | libc0.1-dbg [kfreebsd-i386 kfreebsd-amd64] | libc6-dbg, kfreebsd-kernel-headers (>= 0.84) [kfreebsd-any], m4, libtool, autoconf2.64, libunwind7-dev (>= 0.98.5-6) [ia64], libatomic-ops-dev [ia64], zlib1g-dev, gawk, lzma, xz-utils, patchutils, binutils (>= 2.23.52) | binutils-multiarch (>= 2.23.52), binutils-hppa64 (>= 2.23.52) [hppa], gperf (>= 3.0.1), bison (>= 1:2.3), flex, gettext, texinfo (>= 4.3), locales, sharutils, procps, libantlr-java, python, libffi-dev, fastjar, libmagic-dev, libecj-java (>= 3.3.0-2), zip, libasound2-dev [!hurd-any !kfreebsd-any], libxtst-dev, libxt-dev, libgtk2.0-dev (>= 2.4.4-2), libart-2.0-dev, libcairo2-dev, g++-4.8 [armel armhf], netbase, libcloog-isl-dev (>= 0.18), libmpc-dev (>= 1.0), libmpfr-dev (>= 3.0.0-9~), libgmp-dev (>= 2:5.0.1~), dejagnu [!m68k !hurd-amd64 !hurd-i386 !hurd-alpha], autogen, realpath (>= 1.9.12), chrpath, lsb-release, quilt
Build-Depends-Indep: doxygen (>= 1.7.2), graphviz (>= 2.2), ghostscript, texlive-latex-base, xsltproc, libxml2-utils, docbook-xsl-ns
Package-List: 
 cpp-4.8 deb interpreters optional
 fixincludes deb devel optional
 g++-4.8 deb devel optional
 g++-4.8-multilib deb devel optional
 gcc-4.8 deb devel optional
 gcc-4.8-base deb libs required
 gcc-4.8-hppa64 deb devel optional
 gcc-4.8-locales deb devel optional
 gcc-4.8-multilib deb devel optional
 gcc-4.8-plugin-dev deb devel optional
 gcc-4.8-soft-float deb devel optional
 gcc-4.8-source deb devel optional
 gccgo-4.8 deb devel optional
 gccgo-4.8-multilib deb devel optional
 gcj-4.8 deb java optional
 gcj-4.8-jdk deb java optional
 gcj-4.8-jre deb java optional
 gcj-4.8-jre-headless deb java optional
 gcj-4.8-jre-lib deb java optional
 gcj-4.8-source deb java optional
 gdc-4.8 deb devel optional
 gfortran-4.8 deb devel optional
 gfortran-4.8-multilib deb devel optional
 gobjc++-4.8 deb devel optional
 gobjc++-4.8-multilib deb devel optional
 gobjc-4.8 deb devel optional
 gobjc-4.8-multilib deb devel optional
 lib32asan0 deb libs optional
 lib32asan0-dbg deb debug extra
 lib32atomic1 deb libs optional
 lib32atomic1-dbg deb debug extra
 lib32gcc-4.8-dev deb libdevel optional
 lib32gcc1 deb libs extra
 lib32gcc1-dbg deb debug extra
 lib32gfortran-4.8-dev deb libdevel optional
 lib32gfortran3 deb libs optional
 lib32gfortran3-dbg deb debug extra
 lib32go4 deb libs optional
 lib32go4-dbg deb debug extra
 lib32gomp1 deb libs optional
 lib32gomp1-dbg deb debug extra
 lib32itm1 deb libs optional
 lib32itm1-dbg deb debug extra
 lib32objc-4.8-dev deb libdevel optional
 lib32objc4 deb libs optional
 lib32objc4-dbg deb debug extra
 lib32quadmath0 deb libs optional
 lib32quadmath0-dbg deb debug extra
 lib32stdc++-4.8-dev deb libdevel optional
 lib32stdc++6 deb libs extra
 lib32stdc++6-4.8-dbg deb debug extra
 lib64asan0 deb libs optional
 lib64asan0-dbg deb debug extra
 lib64atomic1 deb libs optional
 lib64atomic1-dbg deb debug extra
 lib64gcc-4.8-dev deb libdevel optional
 lib64gcc1 deb libs optional
 lib64gcc1-dbg deb debug extra
 lib64gfortran-4.8-dev deb libdevel optional
 lib64gfortran3 deb libs optional
 lib64gfortran3-dbg deb debug extra
 lib64go4 deb libs optional
 lib64go4-dbg deb debug extra
 lib64gomp1 deb libs optional
 lib64gomp1-dbg deb debug extra
 lib64itm1 deb libs optional
 lib64itm1-dbg deb debug extra
 lib64objc-4.8-dev deb libdevel optional
 lib64objc4 deb libs optional
 lib64objc4-dbg deb debug extra
 lib64quadmath0 deb libs optional
 lib64quadmath0-dbg deb debug extra
 lib64stdc++-4.8-dev deb libdevel optional
 lib64stdc++6 deb libs optional
 lib64stdc++6-4.8-dbg deb debug extra
 libasan0 deb libs optional
 libasan0-dbg deb debug extra
 libatomic1 deb libs optional
 libatomic1-dbg deb debug extra
 libgcc-4.8-dev deb libdevel optional
 libgcc1 deb libs required
 libgcc1-dbg deb debug extra
 libgcc2 deb libs required
 libgcc2-dbg deb debug extra
 libgcc4 deb libs required
 libgcc4-dbg deb debug extra
 libgcj-doc deb doc optional
 libgcj14 deb libs optional
 libgcj14-awt deb libs optional
 libgcj14-dbg deb debug extra
 libgcj14-dev deb libdevel optional
 libgfortran-4.8-dev deb libdevel optional
 libgfortran3 deb libs optional
 libgfortran3-dbg deb debug extra
 libgo4 deb libs optional
 libgo4-dbg deb debug extra
 libgomp1 deb libs optional
 libgomp1-dbg deb debug extra
 libitm1 deb libs optional
 libitm1-dbg deb debug extra
 libn32asan0 deb libs extra
 libn32asan0-dbg deb debug extra
 libn32atomic1 deb libs optional
 libn32atomic1-dbg deb debug extra
 libn32gcc-4.8-dev deb libdevel optional
 libn32gcc1 deb libs optional
 libn32gcc1-dbg deb debug extra
 libn32gfortran-4.8-dev deb libdevel optional
 libn32gfortran3 deb libs optional
 libn32gfortran3-dbg deb debug extra
 libn32go4 deb libs optional
 libn32go4-dbg deb debug extra
 libn32gomp1 deb libs optional
 libn32gomp1-dbg deb debug extra
 libn32itm1 deb libs optional
 libn32itm1-dbg deb debug extra
 libn32objc-4.8-dev deb libdevel optional
 libn32objc4 deb libs optional
 libn32objc4-dbg deb debug extra
 libn32quadmath0 deb libs optional
 libn32quadmath0-dbg deb debug extra
 libn32stdc++-4.8-dev deb libdevel optional
 libn32stdc++6 deb libs optional
 libn32stdc++6-4.8-dbg deb debug extra
 libobjc-4.8-dev deb libdevel optional
 libobjc4 deb libs optional
 libobjc4-dbg deb debug extra
 libphobos-4.8-dbg deb debug extra
 libphobos-4.8-dev deb libdevel optional
 libquadmath0 deb libs optional
 libquadmath0-dbg deb debug extra
 libstdc++-4.8-dev deb libdevel optional
 libstdc++-4.8-doc deb doc optional
 libstdc++-4.8-pic deb libdevel extra
 libstdc++6 deb libs important
 libstdc++6-4.8-dbg deb debug extra
 libtsan0 deb libs optional
 libtsan0-dbg deb debug extra
 libx32asan0 deb libs optional
 libx32asan0-dbg deb debug extra
 libx32atomic1 deb libs optional
 libx32atomic1-dbg deb debug extra
 libx32gcc-4.8-dev deb libdevel optional
 libx32gcc1 deb libs optional
 libx32gcc1-dbg deb debug extra
 libx32gfortran-4.8-dev deb libdevel optional
 libx32gfortran3 deb libs optional
 libx32gfortran3-dbg deb debug extra
 libx32go4 deb libs optional
 libx32go4-dbg deb debug extra
 libx32gomp1 deb libs optional
 libx32gomp1-dbg deb debug extra
 libx32itm1 deb libs optional
 libx32itm1-dbg deb debug extra
 libx32objc-4.8-dev deb libdevel optional
 libx32objc4 deb libs optional
 libx32objc4-dbg deb debug extra
 libx32quadmath0 deb libs optional
 libx32quadmath0-dbg deb debug extra
 libx32stdc++-4.8-dev deb libdevel optional
 libx32stdc++6 deb libs optional
 libx32stdc++6-4.8-dbg deb debug extra
Checksums-Sha1: 
 0341eda320c1cd19bf069f8ab092c131017399d3 70155824 gcc-4.8_4.8.2.orig.tar.gz
 2df31055edc2cdaa29bf541cd4b5ca976ed6331b 1415847 gcc-4.8_4.8.2-13.1.diff.gz
Checksums-Sha256: 
 c8b2236f6e18ca0bb239def5e65535bf44000ab887abaa99909cc12618ed2b05 70155824 gcc-4.8_4.8.2.orig.tar.gz
 e52dad56e1e7a3a84a1725130ad909e6576104ad193f0defe9c7279051f94a94 1415847 gcc-4.8_4.8.2-13.1.diff.gz
Files: 
 3e790e24ce1220c381aedac5a19d0b86 70155824 gcc-4.8_4.8.2.orig.tar.gz
 ea636bd094beffe60db2bb48f116de6e 1415847 gcc-4.8_4.8.2-13.1.diff.gz
