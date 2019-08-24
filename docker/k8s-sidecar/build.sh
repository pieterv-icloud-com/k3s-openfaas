#!/bin/sh

echo "Building pietervicloudcom/k8-sidecar-armhf:python3-7-slim-armhf"
docker buildx build --push --platform linux/arm/v7 -t pietervicloudcom/k8-sidecar-armhf:python3-7-slim-armhf .


