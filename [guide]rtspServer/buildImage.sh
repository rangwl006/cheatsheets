#!/bin/bash

echo "Commencing build of dockerfile"

container_name="rtsp-server"
tag="0.1"

docker build . -t $(container_name):$(tag)

echo "Build complete"
