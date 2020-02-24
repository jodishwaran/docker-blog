#!/bin/bash
# cd /var/www/docker-blog
# docker-compose stop nginx
# echo $DOCKER_PASSWORD | docker login -u $DOCKER_ID --password-stdin
# docker pull jodishwaran/ganesh-blog:next-app
# docker pull jodishwaran/ganesh-blog:nginx
# docker-compose up --force-recreate --no-deps nginx
# BOUNCE_APP () { 
#     TEXT=$1
#     echo "I am $TEXT ..."
#     nohup `docker-compose pull && docker-compose down --rmi local && docker-compose up` >/dev/null 2>&1 & 
#  }
# BOUNCE_APP bouncing
# nohup docker-compose pull && docker-compose down --rmi local && docker-compose up >/dev/null 2>&1 &
# docker-compose restart next-app
echo "Running ssh connection.."
ssh -i ../deploy-key $DO_TRAVIS_CI_USER@$DO_HOST << 'ENDSSH'
  cd /var/www/docker-blog
  docker-compose pull && docker-compose down --rmi local && docker-compose up
ENDSSH