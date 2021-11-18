#!/bin/sh

#docker_state=$(ps -ef | grep docker >/dev/null 2>&1)
docker_state=$(docker info > /dev/null 2>&1)
if $docker_state; then
    echo " "
fi
