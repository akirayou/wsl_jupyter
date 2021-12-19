@ECHO OFF
SET WSL_NAME=ub_test
SET DL_ZIP=gzip-1.3.12-1-bin.zip

cd /d %~dp0
SET D=%~dp0
SET DLED_ZIP=%D%\%DL_ZIP%
SET DL_URL_ZIP=https://jaist.dl.sourceforge.net/project/gnuwin32/gzip/1.3.12-1/%DL_ZIP%
IF EXIST gzip.exe (
	echo found gzip.exe
	exit /b
)

IF not EXIST "%DLED_ZIP%" (
	bitsadmin /transfer Ubuntu_download %DL_URL_ZIP%  "%DLED_ZIP%"
)

call powershell -command "Expand-Archive gzip-1.3.12-1-bin.zip"
copy gzip-1.3.12-1-bin\bin\gzip.exe .\

rd /S /Q .\gzip-1.3.12-1-bin\

