:: Environment variables using SET 

@echo off 
SET "playerName=Super "
SET "playerLevel=45 "
SET variableName2=Hello %playerName%, your level is %playerLevel%

SET variableName=

::FOR ECHOING USE THE ECHO OR "SET EnvVarName"

echo %variableName%
echo %variableName2%

SET var*
SET variableName2
SET "variableName=I 3^>you"

echo value=%variableName%

