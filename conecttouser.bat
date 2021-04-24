@echo off
query session
@echo ###############################
set /p id1="Choose session ID to connect: "
echo %id1%
mstsc.exe /shadow:%id1% /control
