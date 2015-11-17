#!/bin/sh -e

bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fifo.one 4 100000 &
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fair.one 4 100000 &
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fifo.two 4 100000 &
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fair.two 4 100000 &
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fifo.one 4 100000 &
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fair.one 4 100000 &
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fifo.two 4 100000 &
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar pi -Dmapreduce.job.queuename=fair.two 4 100000 &
