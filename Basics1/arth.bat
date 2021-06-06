::Set with /A 
::SET /A variablename=(Expression Operator Expression1)
::SET /A var1=Expression2, var2=Expression3
:: Prefix numbers with “0x” to designate hexadecimal numbers.
:: •  Prefix numbers with “0” to designate octal numbers.

@echo off

::Do not expose all the env used in scripts
SETLOCAL
SET /P var1="enter a number"
SET /A var2= var1 + 2
SET /A var3="var1 & 1"
SET /A var4="var1 %% 2"
SET /A var5="1<<7"
::bitwise negation
SET /A var6="~var1"
SET /A var7="0x1234"
::shift left assignment 
SET /A var8=1
SET /A var8^<^<=2

SET var

IF %var3% EQU 1 echo var1 is odd

ENDLOCAL 
