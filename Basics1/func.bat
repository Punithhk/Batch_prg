@echo off

call :function1
call :function2 arg1 arg2

goto :eof

:function1
echo This is function1
rem Return from the function 
:: rem stands for remark can be used for comments 
goto :eof

:function2
echo Inside function2
echo the arguments are: %*
goto :eof
