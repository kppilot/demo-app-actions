#!/bin/bash

SOURCE=$1
DEST=$2

whoami

aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 628034938073.dkr.ecr..amazonaws.com
sudo docker --version
sudo docker pull $SOURCE
sudo docker tag $SOURCE $DEST
sudo docker push $DEST