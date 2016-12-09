FROM resin/rpi-raspbian
MAINTAINER Henrik Hedlund <henrik@hedlund.im>

ENV ARCH=arm
ENV CROSS_COMPILE=/usr/bin/

# Update and install python & some other tools
RUN echo "Europe/Oslo" > /etc/timezone && \
	apt-get update && \
    apt-get install -y build-essential python3-dev python3-pip cython3 libudev-dev python3-sphinx python3-setuptools git wget ssh && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
