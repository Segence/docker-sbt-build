#!/bin/bash

IMAGE_NAME=segence/sbt-build
VERSION=$(cat version.txt)

docker build -t $IMAGE_NAME:$VERSION .
docker tag $IMAGE_NAME:$VERSION $IMAGE_NAME:latest
