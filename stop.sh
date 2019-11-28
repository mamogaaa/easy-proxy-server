#!/bin/bash
./install.sh
docker container stop easy-proxy-server
docker container rm easy-proxy-server