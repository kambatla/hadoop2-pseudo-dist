#!/bin/sh

VERSION=hadoop-3.0.0-SNAPSHOT
LOC=/home/kasha/archives/

# delete remnants from previous setup 
rm -rf /home/kasha/install/pseudo-dist/hdfs/*
rm -rf $VERSION*

# cp dist tar ball
cp $LOC/$VERSION.tar.gz .

# setup conf and copy scripts over
tar -xzf $VERSION.tar.gz
cp mr2-pseudo-conf/* $VERSION/etc/hadoop/
cp scripts/*.sh $VERSION/

# start daemons
cd $VERSION
chmod +x *.sh sbin/*.sh
sh hadoop-dev-setup.sh
sh hadoop-dev.sh start

bin/hadoop fs -mkdir /user
bin/hadoop fs -mkdir /user/kasha
