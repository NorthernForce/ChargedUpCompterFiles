call git fetch
call git pull
start "" /W "C:\Users\Public\wpilib\2023\tools\Shuffleboard.vbs"

@ECHO off
timeout /t 5 /nobreak>NUL
:waitloop
TASKLIST |find /I "javaw.exe" >NUL
IF ERRORLEVEL 1 GOTO endloop
timeout /t 5 /nobreak>NUL
goto waitloop
:endloop

call git add shuffleboard_layout.json
call git commit -m "Automatic commit update shuffleboard layout"
call git push