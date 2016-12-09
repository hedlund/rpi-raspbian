#!/bin/bash

set -e

docker build -t hedlund/rpi-raspbian:latest .
docker push hedlund/rpi-raspbian:latest
