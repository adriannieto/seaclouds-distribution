#!/bin/bash
set -u
[ -z "$BROKLYN_HOME" ] && { echo "Need to set BROKLYN_HOME"; exit 1; }





echo "Copy additional entities to ${BROKLYN_HOME}/lib/dropins"
wget -q -O ${BROKLYN_HOME}/lib/dropins/brooklyn-modaclouds-0.1.0-SNAPSHOT.jar "http://oss.sonatype.org/service/local/artifact/maven/redirect?r=snapshots&g=eu.seaclouds-project&a=brooklyn-modaclouds&v=LATEST" --content-disposition
echo "Copied!"