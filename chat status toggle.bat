@echo off
echo.
:start
echo Select your preferred status
echo Press "1" for "Online"
echo Press "2" for "Invisible"
echo Press "3" for "Away"
echo Press "4" for "Looking To Trade"
echo Press "5" for "Looking To Play"
echo Press "6" for "Busy"
echo Press "7" for sign out from friends and chat
echo Press "8" for Exit from Steam
echo.
set /p choice=        Your status? 
rem if not '%choice%'=='' set choice=%choice:~0;1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
if '%choice%'=='5' goto 5
if '%choice%'=='6' goto 6
if '%choice%'=='7' goto 7
if '%choice%'=='8' goto 8

if not '%choice%'=='' echo "%choice%" Buttom is not correct. Select a preferred status from the description.
echo

goto start
:1
rundll32 url.dll,FileProtocolHandler steam://friends/status/online

goto start
:2
rundll32 url.dll,FileProtocolHandler steam://friends/status/invisible

goto start
:3
rundll32 url.dll,FileProtocolHandler steam://friends/status/away

goto start
:4
rundll32 url.dll,FileProtocolHandler steam://friends/status/trade

goto start
:5
rundll32 url.dll,FileProtocolHandler steam://friends/status/play

goto start
:6
rundll32 url.dll,FileProtocolHandler steam://friends/status/busy

goto start
:7
rundll32 url.dll,FileProtocolHandler steam://friends/status/offline

goto start
:8
rundll32 url.dll,FileProtocolHandler steam://ExitSteam