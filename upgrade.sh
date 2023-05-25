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


if [ ! -f "$data/workspace/config/config.yml" ] ;then
  #更新系统配置文件
 rm $data/workspace/config/config.yml
 cp -r workspace/config/config.yml $data/workspace/config/config.yml
fi
if [ ! -f "$data/service/nginx/config/conf.d/bisheng.conf" ] ;then
  #更新系统配置文件
 rm $data/service/nginx/config/conf.d/bisheng.conf
 cp -r service/nginx/config/conf.d/bisheng.conf $data/service/nginx/config/conf.d/bisheng.conf
fi


cp -rf workspace/fonts/*ttf $data/workspace/fonts
cp -rf workspace/fonts/*ttc $data/workspace/fonts


export imageurl=$imageurl
export basedir=$data
export tag=$tag

bash pullImage.sh $imageurl $tag
bash upNodes.sh

docker rmi -f  `docker images | grep '<none>' | awk '{print $3}'`
