#!/bin/sh
# Doku + Anleitung zum Deployment: https://central.sonatype.org/pages/support/

mvn -P'-nexus,central.sonatype.com' clean deploy
