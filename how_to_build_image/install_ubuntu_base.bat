@ECHO OFF
SET WSL_NAME=ub_test
SET DL_UB=ubuntu-base-20.04.3-base-amd64.tar.gz

cd /d %~dp0
SET D=%~dp0
SET DLED_UB=%D%\%DL_UB%
SET DL_URL_UB=http://cdimage.ubuntu.com/ubuntu-base/releases/20.04.3/release/%DL_UB%

IF not EXIST "%DLED_UB%" (
	bitsadmin /transfer Ubuntu_download %DL_URL_UB%  "%DLED_UB%"
)

echo "import %DL_UB% as %WSL_NAME% @WSL version 1"
wsl --import %WSL_NAME% "%AppData%\wsl-%WSL_NAME%" "%DLED_UB%" --version=1


