Scripts to run a pseudo-distributed Hadoop cluster that runs HDFS, Yarn and MR.

## Branch to use
* master for Hadoop-3 and based distributions
* branch-2 for Hadoop-2, CDH5.x and other Hadoop-2 based distributions.

## Configuring the cluster
* Edit configure.sh to specify the version of Hadoop to install and the location the tarball is at.
* Other site specific Hadoop configurations could be configured in conf/*

## Starting/stopping the cluster
* install.sh installs the cluster: sets up configuration add formats HDFS
* start.sh starts the cluster - all HDFS, Yarn and MR daemons
* stop.sh stops the cluster
