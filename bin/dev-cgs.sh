#!/bin/sh
cd $HOME/Wikia/source/pandora
. ~/local/pandora/service/content-graph/dev-environment.sh
#./gradlew :service:content-graph:content-graph-service:run  service/content-graph/content-graph-service/src/main/resources/content-graph-service.yaml
./gradlew :service:content-graph:content-graph-service:run
