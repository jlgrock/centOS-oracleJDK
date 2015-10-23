#!/bin/sh

# load the versions
. ./loadenv.sh

echo "Processing for CentOS + JDK - Version $CENTOS-$JDK" 

# Build the image
docker build -q --rm -t jlgrock/centos-oraclejdk:$CENTOS-$JDK .

if [ $? -eq 0 ]; then
    echo "Container Successfully Built"
else
    echo "Error: Unable to Build Container"
fi
