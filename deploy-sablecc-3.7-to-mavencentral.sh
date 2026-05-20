#!/bin/sh
DIST_LIB=sablecc-3.7
set -x
mvn source:jar
mvn javadoc:javadoc; mvn javadoc:jar
mvn gpg:sign-and-deploy-file \
  -DpomFile=pom.xml \
  -Dfile=${DIST_LIB}/lib/sablecc.jar\
  -Dsources=./target/${DIST_LIB}-sources.jar\
  -Djavadoc=./target/${DIST_LIB}-javadoc.jar\
  -DrepositoryId=ossrh\
  -Durl='https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/'


rm pom.xml.asc
