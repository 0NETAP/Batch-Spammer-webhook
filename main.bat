:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
:: WOW U DECOMPILED A BATCH SCRIPT GOOD FOR YOU
@echo off 
chcp 65001
cls
title ION-HOOK by ION#1390

:start
type menu.py
echo.
set /p webhook=[40;35mwebhook :[40;37m 
echo.
set /p message=[40;35mmessage :[40;37m 
echo.
set /p threads=[40;35mthreads :[40;37m 
cls
echo. 
Echo [40;35mIs this info correct? Type [40;32mY/[40;31mN 
echo [40;35m       (Case sensitive)
echo.
echo [40;35mTheads =[40;34m %threads% 
echo.
echo    [40;35mMessage =[40;34m %message%
echo.
echo        [40;35mWebhook =[40;34m  %webhook%
echo.
set /p ?=[40;35m [-]: [40;37 
cls
echo.
echo [40;31mEnter your information again.
if %?% == N goto start 
if %?% == Y goto passed
goto start
:passed
echo [40;35mSending message [40;31m[-]
:: Sends message
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%
IF ERRORLEVEL 1 goto limited
ping localhost -n %threads% >nul 
goto passed
:: rate limited
:limited
cls
echo [40;31               RRATE LIMITED
ping localhost -n 1 >nul 
goto :passed