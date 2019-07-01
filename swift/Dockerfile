FROM resin/rpi-raspbian:stretch

ENV APP_ROOT /usr/src
WORKDIR $APP_ROOT
ADD . $APP_ROOT

RUN apt-get update
RUN apt-get install libxml2-dev git

# install swift4
# https://packagecloud.io/swift-arm/release/packages/raspbian/stretch/swift4_4.2.3_armhf.deb
RUN curl -s https://packagecloud.io/install/repositories/swift-arm/release/script.deb.sh | sudo bash
RUN apt-get install swift4=4.2.3
