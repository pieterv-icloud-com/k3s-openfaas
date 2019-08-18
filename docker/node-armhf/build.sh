#!/bin/sh

echo "Building pietervicloudcom/hello-world-armhf:node-6.9.1-alpine-armhf"
docker buildx build --push --platform linux/arm/v7 -t pietervicloudcom/hello-world-armhf:node-6.9.1-alpine-armhf .


