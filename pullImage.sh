#!/usr/bin/env bash
docker pull $1/bisheng/nginx:1.20.1
docker pull quay.io/minio/minio:RELEASE.2021-10-10T16-53-30Z.fips
#change to docker pull $1/bisheng/minio:RELEASE.2021-10-10T16-53-30Z.fips
docker pull $1/bisheng/redis:4.0
docker pull $1/bisheng/mysql:5.7
docker pull docker.nodoc.cn:19000/bisheng/bsdrive:dev
# change to docker pull $1/bisheng/bsdrive:$2
docker pull docker.nodoc.cn:19000/bisheng/bso:dev
# change to docker pull $1/bisheng/bso:$2
