#!/bin/bash
./install.sh
./build_image.sh
docker run -d --restart=always -p 1080:1080 --name easy-proxy-server easy-proxy-server sockd