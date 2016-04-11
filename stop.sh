#!/bin/bash
set -e

source ./configure.sh

# start daemons
cd $HADOOP_INSTALL_VERSION
sh hadoop-dev.sh stop
cd ..
