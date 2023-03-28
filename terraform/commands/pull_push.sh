#!/bin/bash

SOURCE=$1
DEST=$2

whoami
#apt install sudo
#sudo -h

#yum install sudo
#sudo -h

sudo docker --version
sudo docker pull $SOURCE
sudo docker tag $SOURCE $DEST
sudo docker push $DEST