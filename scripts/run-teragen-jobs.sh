#!/bin/sh -e

bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar teragen -Dmapreduce.job.queuename=fifo.one -Dmapreduce.job.maps=50 400000 teragen-out-1 &
#bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar teragen -Dmapreduce.job.queuename=fair.one -Dmapreduce.job.maps=50 400000 teragen-out-2 & 
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar teragen -Dmapreduce.job.queuename=fifo.two -Dmapreduce.job.maps=50 400000 teragen-out-3 &
#bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar teragen -Dmapreduce.job.queuename=fair.two -Dmapreduce.job.maps=50 400000 teragen-out-4 &
