#!/bin/sh

docker_state=$(ps -ef | grep docker >/dev/null 2>&1)
if $docker_state; then
    echo " "
    exit 1
fi
