#!/bin/bash

# build docker image
docker build -t item-app:v1 .

# melihat daftar image
docker images

# mengubah docker image agar sesuai dengan nama repository di Docke Hub
docker tag item-app:v1 riorb/item-app:v1

# login ke Docker Hub (password sudah ada di env)
echo $PASSWORD_DOCKER_HUB | docker login -u riorb --password-stdin

# push image ke Docker Hub
docker push riorb/item-app:v1