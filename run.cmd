echo Hello, Winpe!
diskpart /s %~dp0diskpart.txt
copy d:\sources\boot.wim R:\
DISM.exe /Apply-Image /ImageFile:R:\boot.wim /ApplyDrive:C:\ /index:1