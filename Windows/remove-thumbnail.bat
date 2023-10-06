@ECHO OFF
SET /P MKVPROEDIT="Enter mkvtoolnix home path: "
SET /P PATH="Enter folder path: "
IF EXIST %PATH:~1,-1%
(
   FOR /F "tokens=*" %%i IN ('dir /B /S %PATH%"\*.mkv"') DO (
       ECHO [+] Processing File: "%%i"
       START /D %MKVPROEDIT% /B /W mkvpropedit.exe "%%i" --delete-attachment mime-type:image/png
       ECHO.
   )
)
SET /P X="Press Enter to continue.."
@ECHO ON