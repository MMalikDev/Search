@echo off

setlocal

:: Search settings
set "engine=google"
set "browser=www.%engine%.com"

:: Get query input
set /p "query=What do you want to look up? : "

:: Check if there are no command-line arguments
if "%query%"=="" (
  echo No queries provided...
  exit /b 1
)

:: URL encode query 
call set encoded_query=%%query: =+%%

:: Construct the search link
set "link=https://%browser%/search?q=%encoded_query%"

:: Display information
echo Using %engine% to look up: %query%
echo Opening: %link%

:: Open the link in the default web browser
start %link%

exit /b
