#!/usr/bin/env bash
var=$(cat .config)
arr=()
for element in $var
do
    arr[${#arr[*]}]=$element
done
echo ${arr[0]} ${arr[1]};
data=${arr[0]}
tag=${arr[1]}
imageurl=${arr[2]}


export imageurl=$imageurl
export basedir=$data
export tag=$tag

cd $data/service
docker-compose restart

sleep 20

cd $data/workspace
docker-compose restart

sleep 30
cd -
docker restart nginx

