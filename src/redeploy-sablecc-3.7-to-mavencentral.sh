#!/bin/sh
DIST_DIR=sablecc-3.7/lib/maven-dist
set -x
mvn gpg:sign-and-deploy-file \
  -DpomFile=pom.xml \
  -Dfile=${DIST_DIR}/sablecc-3.7.jar\
  -Dsources=${DIST_DIR}/sablecc-3.7-sources.jar\
  -Djavadoc=${DIST_DIR}/sablecc-3.7-javadoc.jar\
  -DrepositoryId=ossrh\
  -Durl='https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/'

rm pom.xml.asc

