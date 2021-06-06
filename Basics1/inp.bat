::Inbuilt env SET /P EnvironmentVariableName="The prompt you want to display"
@echo on
set /p Name="Please enter your name:"
echo Welcome %Name%
@echo off
setlocal
:repeat
set input=
set /p input=enter value:
if "%input%"=="" goto :eof
echo -^> %input%
goto repeat 
:: there is a problem here the input stores the value once entered and does 
:: not exit of the loop with enter, it keeps repeating previous value. 
:: so we use line 8 to clear input each time, so loop breaks with enter