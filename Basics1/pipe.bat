::connect two programs together
echo My name is Pol | SET /P name="what is your name?"
echo %name%
::Useful pipe commands 
:: MORE its arguments +N here +N lines are not displayed 
::Type is used to display text files or files in cmdp



::examples 
::type out.txt | findstr /V/C:goto.bat
::type out.txt | more +1 | more +1
::DIR %WINDIR% | MORE
