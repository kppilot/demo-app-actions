#!/bin/bash

SOURCE=$1
DEST=$2

bash curl -sSL https://get.docker.com/ | sudo sh
bash docker login -u sheikh111 -p Play4m33@
bash docker pull $SOURCE
bash docker tag $SOURCE $DEST
bash docker push $DEST