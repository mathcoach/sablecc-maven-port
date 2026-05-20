#!/bin/sh
set -x
mvn gpg:sign-and-deploy-file \
  -DpomFile=pom.xml \
  -Dfile=sablecc-3.7/lib/sablecc.jar\
  -Dsources=./target/sablecc-3.7-sources.jar\
  -Djavadoc=./target/sablecc-3.7-javadoc.jar\
  -DrepositoryId=central \
  -Durl='https://bayes.htwsaar.de/nexus/repository/maven-releases/'

rm pom.xml.asc

