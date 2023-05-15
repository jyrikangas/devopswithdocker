#!/bin/sh

github_repo=$1
dockerhub_repo=$2

echo github_repo: $github_repo
echo dockerhub_repo: $dockerhub_repo

git clone git@github.com:$github_repo.git

path=$(echo $github_repo | cut -d'/' -f2)
echo $path

cd $path

docker build -t $dockerhub_repo:latest .
docker push $dockerhub_repo
