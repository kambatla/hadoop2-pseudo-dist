#!/bin/sh -xe

bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar teragen -Dmapreduce.map.memory.mb=2048 -Dmapreduce.reduce.memory.mb=2048 40000000 teragen-out
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0-SNAPSHOT.jar wordcount -Dmapreduce.map.memory.mb=2512 -Dmapreduce.reduce.memory.mb=2512 teragen-out wc-out
