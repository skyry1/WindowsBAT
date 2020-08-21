@echo off

rem NGEN対象資産があるディレクトリに移動
cd C:\work

rem NGENを実行する
for /r %%i in (*.dll, *.exe) do (
  echo ファイル名：%%i
  
  rem NGENをインストールするかアンインストールするかソースを修正してください
  rem C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe install %%i
  rem C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe uninstall %%i
)
pause