@echo off
setlocal

:start
echo �����[�g�f�X�N�g�b�v�ɐڑ����܂��B
echo �T�[�o�[1���@:1
echo �T�[�o�[2���@:2
echo �T�[�o�[3���@:3

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
  echo �w�肳�ꂽ�L�[�͑��݂��܂���B
  pause
  cls
  goto start
)

echo �����[�g�f�X�N�g�b�v�̐ڑ����J�n���܂��B
Cmdkey /generic:TERMSRV/%SERVER% /user:%USERNAME% /pass:%PASSWORD%
Start mstsc /v:%SERVER%
Timeout 2
Cmdkey /delete:TERMSRV/%SERVER%
pause
exit