#!/bin/bash

set -xe

env

echo $appname
echo $pws-app-domain

sed "s/${appname}/${appname}_1/g" source-repo/manifest.yml > build-output/manifest-new.yml

cat build-output/manifest-new.yml
