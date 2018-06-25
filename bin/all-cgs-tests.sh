#!/bin/bash
DATABASE_PASSWORD="password" DATABASE_MASTER_URL=jdbc:mysql://localhost:3306/content_graph_testing \
  DATABASE_SLAVE_URL=jdbc:mysql://localhost:3306/content_graph_testing DATABASE_USER=root LOG_PLAIN_STDOUT_ONLY=true \
  ./gradlew :service:content-graph:content-graph-service:cleanTest
