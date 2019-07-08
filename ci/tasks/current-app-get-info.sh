#!/bin/bash

set -xe

pwd
env

cf api $PWS_API --skip-ssl-validation

cf login -u $PWS_USER -p $PWS_PWD -o "$PWS_ORG" -s "$PWS_SPACE"

cf apps

set +e
current_app="green"
next_app="blue"

result=`cf apps | grep "$PWS_APP_HOSTNAME.$PWS_APP_DOMAIN" | grep "$PWS_APP_SUFFIX\-\-green" |wc -l || true`
if [ $result -ne 0 ]
then
  current_app="green"
  next_app="blue"
else
  current_app="blue"
  next_app="green"
fi
echo "$current_app" > ./current-app-info/current-app.txt
echo "$next_app" > ./current-app-info/next-app.txt

set -xe
echo "Current main app routes to app instance $current_app"
echo "New version of app to be deployed to instance $next_app"
