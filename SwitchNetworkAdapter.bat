@echo off
setlocal

echo �g�p����A�_�v�^��I�����Ă��������B
echo �C�[�T�[�l�b�g:1
echo Wi-Fi         :2
echo ���ׂėL��    :3

set /p p="> "
If %p%==1 (
  echo �C�[�T�l�b�g��L����Ԃɂ��܂��B
  netsh interface set interface name="�C�[�T�l�b�g" admin=enabled
  netsh interface set interface name="Wi-Fi" admin=disable
) else if %p%==2 (
  echo Wi-Fi��L����Ԃɂ��܂��B
  netsh interface set interface name="�C�[�T�l�b�g" admin=disable
  netsh interface set interface name="Wi-Fi" admin=enabled
) else if %p%==3 (
  echo �S�A�_�v�^�L����Ԃɂ��܂��B
  netsh interface set interface name="�C�[�T�l�b�g" admin=enabled
  netsh interface set interface name="Wi-Fi" admin=enabled
)

pause
exit