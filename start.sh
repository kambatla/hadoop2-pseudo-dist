#!/bin/bash
set -e
source ./configure.sh

# start daemons
cd $HADOOP_INSTALL_VERSION
sh hadoop-dev.sh start
bin/hadoop fs -mkdir -p /user/$USER
cd ..
