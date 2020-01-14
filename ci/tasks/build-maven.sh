#!/bin/bash

set -e -x

mkdir -p $MAVEN_CONFIG

cat > $MAVEN_CONFIG/settings.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.1.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.1.0 http://maven.apache.org/xsd/settings-1.1.0.xsd">
  <mirrors>
    <mirror>
      <id>central</id>
      <name>central</name>
      <url>http://10.197.37.26:8081/nexus/content/repositories/thirdparty/</url>
      <mirrorOf>*</mirrorOf>
    </mirror>
  </mirrors>
</settings>
EOF

cd source-repo
mvn --version
mvn package

ls -la target/

cd ..

cp source-repo/target/*.?ar build-output/
