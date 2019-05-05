echo Hello, Winpe!
diskpart /s %~dp0diskpart.txt
copy d:\sources\boot.wim M:\
DISM.exe /Apply-Image /ImageFile:M:\boot.wim /ApplyDir:C:\ /index:1
bcdboot C:\windows /s S: /f UEFI
