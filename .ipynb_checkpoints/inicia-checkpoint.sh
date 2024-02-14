#!/bin/bash

docker run \
      -it \
      --rm \
      -p 8888:8888 \
      -p 4040:4040 \
      -v /home/leticiacb/Documents/23-1-projeto-spark-lcac:/home/jovyan/work \
      jupyter/pyspark-notebook