#!/bin/bash

set -e -x

cd source-repo
ant -version
ant

ls -la target/

cd ..

mkdir -p build-output/target

cp -r source-repo/target/*.?ar build-output/target/
cp -r source-repo/target/*.?ar build-output/
