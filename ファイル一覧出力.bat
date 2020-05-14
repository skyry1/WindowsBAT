@echo off
setlocal

rem エクセルファイルを検索する場合
dir *.xlsx /s /b/a -d >list.log

rem vbファイルを検索する場合
rem dir *.vb /s /b/a -d >list.log
