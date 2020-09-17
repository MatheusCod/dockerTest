#!/bin/bash

mkdir docker
mv Dockerfile docker
cd docker
docker build -t centos .
docker run centos
