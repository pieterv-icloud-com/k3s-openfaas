#!/bin/sh

echo "Building pietervicloudcom/octant-armhf:v0.5.1"
docker buildx build --push --platform linux/arm/v7 -t pietervicloudcom/octant-armhf:v0.5.1 .


