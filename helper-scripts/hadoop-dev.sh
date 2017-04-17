#!/bin/bash
set -e

source hadoop-dev-env.sh

set -x
bin/hdfs --daemon $1 namenode
bin/hdfs --daemon $1 datanode
bin/yarn --daemon $1 resourcemanager
bin/yarn --daemon $1 nodemanager
bin/mapred --daemon $1 historyserver
#sbin/httpfs.sh $1
set +x

jps
