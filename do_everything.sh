#!/bin/bash

echo "Build the builder..."
docker build -t amish_builder -f Dockerfile_builder .

echo "Run the builder..."
docker run --rm -v$PWD:/repo amish_builder ./build.sh

echo "Build the runner..."
docker build -t amish_runner -f Dockerfile_runner .

echo "Run the runner..."
docker run --rm amish_runner
