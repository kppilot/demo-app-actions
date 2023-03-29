#!/bin/bash


SOURCE=$1
DEST=$2

sudo usermod -aG docker runner
sudo docker pull $SOURCE
sudo docker tag $SOURCE ecs_deploy_gh_actions-myservice:latest 628034938073.dkr.ecr.ap-northeast-2.amazonaws.com/ecs_deploy_gh_actions-myservice:v23.0.1
aws ecr get-login-password --region ap-northeast-2|  docker login --username AWS --password-stdin 628034938073.dkr.ecr.ap-northeast-2.amazonaws.com
sudo docker push ecs_deploy_gh_actions-myservice:latest 628034938073.dkr.ecr.ap-northeast-2.amazonaws.com/ecs_deploy_gh_actions-myservice:v23.0.1