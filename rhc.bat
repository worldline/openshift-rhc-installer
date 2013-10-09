:: Don't use ECHO OFF to avoid possible change of ECHO
:: Use SETLOCAL so variables set in the script are not persisted
@SETLOCAL

set HTTP_PROXY=%LIBRA_SERVER_PROXY%
set HTTPS_PROXY=%LIBRA_SERVER_PROXY%

:: Invoke 'rhc' (the calling script) as argument to ruby.
:: Also forward all the arguments provided to it.
@"%~dp0ruby\bin\ruby.exe" "%~dp0ruby\bin\rhc" %*
