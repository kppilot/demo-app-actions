#!/bin/bash


SOURCE=$1
DEST=$2

echo $SOURCE
echo $DEST

sudo usermod -aG docker runner
sudo docker pull $SOURCE 
sudo docker tag $SOURCE 628034938073.dkr.ecr.ap-northeast-2.amazonaws.com/ecs_deploy_gh_actions-myservice:v23.0.1
echo $(aws ecr get-login-password --region ap-northeast-2)
aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 628034938073.dkr.ecr.ap-northeast-2.amazonaws.com
cat ~/.docker/config.json
sudo docker push 628034938073.dkr.ecr.ap-northeast-2.amazonaws.com/ecs_deploy_gh_actions-myservice:v23.0.1
