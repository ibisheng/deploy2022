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
echo "stop service"
docker-compose stop

cd -

cd $data/workspace
echo "stop apps"
docker-compose stop
