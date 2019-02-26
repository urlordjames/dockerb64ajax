#!/bin/bash

docker build -t nginx2 $(pwd)
docker run --rm --name webserver -d -p 80:80 nginx2
docker rmi $(docker images -f "dangling=true" -q)
