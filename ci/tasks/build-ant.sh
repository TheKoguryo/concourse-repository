#!/bin/bash

set -e -x

cd source-repo
ant -version
ant

ls -la target/

cd ..

cp source-repo/target/*.jar build-output/
