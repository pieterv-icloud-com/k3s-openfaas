#!/bin/sh

echo "Building pietervicloudcom/functions/hello-world:node-6.9.1-alpine"
docker buildx build --push --platform linux/amd64,linux/arm64,linux/arm/v7 -t pietervicloudcom/functions/hello-world:node-6.9.1-alpine .

