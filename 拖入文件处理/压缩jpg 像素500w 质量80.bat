@echo off

:: ���ߣ���˧����
:: ���ڣ�2021 �� 6 �� 18 ��
:: ���д˽ű���Ҫ��ȷ����װ�У�ImageMagick

for %%i in (%*) do (
	if /i %%~xi==.jpg (
	    magick %%i -resize "5000000@" -quality 80 %%i
	)
)

echo Mission complete! 

pause
