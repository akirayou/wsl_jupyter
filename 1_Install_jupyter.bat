@ECHO OFF
REM exportする対象のWSLディストリ名
SET WSL_NAME=jupyter
REM exportするファイル名
SET DL_UB=jupyter.tar.gz

REM インポート作業
cd /d %~dp0
SET D=%~dp0
SET DLED_UB=%D%\%DL_UB%
echo "<<WSL IMPORT>> %DL_UB% as %WSL_NAME%"
wsl --import %WSL_NAME% "%AppData%\wsl-%WSL_NAME%" "%DLED_UB%" --version=1

