#!/bin/sh

echo "Building pietervicloudcom/k8-sidecar-armhf:0.0.18"
docker buildx build --push --platform linux/arm/v7 -t pietervicloudcom/k8-sidecar-armhf:0.0.18 .


