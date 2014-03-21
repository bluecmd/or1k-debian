#!/bin/sh

cd $(dirname $0)
while [ true ]
do
	file=$(ls -tr to-build/* | head -n1)
	package=$(basename $file)
	if ! mv $file building/; then
		echo 'File $file already taken'
		continue
	fi
	echo "Building $package" | logger
	# Update the timestamp
	touch building/$package
	~/building/build.sh $package || mv building/$package $file

	mv building/$package built/
	sleep 1
done
