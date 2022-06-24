#!/usr/bin/env bash

export BSINSTALLDIR=/bisheng_data
PROC_NAME=licenseVerify
ProcNumber=`ps -ef |grep -w $PROC_NAME|grep -v grep|wc -l`
if [ $ProcNumber -le 0 ];then
   echo "licenseVerify is not run"
   nohup ./licenseVerify &> .log &
else
   echo "licenseVerify is  running.."
   bash stopLicenseVerify.sh
   nohup ./licenseVerify &> .log &
fi
