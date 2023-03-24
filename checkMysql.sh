#!/usr/bin/env bash
mysql_status=1

MYSQL_USER=root
MYSQL_PASSWORD=123456
until [ $mysql_status -eq 0 ]
do
  docker exec -i mysql sh -c 'exec mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "select now()"'
  mysql_status=$?
  echo $mysql_status
  echo "MySQL启动中……"
  sleep 1
done

echo "MySQL启动成功"
