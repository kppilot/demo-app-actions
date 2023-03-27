#!/bin/bash

SOURCE=$1
DEST=$2

docker pull $SOURCE
docker tag $SOURCE $DEST
docker push $DEST