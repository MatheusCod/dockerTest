#!/bin/bash

mkdir docker
mv Dockerfile docker
cd docker
docker build -t centos-test .
docker run centos-test
