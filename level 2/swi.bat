@echo off
set /P N=Enter number:
call :nested-if
goto :eof

:nested-if

echo Nested Ifs..
if %N%==1 (
     echo one
) ELSE (
    if %N%==2 (
        echo Two
    ) ELSE (
        if %N%==3 (
            echo three
        ) ELSE (
            echo something else
        )
    )
)

echo After Ifs
goto :eof