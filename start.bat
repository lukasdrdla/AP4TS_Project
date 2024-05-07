@echo off
echo PS: urcite neprojdou vsechny testy, kvuli nove pridanemu popupu, recaptcha, updaty...
echo Spoustim testy...

set TEST_DIR=Robot
set OUTPUT_DIR=results
set REPORT_FILE=%OUTPUT_DIR%\report.html
set LOG_FILE=%OUTPUT_DIR%\log.html
set SCREENSHOT_DIR=%OUTPUT_DIR%\screenshots

rem Spusteni testu
robot --report %REPORT_FILE% --log %LOG_FILE% %TEST_DIR%

echo Testy dokonceny.
pause
