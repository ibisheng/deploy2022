#!/usr/bin/env bash
docker pull $imageurl/nginx:1.20.1
docker pull $imageurl/minio:RELEASE.2021-10-10T16-53-30Z.fips
docker pull $imageurl/rejson:2.0.9
docker pull $imageurl/mysql:8-oracle
docker pull $imageurl/bsdrive:$tag
docker pull $imageurl/bso:$tag
