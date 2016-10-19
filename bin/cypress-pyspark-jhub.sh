#!/bin/bash
# Got the idea from here:
#   https://github.com/jupyterhub/jupyterhub/issues/227

export HDP_VERSION="2.4.2.0-258"
export SPARK_HOME="/usr/hdp/2.4.2.0-258/spark"
export PYTHONPATH="/usr/hdp/2.4.2.0-258/spark/python/lib/py4j-0.9-src.zip:/usr/hdp/2.4.2.0-258/spark/python/"
export PYTHONSTARTUP="/usr/hdp/2.4.2.0-258/spark/python/pyspark/shell.py"
source ~/.pysparkrc

mkdir -p /scratch2/$USER/__pyspark_jhub_cypress__
exec /software/anaconda/4.2.0/bin/python -m ipykernel $@ 2>&1>>/scratch2/$USER/__pyspark_jhub_cypress__/$(date +%s).log
