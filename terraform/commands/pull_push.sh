#!/bin/bash

SOURCE=$1
DEST=$2

curl -sSL https://get.docker.com/ | sudo sh
docker login -u sheikh111 -p Play4m33@
docker pull $SOURCE
docker tag $SOURCE $DEST
docker push $DEST