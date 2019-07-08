#!/bin/bash

set -e -x

cd source-repo
mvn --version
mvn package

ls -la target/

cd ..

cp source-repo/target/*.jar build-output/
