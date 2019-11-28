#!/bin/bash
container=$(docker container ls --all | grep easy-proxy-server)
if [ ! -z "$container" ]; then
    ./stop.sh
fi
./start.sh