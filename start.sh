#!/bin/bash

docker build -t nginx2 $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )
docker run --rm --name webserver -d -p 80:80 nginx2
docker rmi $(docker images -f "dangling=true" -q)
