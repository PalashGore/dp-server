#!/bin/bash: 
VERSION=$1

if [[ -n "$VERSION" ]]; then
    VERSION=$1
else
    VERSION=latest
fi

echo "Building docker image with tag :$VERSION"
cd C:/projects/dp/dp-server
docker build -t gcr.io/cloudpark-e6cc4/dp-server:$VERSION .
gcloud docker -- push gcr.io/cloudpark-e6cc4/dp-server:$VERSION