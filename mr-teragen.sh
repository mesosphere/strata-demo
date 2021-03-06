#!/bin/bash   

if [ -z "$YARN_EXAMPLES" ]; then
    echo "Need to set YARN_HOME and YARN_EXAMPLES"
	echo "example: export YARN_HOME=/opt/mapr/hadoop/hadoop-2.5.1"
	echo "example: export YARN_EXAMPLES=\$YARN/share/hadoop/mapreduce"
    exit 1
fi

# hadoop jar $YARN_EXAMPLES/hadoop-mapreduce-examples-2.5.1-mapr-1501.jar teragen 50000000 /user/mapr/terasort-input
hadoop jar $YARN_EXAMPLES/hadoop-mapreduce-examples-2.5.1-mapr-1501.jar teragen
