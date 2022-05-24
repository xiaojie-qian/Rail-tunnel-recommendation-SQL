# Check the dataset using command line : 
$ hdfs dfs -ls s3a://training-coursera2/tbm_sf_la/

# Check further the sub-dictionary 
$ hdfs dfs -ls s3a://training-coursera2/tbm_sf_la/central
$ hdfs dfs -ls s3a://training-coursera2/tbm_sf_la/north
$ hdfs dfs -ls s3a://training-coursera2/tbm_sf_la/south

# Read the head and a few data: 
$ hdfs dfs -cat s3a://training-cousera2/tbm_sf_la/central/central_south.tsv |head
$ hdfs dfs -cat s3a://training-cousera2/tbm_sf_la/north/hourly_north.tsv |head
$ hdfs dfs -cat s3a://training-cousera2/tbm_sf_la/south/hourly_south.tsv |head

# Copy data from s3 to HDPS: 
$ hdfs dfs -cp s3a://training-coursera2/tbm_sf_la/central/hourly_central.csv /user/hive/warehouse/
$ hdfs dfs -cp s3a://training-coursera2/tbm_sf_la/north/hourly_north.csv /user/hive/warehouse/
$ hdfs dfs -cp s3a://training-coursera2/tbm_sf_la/south/hourly_south.tsv /user/hive/warehouse/


