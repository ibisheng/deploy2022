#!/usr/bin/env bash
docker pull $imageurl/nginx:1.20.1
docker pull $imageurl/minio:RELEASE.2021-10-10T16-53-30Z.fips
docker pull $imageurl/redis:4.0
docker pull $imageurl/mysql:5.7
docker pull $imageurl/bsdrive_arm:$tag
docker pull $imageurl/bso_arm:$tag
