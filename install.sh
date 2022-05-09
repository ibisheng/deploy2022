#!/usr/bin/env bash
if [ ! -n "$1" ] ;then
    echo "require a install dir"
    exit
fi

if [ ! -x "$1" ] ;then
     mkdir "$1"
fi
basepath=$(cd `dirname $0`; pwd)
echo "copy resource data"

rm -rf $1/*
docker rm nginx minio redis mysql bsdrive bso -f  1 > /dev/null 2>&1
docker network create bisheng

export basedir=$1
export tag=v4
export imageurl=registry.cn-zhangjiakou.aliyuncs.com
bash pullImage.sh $imageurl $tag

echo "$1 $tag $imageurl" > .config



cp -r service $1/
cp -r workspace $1/

cd $basepath

bash upNodes.sh
bash restart.sh
bash clearImages.sh

echo "你开始使用毕升Office即表示你同意链接 https://ibisheng.cn/apps/blog/posts/agreement.html 中的内容"
echo "在你的浏览器中打开 http://IP 即可访问毕升office，请参看安装文档激活毕升office"
