@ECHO OFF
TITLE Enable Microsoft Store
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
net stop wuauserv
net stop bits
cd "C:\Windows\SoftwareDistribution"
del /Q *.* /s
net start wuauserv
net start bits
sfc /scannow
ECHO START MICROSOFT STORE NOW
PAUSE