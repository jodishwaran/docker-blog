#!/bin/bash
cd /var/www/docker-blog
# docker-compose stop nginx
# echo $DOCKER_PASSWORD | docker login -u $DOCKER_ID --password-stdin
# docker pull jodishwaran/ganesh-blog:next-app
# docker pull jodishwaran/ganesh-blog:nginx
# docker-compose up --force-recreate --no-deps nginx
docker-compose pull && docker-compose down --rmi local && docker-compose up
# docker-compose restart next-app