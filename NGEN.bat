@echo off

rem NGEN�Ώێ��Y������f�B���N�g���Ɉړ�
cd C:\work

rem NGEN�����s����
for /r %%i in (*.dll, *.exe) do (
  echo �t�@�C�����F%%i
  
  rem NGEN���C���X�g�[�����邩�A���C���X�g�[�����邩�\�[�X���C�����Ă�������
  rem C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe install %%i
  rem C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe uninstall %%i
)
pause