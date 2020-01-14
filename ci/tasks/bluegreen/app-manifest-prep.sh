#!/bin/bash

set -e -x

env

echo $app_name
echo $app_domain

sed "s/${app_name}/${app_name_new}/g" source-repo/manifest.yml > source-repo/manifest-new.yml

cat source-repo/manifest-new.yml
