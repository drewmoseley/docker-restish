#!/bin/sh
#

docker buildx build --push --platform linux/amd64,linux/arm64 -t drewmoseley/restish:latest .
