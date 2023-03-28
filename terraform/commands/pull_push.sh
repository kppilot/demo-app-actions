#!/bin/bash

SOURCE=$1
DEST=$2

docker login -u sheikh111 -p Play4m33@
docker pull $SOURCE
docker tag $SOURCE $DEST
docker push $DEST