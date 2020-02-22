#!/bin/bash
pwd
cd /var/www/docker-blog
pwd
docker-compose down
# echo $DOCKER_PASSWORD | docker login -u $DOCKER_ID --password-stdin
docker pull jodishwaran/ganesh-blog:next-app
docker pull jodishwaran/ganesh-blog:nginx
docker volume rm docker-blog_web-root
docker volume rm docker-blog_dhparam
docker-compose up
pwd