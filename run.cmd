echo Hello, Winpe!
diskpart /s %~dp0diskpart.txt
copy d:\sources\boot.wim M:\
DISM.exe /Apply-Image /ImageFile:M:\boot.wim /ApplyDrive:C:\ /index:1
