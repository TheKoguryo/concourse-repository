#!/bin/bash

set -e -x

env

echo $app_name
echo $app_domain

sed "s/${app_name}/${app_name}-new/g" source-repo/manifest.yml > build-output/manifest-new.yml

cat build-output/manifest-new.yml
