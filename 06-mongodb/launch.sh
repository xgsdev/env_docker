#!/bin/bash

DIR=$(pwd)

docker run \
\
-d
\
-p 27017:27017 \
\
-v $DIR/db:/data/db \
\
--name dkrmongodb
\
mongodb

