#!/bin/sh
echo ---------------------------------------
echo Deployment Start - Production, No Build
echo ---------------------------------------
echo Creating Local MySQL storage volume
echo ---------------------------------------
mkdir volumes
mkdir volumes/db
echo
echo ---------------------------------------
echo Building and Deploying Asgard
echo ---------------------------------------
docker-compose -p asgard -f docker-compose.yml up -d --remove-orphans
echo
echo ---------------------------------------
echo Conntainer Status:
echo ---------------------------------------
docker ps | grep 'asgard\|heimdall\|mimir\|yggdrasil'