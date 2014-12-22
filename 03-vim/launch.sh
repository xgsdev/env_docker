#!/bin/bash

DIR=$(pwd)

docker run \
\
-v $DIR:/home/uservim/code/ \
\
-it 1abf8c80218c
