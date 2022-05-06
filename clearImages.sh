#!/usr/bin/env bash
echo "clear images"
docker rmi -f  `docker images | grep '<none>' | awk '{print $3}'`