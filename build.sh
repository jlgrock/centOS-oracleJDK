#!/bin/sh

# Load the version from the VERSION file
for line in $(< VERSION)
do
  case $line in
    CENTOS=*)  eval $line ;; # beware! eval!
	JDK=*)  eval $line ;; # beware! eval!
    *) ;;
   esac
done
echo "Processing for CentOS + JDK - Version $CENTOS-$JDK" 

# Build the image
docker build -q --rm -t jlgrock/centos-oraclejdk:$CENTOS-$JDK .

if [ $? -eq 0 ]; then
    echo "Container Successfully Built"
else
    echo "Error: Unable to Build Container"
fi
