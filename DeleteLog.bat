@echo off
setlocal
rem ����

rem �폜�Ώۓ��t���擾
FOR /F "usebackq" %%a IN (`powershell [DateTime]::Today.AddDays"("-8")".ToString"("'yyyyMMdd'")"`) DO SET targetday=%%a
echo %targetday%
rem �폜�Ώۃt�@�C������ݒ�
set targetFile=log_%targetday%.log
echo %targetFile%
rem �폜�Ώۂ̃t�@�C���̃t���p�X��ݒ�
set targetFilePath=C:\work\%targetFile%
echo %targetFilePath%
rem �t�@�C�����폜����
del %targetFilePath%

exit