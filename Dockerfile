FROM alpine
MAINTAINER carcassi@umich.edu

ENV CONFIGURATION_PARAMETER_1=defaultValue1 \
    CONFIGURATION_PARAMETER_2=defaultValue2

COPY entrypoint.sh /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]