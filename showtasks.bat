call runcrud.bat
if "%ERRORLEVEL%" == "0" goto runChrome
echo.
echo Runcrud.bat failed to open.
goto fail

:runChrome
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL" == "0" goto end
echo.
echo Opening Google Chrome failed!
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.