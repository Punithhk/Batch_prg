::i/p O/p redirection is done here using "1>" or ">" is equivalent to stdout
:: Using "2>" is for stderr
ECHO tHIS will be written to a file>newfile.txt
ECHO this will be added to file test.txt >>test.txt
::>> used for the appending 
ECHO this will over write new file>newfile.txt
ECHO This will redirect the stdout and stderr to two separate text files>stdout-file.txt 2>stderr-file.txt
ECHO This will redirect the stdout to a file and stderr to the same output >stdout-file.txt 2>&1
ECHO Nothing will be displayed!>nul
ECHO Checking stdinput to stdinput-file.txt >stdinput.txt 1> stdinput.txt

>out.txt ECHO Hello world!
:: The above not appends it replaces the entire file 
:: ">nul dir /w"  to know 

