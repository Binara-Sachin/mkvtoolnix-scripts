@ECHO OFF
SET MKVPROEDIT="C:\mkvtoolnix\"
SET /P PATH="Enter folder path: "
SET /P THUMBNAIL="Enter thumbnail path: "
IF EXIST %PATH:~1,-1%
(
   FOR /F "tokens=*" %%i IN ('dir /B /S %PATH%"\*.mkv"') DO (
       ECHO [+] Processing File: "%%i"
       START /D %MKVPROEDIT% /B /W mkvpropedit.exe "%%i" --attachment-name Cover.jpg --attachment-description 'Cover' --attachment-mime-type image/jpg --add-attachment %THUMBNAIL%
       ECHO.
   )
)
SET /P X="Press Enter to continue.."
@ECHO ON