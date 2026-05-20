#!/bin/sh
DIST_DIR=sablecc-3.7/lib/maven-dist
set -x
mvn gpg:sign-and-deploy-file \
  -DpomFile=pom.xml \
  -Dfile=${DIST_DIR}/sablecc-3.7.jar\
  -Dsources=${DIST_DIR}/sablecc-3.7-sources.jar\
  -Djavadoc=${DIST_DIR}/sablecc-3.7-javadoc.jar\
  -DrepositoryId=central \
  -Durl='https://bayes.htwsaar.de/nexus/repository/maven-releases/'

rm pom.xml.asc

