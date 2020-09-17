#!/bin/bash

mkdir docker
mv Dockerfile docker
cd docker
docker build -t centos-test -f $TRAVIS_BUILD_DIR/docker/Dockerfile .
docker run centos-test
