#!/usr/bin/env bash
docker pull $imageurl/nginx_arm:1.20.1
docker pull $imageurl/minio_arm:RELEASE.2021-10-10T16-53-30Z.fips
docker pull $imageurl/rejson_arm:2.0.6
docker pull $imageurl/mysql_arm:5.7
docker pull $imageurl/bsdrive_arm:$tag
docker pull $imageurl/bso_arm:$tag
