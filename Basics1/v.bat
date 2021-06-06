@echo off
:main
setlocal
call:add 1 5
echo The result is %result%
echo The result is %errorlevel% 
::you can pick it even using errorlevel 
goto :eof

::And two numbers 
:add (num1,num2)
SET /A result=%1+%2
exit /b %result%
endlocal

