@echo off
setlocal

:start
echo 解像度を変更します。
echo 3840 × 2160 : 1
echo 1920 × 1080 : 2

set /p p="> "
If %p%==1 (
  powershell -NoProfile -ExecutionPolicy Unrestricted .\ChangeResolution.ps1 3840 2160
) else if %p%==2 (
  powershell -NoProfile -ExecutionPolicy Unrestricted .\ChangeResolution.ps1 1920 1080
) else (
  echo 指定されたキーは存在しません。
  pause
  cls
  goto start
)
exit