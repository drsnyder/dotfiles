#!/bin/sh
cd $HOME/Wikia/source/pandora
. ~/local/pandora/service/content-graph/dev-testing-environment.sh
./gradlew --info :service:content-graph:content-graph-service:test --rerun-tasks
