#!/bin/bash
CONSUL=$1
if [ -z $CONSUL ]; then
  CONSUL=consul.service.sjc-dev.consul:8500
fi

socat tcp-listen:8500,reuseaddr,fork tcp:$CONSUL
