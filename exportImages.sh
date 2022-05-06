#!/usr/bin/env bash
docker save $1/bisheng/nginx:1.20.1 > $3/nginx.1.20.1.tar
docker save quay.io/minio/minio:RELEASE.2021-10-10T16-53-30Z.fips > $3/minio.tar
#change to docker save $1/bisheng/minio:RELEASE.2021-10-10T16-53-30Z.fips > $3/minio.tar
docker save $1/bisheng/redis:4.0 > $3/redis_4.0.tar
docker save $1/bisheng/mysql:5.7 > $3/mysql_5.7.tar

docker save docker.nodoc.cn:19000/bisheng/bsdrive:dev > $3/bsdrive.tar
# change to docker save $1/bisheng/bsdrive:$2 > $3/bsdrive.tar
docker save docker.nodoc.cn:19000/bisheng/bso:dev > $3/bso.tar
# change to docker save $1/bisheng/bso:$2 > $3/bso.tar
