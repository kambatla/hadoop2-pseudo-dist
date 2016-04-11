#!/bin/bash
set -xe

# Load the configuration
source ./configure.sh
VERSION=$HADOOP_INSTALL_VERSION
LOC=$HADOOP_ARCHIVE_LOCATION

[[ -z $VERSION ]] && { echo "Version is empty" ; exit 1; }
[[ -z $LOC ]] && { echo "Location is empty" ; exit 1; }

# delete remnants from previous setup 
rm -rf /tmp/pseudo-dist/hdfs/*
rm -rf $VERSION*

# cp dist tar ball
cp $LOC/$VERSION.tar.gz .

# setup conf and copy scripts over
tar -xzf $VERSION.tar.gz
cp conf/* $VERSION/etc/hadoop/
cp helper-scripts/hadoop-*.sh $VERSION/

# format namenode
cd $VERSION
chmod +x *.sh sbin/*.sh
./hadoop-dev-setup.sh
cd ..
