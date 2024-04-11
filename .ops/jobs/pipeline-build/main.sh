#!/bin/bash

    set -euo pipefail
    IFS=$'
	'

    echo $DOCKER_REGISTRY_PASS | docker login -u $DOCKER_REGISTRY_USER --password-stdin $DOCKER_REGISTRY
git clone https://github.com/$GITHUB_ORG/$GITHUB_REPO && cd $GITHUB_REPO
docker build -t $DOCKER_REGISTRY/$GITHUB_ORG/$GITHUB_REPO:latest .
docker push $DOCKER_REGISTRY/$GITHUB_ORG/$GITHUB_REPO:latest
    