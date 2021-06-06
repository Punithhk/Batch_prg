@echo arg0=%0, arg1=%1, arg2=%2
@echo All arguments:%*
@echo off
echo Args 1 to 6 are: %1 %2 %3 %4 %5 %6
shift /3
::start shifting at the 3rd argument 
echo New args 1 to 6 are:%1 %2 %3 %4 %5 %6
:repeat
if "%1"=="" goto end
echo Arg:%1

SHIFT

goto repeat

:end
