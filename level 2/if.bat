:: leave space before parenthesis 
rem some more examples  
if .%1.==.help. echo Showing help screen 

::The IF statement has an extended syntax when the command extensions are enabled.
:: The new syntax of the IF statement becomes:
:: 1  IF [/I] Value1 comparison-operator Value2 Command
:: 2  IF [NOT] DEFINED variableName Command
:: /I switch will turn case sensitive comparison on useful to strings 
:: DEFINED, EQU, NEQU, LSS, LEQ, GTR, GEQ 
@echo off

setlocal ENABLEEXTENSIONS 

set GodMode=

set /P name = "please enter name:"
if /I "%name%" EQU "puni" (
echo God mode enabled!
set GodMode=1
)

set /p age="please enter your age:"
if %age% LSS18 (
echo Underage 
goto :eof
)

if %age% GEQ90 (
if NOT DEFINED GodMode (
    echo you still are spirit mortal!
)
)
echo Let the party begi,.
if DEFINED GodMode (
    echo unlimited drinks on 
)
endlocal
