@echo off
setlocal
rem 初版

rem 削除対象日付を取得
FOR /F "usebackq" %%a IN (`powershell [DateTime]::Today.AddDays"("-8")".ToString"("'yyyyMMdd'")"`) DO SET targetday=%%a
echo %targetday%
rem 削除対象ファイル名を設定
set targetFile=log_%targetday%.log
echo %targetFile%
rem 削除対象のファイルのフルパスを設定
set targetFilePath=C:\work\%targetFile%
echo %targetFilePath%
rem ファイルを削除する
del %targetFilePath%

exit