#!/bin/sh

# load the versions
/bin/sh ./loadenv.sh

# Publish the image
/bin/sh ./build.sh

# Build the image
docker push jlgrock/centos-oraclejdk:$CENTOS-$JDK

if [ $? -eq 0 ]; then
    echo "Image Successfully Published with tag $CENTOS-$JDK"
else
    echo "Error: Unable to Publish Image"
fi
