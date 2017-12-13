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
