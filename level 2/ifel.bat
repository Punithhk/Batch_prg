
rem this program is yet to be done 
:: Here’s the basic syntax of the IF keyword:
  :: IF [NOT] ERRORLEVEL number command
 :: IF [NOT] string1==string2 command
 ::  IF [NOT] EXIST filename command
:: [not] optional 
@echo off
IF EXIST out.txt echo FIle is found && del out.txt
IF NOT EXIST out.txt echo File not found 
IF EXIST out1.txt (ECHO The 2 file exists) ELSE ECHO the 2 file does not exists
::IF Condition ( ) ELSE ( ) 

:main 
if "%1"=="" goto Usage 
if "%1"=="compress" goto compress
if "%1"=="uncompress" goto uncompress

rem  Record comments:Unknown command passed, display the usage 
echo Unknown command '%1'!!
goto Usage

:Usage
ECHO %0 compress^|uncompress archive.zip 
goto end

:compress
if "%2"=="" ( 
    echo No archive name was passed!
    goto Usage
)
echo compressing current folder into archive '%2'
rem invoke the compression utility 
goto end


:uncompress
if "%2"==""goto Usage
if "%2"=="" (
echo No archive name was passed!
goto Usage
)

if not exist %2 (
echo The archive '%2' is not found
goto end
)
echo Uncompressing the archive '%2' into current folder
rem invoke the decompresssion utility 
goto end 

:end