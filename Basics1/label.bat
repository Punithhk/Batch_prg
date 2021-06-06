@echo off

:My label
echo Hi

goto label
echo Take care
 goto label
echo Thank You

goto %1
echo Cant reach 
:ValidLabel 
echo yes!

::case2 

goto %1 || (
    echo Failed to reach given label
    goto :eof
)

echo Unreachable code

:ValidLabel
echo ValidLabel reached!
goto :eof


