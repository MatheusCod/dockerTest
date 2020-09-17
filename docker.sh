#!/bin/bash

mkdir docker
mv Dockerfile docker
cd docker
docker build --tag centos
docker run centos
