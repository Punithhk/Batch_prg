@echo off 
set value=1
 
 if "%value%"=="1" (
      set value=2 
      echo The value inside the IF block is '%value%' 
      )  

:: IN BATCH PROGRAMMING 
:: the entire if, for etc is a single line command, the values get upadated only after exiting the command 

echo The value after the IF block is '%value%' 
 
::ex 2

@echo off

set value=1

:repeat
echo value is '%value%'

if "%value%"=="1" set value=2
if "%value%"=="2" set value=3
if "%value%"=="3" goto end

goto repeat
:end 

echo Done!

::ex 3
@echo off

SET C=-1
FOR /L %%a IN (1,1,4) DO (
    set C=%%a
    echo a=%%a, C=%C%
)

echo after the loop, C=%C%

::EX 4
echo EX4

@echo off 
SETLOCAL ENABLEDELAYEDEXPANSION 
set value=1 

 if "%value%"=="1" (
      set value=2 
      echo The value inside the IF block is '!value!' 
      )  

echo The value after the IF block is '%value%'

::EX 5 

echo EX5 

@echo off 
setlocal ENABLEDELAYEDEXPANSION 
SET C=-1 
FOR /L %%a IN (1, 1, 4) DO ( 
    set C=%%a  
    echo a=%%a, regular expansion of C=%C% and delayed expansion of C= !C!
 ) 
        
    ECHO After the loop, C=%C% 

::so !VarName! will upate the values instantaneously 

echo test  
@echo off
setlocal enabledelayedexpansion
  
set RESULT= 
for %%i in (%*) do set RESULT=!RESULT!%%i 
echo %RESULT%

endlocal
