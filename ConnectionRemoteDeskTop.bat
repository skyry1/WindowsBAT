@echo off
setlocal

:start
echo リモートデスクトップに接続します。
echo サーバー1号機:1
echo サーバー2号機:2
echo サーバー3号機:3

set /p p="> "
If %p%==1 (
  SET SERVER=XXX
  SET USERNAME=XXX
  SET PASSWORD=XXX
) else if %p%==2 (
  SET SERVER=XXX
  SET USERNAME=XXX
  SET PASSWORD=XXX
) else if %p%==3 (
  SET SERVER=XXX
  SET USERNAME=XXX
  SET PASSWORD=XXX
) else (
  echo 指定されたキーは存在しません。
  pause
  cls
  goto start
)

echo リモートデスクトップの接続を開始します。
Cmdkey /generic:TERMSRV/%SERVER% /user:%USERNAME% /pass:%PASSWORD%
Start mstsc /v:%SERVER%
Timeout 2
Cmdkey /delete:TERMSRV/%SERVER%
pause
exit