rem まず開発者用コマンドプロンプトを起動してから
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

rem MSBuildでビルドする
cd %~dp0
MSBuild %slnファイルのパス% /t:clean;rebuild /p:Configuration=Release;Platform="Any CPU"
rem MSBuild %slnファイルのパス% /t:clean;rebuild /p:Configuration=Debug;Platform="Any CPU"
if %ERRORLEVEL% neq 0 (
    echo ErrorLevel:%ERRORLEVEL%
    echo ビルド失敗
)
