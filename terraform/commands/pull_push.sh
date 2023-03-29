#!/bin/bash

SOURCE=$1
DEST=$2


sudo docker pull $SOURCE
sudo docker tag $SOURCE $DEST
docker login -u AWS -p $(aws ecr get-login-password --region ap-northeast-2) 628034938073.dkr.ecr.us-east-1.amazonaws.com
sudo docker push $DEST