#!/bin/sh

sh start-cluster.sh
# sleep till daemons come up
sleep 15

# run wordcount on etc/hadoop data
sh run-wc.sh
sleep 2

#stop the cluster
sh hadoop-dev.sh stop
