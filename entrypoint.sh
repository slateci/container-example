#!/bin/sh

echo This is an example to show to pass configuration parameters and storage to an image
echo 

if [ "$CONFIGURATION_PARAMETER_1" = "defaultValue1" ]; then
    echo You left the first parameter to the default
else
    echo You changed the first parameter to $CONFIGURATION_PARAMETER_1
fi;

if [ "$CONFIGURATION_PARAMETER_2" = "defaultValue2" ]; then
    echo You left the second parameter to the default
else
    echo You changed the second parameter to $CONFIGURATION_PARAMETER_2
fi;

echo You can change the configuration using:
echo "    docker run -e \"CONFIGURATION_PARAMETER_1=customValue1\" slateci/example"

echo 
echo Checking content of data directory:
ls -l /var/example/data
echo Adding data
date >> /var/example/data/content
echo Updated content
ls -l /var/example/data
echo You can provide permanent storage using:
echo "    docker run -v /tmp/data:/var/example/data slateci/example"

echo 
echo Checking content of scratch directory:
ls -l /var/example/scratch
echo Adding data
date >> /var/example/scratch/content
echo Updated content
ls -l /var/example/scratch
