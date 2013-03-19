#!/bin/bash
source hadoop-dev-env.sh
sbin/hadoop-daemon.sh $1 namenode
sbin/hadoop-daemon.sh $1 datanode
sbin/yarn-daemon.sh $1 resourcemanager
sbin/yarn-daemon.sh $1 nodemanager
sbin/mr-jobhistory-daemon.sh $1 historyserver
#sbin/httpfs.sh $1
jps
