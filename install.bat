@echo off
cd /d %~dp0
docker-compose pull
docker-compose up -d

exit