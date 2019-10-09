#!/bin/sh
echo ---------------------------------------
echo Deployment Start - Testing
echo ---------------------------------------
echo Creating Local MySQL storage volume
echo ---------------------------------------
mkdir volumes
mkdir volumes/test_db
echo
echo ---------------------------------------
echo Building and Deploying Asgard
echo ---------------------------------------
docker-compose -p asgard-testing -f docker-compose.test.yml up -d --build --remove-orphans
echo
echo ---------------------------------------
echo Conntainer Status:
echo ---------------------------------------
docker ps | grep 'asgard\|heimdall\|mimir\|yggdrasil'