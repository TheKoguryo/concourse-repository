#!/bin/bash

set -e -x

ls -la $GRADLE_HOME
ls -la $GRADLE_HOME/bin

cd source-repo
$GRADLE_HOME/bin/gradle --version
$GRADLE_HOME/bin/gradle --build-cache clean assemble

ls -la build/libs/

cd ..

cp source-repo/build/libs/*.?ar build-output/
