#!/bin/bash
# mkdir -p ~/.ssh
# echo $DO_TRAVIS_CI_USER_PK | tr -d '\r' > ~/.ssh/id_rsa
# cat ~/.ssh/id_rsa
# chmod 700 ~/.ssh/travis
set -xe
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/deploy-key
# ssh-keyscan -H 'gitlab.com' >> ~/.ssh/known_hosts
scp ../docker-compose.yml $DO_TRAVIS_CI_USER@$DO_HOST:$DO_APP_DIR
# chmod +x ./deploy.sh
# ssh $DO_TRAVIS_CI_USER@$DO_HOST 'bash -s' < ./deploy.sh