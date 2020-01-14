#!/bin/bash

set -e -x

cd source-repo
ant -version
ant

ls -la target/

cd ..

cp -r source-repo/target build-output/
