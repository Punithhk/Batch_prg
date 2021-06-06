@set TheVar=1 

@echo off

setlocal

set Name=puni

echo the %%Name%% variable is not gone to interpreter..

endlocal

set Age=18
echo The %%Age%% is gone to parent environment variable
echo  %Age%

set j=8
set p=j+Age
echo %p%
:: the above section doesnot work as summation 
:: run set Age it wil lgive the value

