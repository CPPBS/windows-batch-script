setlocal enabledelayedexpansion
@echo off

:: ���ߣ���˧����
:: ���ڣ�2021 �� 6 �� 18 ��
:: ���д˽ű���Ҫ��ȷ����װ�У�ImageMagick
:: ����ű������������������� 500w �� jpg �� jpeg ͼƬ
:: ��С�ֱ��ʵ� 500w ���أ����Ұ����� 80 ѹ����

for %%i in (%*) do (
	
	if /i %%~xi==.jpg (
		set �Ƿ���=yes
	) else if /i %%~xi==.jpeg (
		set �Ƿ���=yes
	) else (
		set �Ƿ���=noo
	)
	
	if /i !�Ƿ���!==yes (
		echo ���ڴ��� %%i
		magick %%i -resize "5000000@>" -quality 80 %%i
	)
)

echo Mission complete! 

pause
