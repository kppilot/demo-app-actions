#!/bin/bash

SOURCE=$1
DEST=$2

curl -sSL https://get.docker.com/ | sudo sh
docker pull sheikh111/demo-actions-repo:v23.0.1
docker tag sheikhasim111/demo-actions-repo:v23.0.1 abc:1.0
