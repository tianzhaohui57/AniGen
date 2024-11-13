@echo off
for /f "tokens=2 delims==" %%I in ('"wmic os get localdatetime /value"') do set datetime=%%I
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set commit_date=%year%/%month%/%day%
set http_proxy=http://192.168.101.114:9080
set https_proxy=http://192.168.101.114:9080
git add .
git commit -m "%commit_date%"
git pull
git push