docker pull docker.nodoc.cn/bisheng/bsdrive:dev
docker pull docker.nodoc.cn/bisheng/bso:dev
docker rm bsdrive -f
docker rm bso -f
export basedir=~/bisheng_data
docker-compose up -d
docker rmi $(docker images -f "dangling=true" -q)

