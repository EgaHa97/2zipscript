:@Echo off

PATH C:\Program Files\WinRAR

FOR /R %%f IN (*.bak) DO IF EXIST %%f winrar a -ep -m5 -df -tl -inul -mt4 -afzip -y %%~pf\%%~nf.zip %%f
