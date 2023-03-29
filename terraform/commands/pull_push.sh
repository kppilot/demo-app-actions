#!/bin/bash

SOURCE=$1
DEST=$2


sudo docker pull $SOURCE
sudo docker tag $SOURCE $DEST
eval $(aws ecr get-login-password --region ap-northeast-2 | sed 's|https://||') |  docker login --username AWS --password-stdin 628034938073.dkr.ecr.ap-northeast-2.amazonaws.com
sudo docker push $DEST