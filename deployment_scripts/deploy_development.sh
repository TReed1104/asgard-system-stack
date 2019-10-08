#!/bin/sh
echo ---------------------------------------
echo Creating Local MySQL storage volume
echo ---------------------------------------
mkdir volumes
mkdir volumes/test_db
echo
echo ---------------------------------------
echo Building and Deploying Asgard
echo ---------------------------------------
docker-compose -p asgard-dev -f docker-compose.dev.yml up -d --build --remove-orphans
echo
echo ---------------------------------------
echo Conntainer Status:
echo ---------------------------------------
docker ps | grep 'asgard\|heimdall\|mimir\|yggdrasil'