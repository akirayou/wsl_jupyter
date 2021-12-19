@ECHO OFF
REM exportする対象のWSLディストリ名
SET WSL_NAME=ub_test
REM exportするファイル名
SET EXPORT_FILE=..\jupyte.tar.gz

cd /d %~dp0
REM gzip.exeがなければインストールする
cmd /C install_gzip_for_exportWSL.bat

REM エクスポート
SET E=%D%%EXPORT_FILE%
echo export  "%E%"
wsl --export %WSL_NAME% - | gzip.exe -9 - >  "%E%" 

