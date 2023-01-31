
@echo off

echo ">>Creating local branch and pushing it to Remote>>"
set solutionName=CSALMDemo

set timeStamp=%date:~4,2%%date:~7,2%%date:~10,4%_%time:~0,2%%time:~3,2%%time:~6,2%
set branchName=%solutionName%_%Timestamp%
echo %branchName%


git switch -c %branchName%
git add . && git commit -m "Changes Committed"
git push --set-upstream origin %branchName%

echo Branch created succesfully


