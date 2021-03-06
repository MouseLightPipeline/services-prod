#!/usr/bin/env bash

if [[ -f "options.sh" ]]; then
    source "options.sh"
fi

if [[ -z "PIPELINE_COMPOSE_PROJECT" ]]; then
    export PIPELINE_COMPOSE_PROJECT="pipeline"
fi

docker-compose -p ${PIPELINE_COMPOSE_PROJECT} up -d
