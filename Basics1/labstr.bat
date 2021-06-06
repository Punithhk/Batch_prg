:: RUN IT AS "goto-label-resilient-filename.bat mylabel1"
@echo off

if "%1"==""(
    echo NO LABEL SPECIFIED
    goto :eof
)

findstr /B /X /C:":%~1" "%~f0">nul && goto %~1 ||(
:: 
echo The label "%~1" does not exist!
exit /b-1
) 

goto :eof

:mylabel1
echo Bhal
goto :eof

:mylabel2
echo LABas
goto :eof
