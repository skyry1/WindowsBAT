rem �܂��J���җp�R�}���h�v�����v�g���N�����Ă���
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

rem MSBuild�Ńr���h����
cd %~dp0
MSBuild %sln�t�@�C���̃p�X% /t:clean;rebuild /p:Configuration=Release;Platform="Any CPU"
rem MSBuild %sln�t�@�C���̃p�X% /t:clean;rebuild /p:Configuration=Debug;Platform="Any CPU"
if %ERRORLEVEL% neq 0 (
    echo ErrorLevel:%ERRORLEVEL%
    echo �r���h���s
)
