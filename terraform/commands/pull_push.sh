#!/bin/bash

SOURCE=$1
DEST=$2
aws --region ap-northeast-2 ecr get-login-password \
    | docker login \
        --password-stdin \
        --username AWS \
        "628034938073.dkr.ecr.ap-northeast-2.amazonaws.com"
sudo docker pull $SOURCE
sudo docker tag $SOURCE $DEST
sudo docker push $DEST