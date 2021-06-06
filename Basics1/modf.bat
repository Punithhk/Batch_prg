:: %~{Modifier}{ArgumentNo or VariableNo}
:: Modifiers list all expands VariableNo/ArgumentNo
:: f- fully qualified path name, s- path with short names 
:: d- drive letter, p- path, n-filename, x-file extension, a-file attributes
:: t-date and time of file, z- size of file, 
:: $PATH:, dp-driveletter and path, nx-both
:: dp$PATH:, ftza 

@echo off

echo The first argument is: %1

echo without quotes: %~1
echo full path name : %~f1
echo drive: %~d1
echo path part: %~p1
echo filename: %~n1
echo ext: %~x1
echo file attr: %~a1
echo size: %~z1
echo path in envir var: %~PATH:1
echo file full path: %~dp1
echo fullname: %~nx1
echo 13. 'dir' like modifier: %~ftza1 
echo 14. fully qualified script path: %~dpnx0



