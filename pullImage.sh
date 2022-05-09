#!/usr/bin/env bash
docker pull $imageurl/nginx:1.20.1
docker pull $imageurl/minio:RELEASE.2021-10-10T16-53-30Z.fipss
docker pull $imageurl/bisheng/redis:4.0
docker pull $imageurl/bisheng/mysql:5.7
docker pull $imageurl/bsdrive:$tag
docker pull $imageurl/bso:$tag
