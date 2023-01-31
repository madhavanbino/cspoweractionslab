@echo off
REM This is a single-line comment in bash

set Timestamp=%date:~4,2%%date:~7,2%%date:~10,4%_%time:~0,2%%time:~3,2%%time:~6,2%
set branchName=CSALMDemonstration_%Timestamp%
ECHO %branchName%

git switch -c %branchName%
git add . && git commit -m "Changes Committed"
git push --set-upstream origin %branchName%


