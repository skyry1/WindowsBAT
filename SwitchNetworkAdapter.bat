@echo off
setlocal

echo 使用するアダプタを選択してください。
echo イーサーネット:1
echo Wi-Fi         :2
echo すべて有効    :3

set /p p="> "
If %p%==1 (
  echo イーサネットを有効状態にします。
  netsh interface set interface name="イーサネット" admin=enabled
  netsh interface set interface name="Wi-Fi" admin=disable
) else if %p%==2 (
  echo Wi-Fiを有効状態にします。
  netsh interface set interface name="イーサネット" admin=disable
  netsh interface set interface name="Wi-Fi" admin=enabled
) else if %p%==3 (
  echo 全アダプタ有効状態にします。
  netsh interface set interface name="イーサネット" admin=enabled
  netsh interface set interface name="Wi-Fi" admin=enabled
)

pause
exit