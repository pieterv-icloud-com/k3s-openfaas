#!/bin/sh

echo "Building pietervicloudcom/kube-webhook-certgen-armhf:v1.0.0"
docker buildx build --push --platform linux/arm/v7 -t pietervicloudcom/kube-webhook-certgen-armhf:v1.0.0 .


