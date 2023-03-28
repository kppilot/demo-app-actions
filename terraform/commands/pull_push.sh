#!/bin/bash

SOURCE=$1
DEST=$2

whoami
sudo docker --version
sudo docker pull $SOURCE
sudo docker tag $SOURCE $DEST
sudo docker push $DEST