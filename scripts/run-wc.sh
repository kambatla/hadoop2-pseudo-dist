bin/hadoop fs -mkdir /user/kasha
bin/hadoop fs -put etc/hadoop /user/kasha/
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.0.0-cdh4.2.0-SNAPSHOT.jar wordcount hadoop hadoop-out
