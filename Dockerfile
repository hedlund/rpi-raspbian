FROM resin/rpi-raspbian
MAINTAINER Henrik Hedlund <henrik@hedlund.im>

ENV ARCH=arm
ENV CROSS_COMPILE=/usr/bin/

# Configure a few things and install some some tools
RUN echo "Europe/Oslo" > /etc/timezone && \
	apt-get update && apt-get install -y build-essential libudev-dev git wget ssh && \
	echo "deb http://download.telldus.com/debian/ stable main" >> /etc/apt/sources.list.d/telldus.list && \
    wget -qO - http://download.telldus.se/debian/telldus-public.key | apt-key add - && \
    apt-get update && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
