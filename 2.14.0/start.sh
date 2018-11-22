#!/bin/bash

set -x

for ext in `ls -d /var/local/geoserver-exts/*/`; do
  cp "${ext}"*.jar /usr/local/geoserver/WEB-INF/lib
done
CATALINA_OPTS="$CATALINA_OPTS -Xms${INITIAL_HEAP_SIZE:-256M} -Xmx${MAXIMUM_HEAP_SIZE:-512M}"
catalina.sh run
