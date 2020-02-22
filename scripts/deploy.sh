#!/bin/bash
cd $DO_APP_DIR
echo $DOCKER_PASSWORD | docker login -u $DOCKER_ID --password-stdin
docker pull $DOCKER_REPO:next-app
docker pull $DOCKER_REPO:nginx