#!/bin/bash

DIR=$(pwd)

docker run \
\
-v $DIR:/home/uservim/code/ \
\
-it me_vim
