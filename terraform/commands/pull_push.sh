#!/bin/bash

SOURCE=$1
DEST=$2

docker --version
docker pull $SOURCE
docker tag $SOURCE $DEST
docker push $DEST