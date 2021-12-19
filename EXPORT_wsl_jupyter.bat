@ECHO OFF
REM exportする対象のWSLディストリ名
SET WSL_NAME=jupyter
REM exportするファイル名
SET EXPORT_FILE=jupyte_export.tar.gz

cd /d %~dp0
REM gzip.exeがなければインストールする
cmd /C how_to_build_image\install_gzip_for_exportWSL.bat

REM エクスポート
SET E=%D%%EXPORT_FILE%
echo export  "%E%"
wsl --export %WSL_NAME% - | .\how_to_build_image\gzip.exe -9 - >  "%E%" 

