#!/bin/bash

input=$(readlink -f ${1?})
cd ~/or1k-debian
git pull

cd /tmp
mkdir -p to-build building built

for pkg in $(<$input)
do
	touch to-build/$pkg
done

ln -sf ~/or1k-debian/builder/builder.sh /tmp/builder.sh
for i in $(seq 1 8)
do
	screen -dmS builder-$i ./builder.sh
done
