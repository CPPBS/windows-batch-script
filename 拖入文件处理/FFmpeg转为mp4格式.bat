@echo off
setlocal enabledelayedexpansion

:: ���ߣ�Haujet Zhao
:: ���ڣ�2021 �� 2 �� 10 ��
:: ���д˽ű���Ҫ��ȷ����װ�У�FFmpeg

for %%i in (%*) do (
	if /i %%~xi neq .mp4 (
		set �����ļ�·��=%%~dpi
		set �����ļ�����=%%~ni
		set �����ļ���չ��=%%~xi
		
		set ȫ��ѡ��=-y -hide_banner
		
		set �����ļ�ѡ��=-i
		set �����ļ�="%%~i"
		
		set ����ļ�ѡ��=-c copy
		set ����ļ���="!�����ļ�·��!!�����ļ�����!.mp4"
		
		set ����=ffmpeg !ȫ��ѡ��! !�����ļ�ѡ��! !�����ļ�! !����ļ�ѡ��! !����ļ���!
		
		echo=
		echo !����!
		echo=
		
		!����!
	)
)

echo Mission complete! 

pause
