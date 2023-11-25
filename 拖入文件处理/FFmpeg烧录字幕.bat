@echo off
setlocal enabledelayedexpansion

REM ����Ƿ��ṩ�������ļ�

if "%~dpnx1" == "" (
    echo �÷�: %0 ^<��Ƶ�ļ�·��^>
    pause
    exit /b
)

for %%i in (%*) do (
    REM �����ļ������ļ���
    cd "%%~dpi"

    REM ��ȡ������Ƶ�ļ����ļ�������չ��
    set "input_file=%%~dpnxi"
    set "file_name=%%~ni"
    set "file_extension=%%~xi"

    REM ������Ļ�ļ�·��
    set "subtitle_file=!file_name!.srt"

    REM �����Ļ�ļ��Ƿ����
    if not exist "!subtitle_file!" (
        echo δ�ҵ���Ļ�ļ�: !subtitle_file!
        pause
        exit /b
    )

    REM ��������ļ�·��
    set "output_file=!file_name!_with_subtitles.mp4"

    REM ʹ�� ffmpeg ����ĻǶ�뵽��Ƶ��
    ffmpeg -i "!input_file!" -vf subtitles="!subtitle_file!" -c:a copy "!output_file!"

    echo ��Ļ�ѳɹ�Ƕ�뵽��Ƶ�У�����ļ�Ϊ: !output_file!

    endlocal
)


