@echo off
goto 1
:0
cls && title %Username%: Exit Screen (Subroutine: 0)
color c && if defined clrdef (color %clrdef%)
echo ARE YOU SURE YOU WANT TO EXIT? (Y/N)
echo .
choice /c 1zyn0 /m "Your option: " /n
if %errorlevel% == 1 (goto 1)
if %errorlevel% == 2 (goto %subr%)
if %errorlevel% == 3 (exit)
if %errorlevel% == 4 (goto %subr%)
if %errorlevel% == 5 (goto 0)
:1
cls
reg query HKCU\Software\Control10 > nul
cls
if %errorlevel% == 0 (
for /f "tokens=3" %%a in ('reg query "HKCU\Software\Control10" /v Color ^|findstr /ri "REG_SZ"') do set regcol=%%a
set clrdef=%regcol%
if defined clrdef (color %clrdef%)
) else (color 3)
set subr=1 > nul
title %Username%: Control Prompt Homepage (Subroutine: %SUBR%)
if defined clrdef (color %clrdef%)
echo -------- Welcome to Control Prompt (Control Panel made in cmd) --------
if "%ERRORLEVEL%" GEQ 2 (
echo NOTE: IN ORDER TO ACCESS MORE SETTINGS MAKE SURE YOU RUN THIS BATCH AS ADMINISTRATOR
echo ERRORLEVEL IS SET TO %ERRORLEVEL%
) else if "%ERRORLEVEL%" == "9009" (
echo SEEMS THAT YOU HAVE FACED ERRORS/PROBLEMS WHILE USING THIS BATCH... MAKE SURE YOU'RE RUNNING AS ADMINISTRATOR AND YOU ARE ON WINDOWS 10
echo ERRORLEVEL IS SET TO %ERRORLEVEL%
) else (
echo ERRORLEVEL IS SET TO %ERRORLEVEL%
)
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if not "%version%" == "10.0" (echo NOTE: THE VERSION OF WINDOWS YOU ARE USING IS OLDER THAN WINDOWS 10.)
echo .
echo To refresh page press 1 / To exit type 0
echo .
echo System/Security Settings (PRESS A)
echo .
echo Internet/Network Settings (PRESS B)
echo .
echo Hardware and Sound (PRESS C)
echo .
echo Programs and Features (PRESS D)
echo .
echo User Accounts (PRESS E)
echo .
echo Customization/Behavio(u)r (PRESS F)
echo .
echo Time and Location (PRESS G)
echo .
echo Accessibillity Features (PRESS H)
echo .
echo Extra tools (PRESS I)
echo .
choice /c 10abcdefghi /m "Your option:" /n
if %errorlevel% == 1 (goto 1)
if %errorlevel% == 2 (goto 0)
if %errorlevel% == 3 (goto A)
if %errorlevel% == 4 (goto B)
if %errorlevel% == 5 (goto C)
if %errorlevel% == 6 (goto D)
if %errorlevel% == 7 (goto E)
if %errorlevel% == 8 (goto F)
if %errorlevel% == 9 (goto G)
if %errorlevel% == 10 (goto H)
if %errorlevel% == 11 (goto I)
:A
cls
set subr=A > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: View/Configure System/Ssecurity Settings (Subroutine: %SUBR%)
echo To go to start press Z
echo .
echo More System Info And Configuration... (PRESS A)
echo .
echo View System Variables (PRESS B)
echo .
echo Edit System/User Variables (PRESS C)
echo .
echo View Security/Maintenance Info (PRESS D)
echo .
echo Change User Account Control Settings (PRESS E)
echo .
echo View Firewall Status (PRESS F)
echo .
echo View Advanced Firewall Status (PRESS G)
echo .
echo Create Backup Copy (Windows 7) (PRESS H)
echo .
echo Show PC Name (PRESS I)
echo .
echo Remote Access Settings (PRESS J)
echo .
echo Remote Help Program (PRESS K)
echo .
echo Change Power Configuration Settings (PRESS L)
echo .
echo Computer Management Console (MMC) (PRESS M)
echo .
echo Component Services (For Advanced) (PRESS N)
echo .
echo Administrative Tools (CLSID Folder) (PRESS O)
echo .
echo System Reinstall (PRESS P)
echo .
echo System Recover (PRESS Q)
echo .
echo Scan for viruses (MRT) (PRESS R)
echo .
echo --------------------- TROUBLESHOOT YOUR PROBLEMS HERE ---------------------
echo .
echo Facing problems with security on Internet Explorer? (PRESS S)
echo (Internet Explorer RIP August 24 1995 - 15 June 2022)
echo .
echo Facing problems with system maintenance? (PRESS T)
echo .
echo Facing problems with power plan? (PRESS U)
echo .
echo Facing problems with search? (PRESS V)
echo .
echo Facing problems with Windows Update? (PRESS W)
echo .
choice /c abcdefghijklmnopqrstuvwz10 /m "Your option: " /n
if %errorlevel% == 1 (start sysdm.cpl && cls && goto A)
if %errorlevel% == 2 (cls && echo All System Variables: && set && pause && goto A)
if %errorlevel% == 3 (start rundll32 sysdm.cpl,EditEnvironmentVariables && goto A)
if %errorlevel% == 4 (start wscui.cpl && goto A)
If %errorlevel% == 5 (start UserAccountControlSettings.exe && goto A)
if %errorlevel% == 6 (start firewall.cpl && goto A)
if %errorlevel% == 7 (start wf.msc && goto A)
if %errorlevel% == 8 (start shell:::{b98a2bea-7d42-4558-8bd1-832f41bac6fd} && goto A)
if %errorlevel% == 9 (cls && echo This is your computer's name: && hostname && echo Press any key to return ... && pause > nul && goto A)
if %errorlevel% == 10 (start SystemPropertiesRemote.exe && goto A)
if %errorlevel% == 11 (start msra.exe && goto A)
if %errorlevel% == 12 (start rundll32 shell32.dll Control_RunDLL powercfg.cpl,,0 && goto A)
if %errorlevel% == 13 (start compmgmt.msc && goto A)
if %errorlevel% == 14 (start dcomcnfg.exe && goto A)
if %errorlevel% == 15 (start shell:::{d20ea4e1-3957-11d2-a40b-0c5020524153} && goto A)
if %errorlevel% == 16 (start systemreset.exe && goto A)
if %errorlevel% == 17 (start rstrui.exe && goto A)
if %errorlevel% == 18 (start mrt.exe && goto A)
if %errorlevel% == 19 (start msdt.exe /id IESecurityDiagnostic && goto A)
if %errorlevel% == 20 (start msdt.exe /id MaintenanceDiagnostic && goto A)
if %errorlevel% == 21 (start msdt.exe /id PowerDiagnostic && goto A)
if %errorlevel% == 22 (start msdt.exe /id SearchDiagnostic && goto A)
if %errorlevel% == 23 (start msdt.exe /id WindowsUpdateDiagnostic && goto A)
if %errorlevel% == 24 (goto 1)
if %errorlevel% == 25 (goto 1)
if %errorlevel% == 26 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto A
:B
cls
set subr=B > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Internet/Network Settings (Subroutine: %SUBR%)
echo To go to start press Z
echo .
echo Network And Sharing Center (PRESS A)
echo .
echo Internet Properties (PRESS B)
echo .
echo Network Adapters (PRESS C)
echo .
echo Show Devices Connected to this Network (PRESS D)
echo .
echo Share a folder to this network (PRESS E)
echo .
echo --------------------- TROUBLESHOOT YOUR PROBLEMS HERE ---------------------
echo .
echo Facing problems with network connections? (PRESS F)
echo .
echo Facing problems with network folder sharing? (PRESS G)
echo .
echo Facing problems with network adapters? (PRESS H)
echo .
echo Facing problems with network in-bound connections? (PRESS I)
echo .
echo Facing problems with connecting to your workplace network using DirectAccess? (PRESS J)
echo .
choice /c abcdefghijz10 /m "Your option: " /n
if %errorlevel% == 1 (start explorer.exe shell:::{8e908fc9-becc-40f6-915b-f4ca0e70d03d} && goto B)
if %errorlevel% == 2 (start inetcpl.cpl && goto B)
if %errorlevel% == 3 (start ncpa.cpl && goto B)
if %errorlevel% == 4 (start explorer.exe shell:::{f02c1a0d-be21-4350-88b0-7367fc96ef3c} && goto B)
if %errorlevel% == 5 (start shrpubw.exe && goto B)
if %errorlevel% == 6 (start msdt.exe /id NetworkDiagnosticsWeb && goto B)
if %errorlevel% == 7 (start msdt.exe /id NetworkDiagnosticsFileShare && goto B)
if %errorlevel% == 8 (start msdt.exe /id NetworkDiagnosticsNetworkAdapter && goto B)
if %errorlevel% == 9 (start msdt.exe /id NetworkDiagnosticsInbound && goto B)
if %errorlevel% == 10 (start msdt.exe /id NetworkDiagnosticsDA && goto B)
if %errorlevel% == 11 (goto 1)
if %errorlevel% == 12 (goto 1)
if %errorlevel% == 13 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto B
:C
cls
set subr=C > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Hardware and Sound (Subroutine: %SUBR%)
echo To go to start press Z
echo .
echo Bluetooth Devices (CLSID Folder) (PRESS A)
echo .
echo Mouse Properties (PRESS B)
echo .
echo Device Management Console (PRESS C)
echo .
echo AutoPlay Configuration (PRESS D)
echo .
echo Add/Pair Device Wizard (PRESS E)
echo .
echo Add Hardware Wizard (PRESS F)
echo .
echo Set System Volume (PRESS G)
echo .
echo Change System Sounds (PRESS H)
echo .
echo Playback Devices (PRESS I)
echo .
echo Recording Devices (PRESS J)
echo .
echo Windows Mobillity Center for Laptops (PRESS K)
echo .
echo Safely Remove/Disconnect Hardware (PRESS L)
echo .
echo Keyboard Properties (PRESS M)
echo .
echo --------------------- TROUBLESHOOT YOUR PROBLEMS HERE ---------------------
echo .
echo Facing problems with a device/hardware? (PRESS N)
echo .
echo Facing problems with printer? (PRESS O)
echo .
echo Facing problems with audio playback? (PRESS P)
echo .
echo Facing problems with audio recording? (PRESS Q)
echo .
echo Facing problems with Windows Media Player DVD? (PRESS R)
echo .
echo Facing problems with Bluetooth connections? (PRESS S)
echo .
echo Facing problems with keyboard? (PRESS T)
echo .
choice /c abcdefghijklmnopqrstz10 /m "Your option: " /n
if %errorlevel% == 1 (start explorer.exe shell:::{28803f59-3a75-4058-995f-4ee5503b023c} && goto C)
if %errorlevel% == 2 (start main.cpl && goto C)
if %errorlevel% == 3 (start hdwwiz.cpl && goto C)
if %errorlevel% == 4 (start explorer.exe shell:::{9c60de1e-e5fc-40f4-a487-460851a8d915} && goto C)
if %errorlevel% == 5 (start devicepairingwizard.exe && goto C)
if %errorlevel% == 6 (start hdwwiz.exe && goto C)
if %errorlevel% == 7 (start sndvol.exe && goto C)
if %errorlevel% == 8 (start rundll32 Shell32.dll Control_RunDLL mmsys.cpl,,2 && goto C)
if %errorlevel% == 9 (start mmsys.cpl && goto C)
if %errorlevel% == 10 (start rundll32 Shell32.dll Control_RunDLL mmsys.cpl,,1 && goto C)
if %errorlevel% == 11 (start mblctr.exe && goto C)
if %errorlevel% == 12 (start rundll32.exe shell32.dll Control_RunDLL hotplug.dll && goto C)
if %errorlevel% == 13 (start rundll32.exe shell32.dll,Control_RunDLL main.cpl @1 && goto C)
if %errorlevel% == 14 (start msdt.exe /id DeviceDiagnostic && goto C)
if %errorlevel% == 15 (start msdt.exe /id PrinterDiagnostic && goto C)
if %errorlevel% == 16 (start msdt.exe /id AudioPLaybackDiagnostic && goto C)
if %errorlevel% == 17 (start msdt.exe /id AudioRecordingDiagnostic && goto C)
if %errorlevel% == 18 (start msdt.exe /id WindowsMediaPlayerDVDDiagnostic && goto C)
if %errorlevel% == 19 (start msdt.exe /id BluetoothDiagnostic && goto C)
if %errorlevel% == 20 (start msdt.exe /id KeyboardDiagnostic && goto C)
if %errorlevel% == 21 (goto 1)
if %errorlevel% == 22 (goto 1)
if %errorlevel% == 23 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto C
:D
cls
set subr=D > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Programs and Features (Subroutine: %SUBR%)
echo To go to start press Z
echo .
echo Show All Apps Installed (PRESS A)
echo .
echo Uninstall Products/Programs (via cmd) (PRESS B)
echo .
echo Enable/Disable Windows Features (PRESS C)
echo .
echo View Installed Updates (PRESS D)
echo .
echo Configure Default Apps/Programs (Settings Page) (PRESS E)
echo .
echo Open Files With Other Apps/Programs (via cmd) (PRESS F)
echo .
echo --------------------- TROUBLESHOOT YOUR PROBLEMS HERE ---------------------
echo .
echo Facing problems with Internet Explorer's performance? (PRESS G) 
echo .
echo Facing problems with Internet Explorer's security? (PRESS H)
echo .
echo Facing problems with program compatibillity? (PRESS I)
echo .
echo Facing problems with Windows Media Player configuration/settings? (PRESS J)
echo .
echo Facing problems with Windows Media Player library? (PRESS K)
echo .
choice /c abcdefghijkz10 /m "Your option: " /n
if %errorlevel% == 1 (cls && echo All Programs Installed && echo . && wmic product get name && echo . && echo Press any key to return... && pause > nul && goto D)
if %errorlevel% == 2 (goto D1)
if %errorlevel% == 3 (start OptionalFeatures.exe && goto D)
if %errorlevel% == 4 (start explorer.exe shell:::{d450a8a1-9568-45c7-9c0e-b4f9fb4537bd} && goto D)
if %errorlevel% == 5 (start ms-settings:defaultapps && goto D)
if %errorlevel% == 6 (goto D2)
if %errorlevel% == 7 (start msdt.exe /id IEBrowseWebDiagnostic && goto D)
if %errorlevel% == 8 (start msdt.exe /id IESecurityDiagnostic && goto D)
if %errorlevel% == 9 (start msdt.exe /id PCWDiagnostic && goto D)
if %errorlevel% == 10 (start msdt.exe /id WindowsMediaPlayerConfigurationDiagnostic && goto D)
if %errorlevel% == 11 (start msdt.exe /id WindowsMediaPlayerLibraryDiagnostic && goto D)
if %errorlevel% == 12 (goto 1)
if %errorlevel% == 13 (goto 1)
if %errorlevel% == 14 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto D
:D1
set subr=D1 > nul
cls && color 4 && if defined clrdef (color %clrdef%) > nul && echo Which Program To Uninstall? Please Wait Until The Apps Show...
title %Username%: Product Uninstall Stage (Subroutine: %SUBR%)
echo .
wmic product get name
echo .
echo Press any key when the apps show...
pause > nul
echo Type here the name of the Product/Program to Uninstall (COPY PASTE THE NAME OF THE PRODUCT AND PASTE IT. DO NOT ATTEMPT TO TYPE IT BY YOURSELF)
set /p D1=Product name to uninstall: 
if %D1% == Z (goto D)
if %D1% == z (goto D)
wmic product where name="%B1%" call uninstall
echo Finished!
pause
goto D
:D2
cls
set subr=D2 > nul
echo With which app/program would you like to open a file?
for /f "tokens=* delims=" %%p in ('mshta.exe "about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>"') do set "file=%%p"
cls
echo echo With which app/program would you like to open this file?
echo .
echo Credits to: WinXprt
echo .
echo .
echo File Selected: %FILE%
echo YouTube: https://youtube.com/@winxprt
if defined file (
start Rundll32 Shell32.dll,OpenAs_RunDLL %file% && color a && if defined clrdef (color %clrdef%) && echo Finished!
ping localhost /n 5 > nul
cls
echo Credits to: WinXprt
echo .
echo .
echo File Selected: %FILE%
echo YouTube: https://youtube.com/@winxprt
echo Returning in 4 seconds...
ping localhost /n 2 > nul
cls
echo Credits to: WinXprt
echo .
echo .
echo File Selected: %FILE%
echo YouTube: https://youtube.com/@winxprt
echo Returning in 3 seconds...
ping localhost /n 2 > nul
cls
echo Credits to: WinXprt
echo .
echo .
echo File Selected: %FILE%
echo YouTube: https://youtube.com/@winxprt
echo Returning in 2 seconds...
ping localhost /n 2 > nul
cls
echo Credits to: WinXprt
echo .
echo .
echo File Selected: %FILE%
echo YouTube: https://youtube.com/@winxprt
echo Returning in 1 seconds...
ping localhost /n 2 > nul
cls
echo Credits to: WinXprt
echo .
echo .
echo File Selected: %FILE%
echo YouTube: https://youtube.com/@winxprt
echo Returning in 0 seconds...
set "file=" > nul
goto D
) else (cls && echo Operation cancelled && pause && goto D)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo A problem caused to batch! && echo Make sure you give administrative privileges
pause && goto D
:E
cls
set subr=E > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: User Accounts (Subroutine: %SUBR%)
echo To go to start press Z
echo .
echo Local Users Management Console (MMC) (PRESS A)
echo .
echo Local Users Management (PRESS B)
echo .
echo Manage Current User (PRESS C)
echo .
echo View/Edit Saved Credentials (PRESS D)
echo .
echo Change User Account Control Settings (PRESS E)
echo .
choice /c abcdez10 /m "Your option: " /n
if %errorlevel% == 1 (start lusrmgr.msc && goto E)
if %errorlevel% == 2 (start netplwiz.exe && goto E)
if %errorlevel% == 3 (start rundll32.exe shell32.dll Control_RunDLL nusrmgr.cpl && goto E)
if %errorlevel% == 4 (start rundll32.exe keymgr.dll KRShowKeyMgr && goto E)
if %errorlevel% == 5 (start useraccountcontrolsettings.exe && goto E)
if %errorlevel% == 6 (goto 1)
if %errorlevel% == 7 (goto 1)
if %errorlevel% == 8 (goto 0)
cls
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto E
:F
cls
set subr=F > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Customization/Behavio(ur) (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo Screen Color Customization (FOR ADVANCED USERS ONLY) (PRESS A)
echo .
echo Customize Logonui.exe (PRESS B)
echo .
echo Edit Folder Options (PRESS C)
echo .
echo Change Seacrh Options/Behavio(u)r (PRESS D)
echo .
echo General Explorer Options (PRESS E)
echo .
echo Desktop/Taskbar/Explorer.exe settings (PRESS F)
echo .
echo Administrative System Settings (FOR ADVANCED USERS ONLY) (PRESS G)
echo .
echo Customize screensaver properties (PRESS H)
echo .
echo Customize system's screensavers (PRESS I)
echo .
echo Customize desktop icons (PRESS J)
echo .
echo Settings that you probably didn't know existed (PRESS K)
echo .
choice /c abcdefghijkz10 /m "Your option: " /n
if %errorlevel% == 1 (start dccw.exe && goto F)
if %errorlevel% == 2 (goto FB)
if %errorlevel% == 3 (start rundll32 shell32.dll Options_RunDLL 7 && goto F)
if %errorlevel% == 4 (start rundll32 shell32.dll Options_RunDLL 2 && goto F)
if %errorlevel% == 5 (start rundll32 shell32.dll Options_RunDLL 0 && goto F)
if %errorlevel% == 6 (goto FBB)
if %errorlevel% == 7 (goto FG)
if %errorlevel% == 8 (start rundll32 shell32.dll Control_RunDLL desk.cpl,,1 && goto F)
if %errorlevel% == 9 (goto FI)
if %errorlevel% == 10 (start rundll32 shell32.dll Control_RunDLL desk.cpl,,5 && goto F)
if %errorlevel% == 11 (goto FK)
if %errorlevel% == 12 (goto 1)
if %errorlevel% == 13 (goto 1)
if %errorlevel% == 14 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto F
:FK
cls
set subr=FK > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Settings that you probably didn't know existed (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo (NOTE: If a change won't apply try pressing R)
echo .
echo .
echo Switch apps in taskbar without clicking the thumbnail (PRESS A)
echo .
echo Switch apps in taskbar by clicking the thumbnail (PRESS B)
echo .
echo Find wallpaper location (PRESS C)
echo i: In order to work properly enter 2 times, once each time start
echo .
echo Change search box/cortana text (PRESS D) (Works in newer versions of Windows 10)
echo .
echo Taskbar animations: On (Default) (PRESS E)
echo .
echo Taskbar animations: Off (Recommended for slow computers (PRESS F)
echo .
echo Taskbar show window on thumbnail hover: On (Default) (PRESS G)
echo .
echo Taskbar show window on thumbnail hover: Off (PRESS H)
echo .
echo Always show old context menu (Works in Windows 11) (PRESS I)
echo .
echo Always show new context menu (Default) (Works in Windows 11) (PRESS J)
echo .
echo Enable Windows Vista/7/8/8.1 Volume Control (PRESS K) 
echo Source https://winaero.com/ (TO VISIT SITE PRESS W)
echo .
echo Disable Windows Vista/7/8/8.1 Volume Control (PRESS L)
echo Source https://winaero.com/ (TO VISIT SITE PRESS W)
echo .
echo Enable Windows 7 Photo Viewer (PRESS M)
echo .
echo Disable Windows 7 Photo Viewer (PRESS N)
echo .
choice /c abcdefghijklmnwrz10 /m "Your option: " /n
if %errorlevel% == 1 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v LastActiveClick /t REG_DWORD /d 1 /f > nul && goto FK)
if %errorlevel% == 2 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v LastActiveClick /t REG_DWORD /d 0 /f > nul && goto FK)
if %errorlevel% == 3 (
cls && for /f "tokens=3" %%a in ('reg query "HKCU\Control Panel\Desktop"  /v Wallpaper  ^|findstr /ri "REG_SZ"') do set wlploc=%%a
echo WallPaper image location: %wlploc% && start %wlploc%\..\ && pause && goto FK
)
if %errorlevel% == 4 (goto FKD)
if %errorlevel% == 5 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v TaskbarAnimations /t REG_DWORD /d 1 /f > nul && goto FK)
if %errorlevel% == 6 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v TaskbarAnimations /t REG_DWORD /d 0 /f > nul && goto FK)
if %errorlevel% == 7 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v DisablePreviewWindow /t REG_DWORD /d 0 /f > nul && goto FK)
if %errorlevel% == 8 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v DisablePreviewWindow /t REG_DWORD /d 1 /f > nul && goto FK)
if %errorlevel% == 9 (reg add HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32 /ve /f > nul && goto FK)
if %errorlevel% == 10 (reg delete HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2} /f > nul && goto FK)
if %errorlevel% == 11 (reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" /v EnableMtcUvc /t REG_DWORD /d 0 /f > nul && goto FK)
if %errorlevel% == 12 (reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" /v EnableMtcUvc /f > nul && goto FK)
if %errorlevel% == 13 (
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .bmp /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .dib /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpg /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpe /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpeg /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jxr /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jfif /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .wdp /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .png /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .gif /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .tiff /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .tif /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
cls
echo On the settings app, select Photo Viewer and pick Windows Photo Viewer
start ms-settings:defaultapps > nul
echo When you're done press any button on your keyboard
pause > nul
goto FK
)
if %errorlevel% == 14 (
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .bmp /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .dib /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpg /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpe /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpeg /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jxr /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jfif /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .wdp /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .png /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .gif /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .tiff /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul
reg add "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .tif /t REG_SZ /d "PhotoViewer.FileAssoc.TIFF" /f > nul

reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .bmp /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .dib /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpg /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpe /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jpeg /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jxr /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .jfif /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .wdp /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .png /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .gif /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .tiff /f > nul
reg delete "HKLM\Software\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v .tif /f > nul
goto FK
)
if %errorlevel% == 15 (start https://winaero.com/ && goto FK)
if %errorlevel% == 16 (taskkill /f /im explorer.exe > nul && start explorer.exe > nul && goto FK)
if %errorlevel% == 17 (goto F)
if %errorlevel% == 18 (goto 1)
if %errorlevel% == 19 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FK
:FI
set subr=FI > nul
color 3 && if defined clrdef (color %clrdef%)
title Customize system's screensavers (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Customize Bubbles screensaver (PRESS A)
echo .
echo Customize Mystify screensaver (PRESS B)
echo .
echo Customize Ribbons screensaver (PRESS C)
echo .
choice /c abcz10 /m "Your option: " /n
if %errorlevel% == 1 (goto FIA)
if %errorlevel% == 2 (goto FIB)
if %errorlevel% == 3 (goto FIC)
if %errorlevel% == 4 (goto F)
if %errorlevel% == 5 (goto 1)
if %errorlevel% == 6 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FI
:FIA
set subr=FIA > nul
color 3 && if defined clrdef (color %clrdef%) > nul
title Customize Bubbles screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Enable bubble shadows (PRESS A)
echo .
echo Disable bubble shadows (PRESS B)
echo .
echo Make the bubbles transparent (PRESS C)
echo .
echo Make the bubbles opaque (PRESS D)
echo .
echo Make the background transparent (PRESS E)
echo .
echo Make the background black (PRESS F)
echo .
echo Enable Bubbles Turbulence (PRESS G)
echo !: Bubbles will have gray color
echo .
echo Enable Bubbles Turbulence and force black color (PRESS H)
echo .
echo Disable Bubbles Turbulence (PRESS I)
echo .
echo Set Turbulence speed (PRESS J)
echo .
echo Set number of octaves (PRESS K)
echo .
echo Change bubbles size (PRESS L)
echo .
echo Change amount of bubbles which will show (PRESS M)
echo .
echo Reset all settings (PRESS Y)
echo .
choice /c abcdefghijklmyz10 /m "Your option: " /n
if %errorlevel% == 1 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v ShowShadows /d 1 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 2 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v ShowShadows /d 0 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 3 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v MaterialGlass /d 1 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 4 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v MaterialGlass /d 0 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 5 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v ShowBubbles /d 1 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 6 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v ShowBubbles /d 0 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 7 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceForce /d 1 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 8 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceForce /d 0 /t REG_DWORD /reg:32 /f && cls && goto FIA)
if %errorlevel% == 9 (reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceForce /f && cls && goto FIA)
if %errorlevel% == 10 (goto FIAJ)
if %errorlevel% == 11 (goto FIAK)
if %errorlevel% == 12 (goto FIAL)
if %errorlevel% == 13 (goto FIAM)
if %errorlevel% == 14 (
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v ShowShadows /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v MaterialGlass /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v ShowBubbles /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceForce /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v Radius /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v SphereDensity /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceNumOctaves /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceSpeed /f > nul
goto FIA
)
if %errorlevel% == 15 (goto FI)
if %errorlevel% == 16 (goto 1)
if %errorlevel% == 17 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FIA
:FIAJ
set subr=FIAJ
color 3 && if defined clrdef (color %clrdef%)
cls
title Customize Bubbles screensaver (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo Customize turbulence speed:
echo Type below a number ranging from (MIN) 0 to (MAX) 10
set /p FIAJ=Your value: 
if %FIAJ% == Z (goto FIA)
if %FIAJ% == z (goto FIA)
if %FIAJ% LEQ 10 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceSpeed /d %FIAJ% /t REG_DWORD /reg:32 /f && cls && echo Successfully set! && ping localhost /n 2 > nul
goto FIA
) else (
cls && echo Type again a number from 0 through 10 && ping localhost /n 4 > nul && goto FIAJ
)
goto FIA
:FIAK
set subr=FIAK
color 3 && if defined clrdef (color %clrdef%)
title Customize Bubbles screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Set number of octaves:
echo Type below a number ranging from (MIN) 0 to (MAX) 255
set /p FIAK=Your value: 
if %FIAK% == Z (goto FIA)
if %FIAK% == z (goto FIA)
if %FIAK% LEQ 255 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v TurbulenceNumOctaves /d %FIAK% /t REG_DWORD /reg:32 /f && cls && echo Successfully set! && ping localhost /n 2 > nul
goto FIA
) else (
cls && echo Type again a number from 0 through 255 && ping localhost /n 4 > nul && goto FIAK
)
goto FIA
:FIAL
set subr=FIAL
color 3 && if defined clrdef (color %clrdef%)
title Customize Bubbles screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Customize bubbles size:
echo Type below a number ranging from (MIN) 1090 to (MAX) 1130 (Default: 1118)
set /p FIAL=Your value: 
if %FIAL% == Z (goto FIA)
if %FIAL% == z (goto FIA)
if %FIAL% LEQ 1130 (
if %FIAL% GEQ 1090 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v Radius /d %FIAL%000000 /t REG_DWORD /reg:32 /f && cls && echo Successfully set! && ping localhost /n 2 > nul
goto FIA
)
cls && echo Type again a number from 1090 through 1130 && ping localhost /n 4 > nul && goto FIAL
)
if %FIAL% GEQ 1090 (
if %FIAL% LEQ 1130 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v Radius /d %FIAL%000000 /t REG_DWORD /reg:32 /f && cls && echo Successfully set! && ping localhost /n 2 > nul
goto FIA
)
cls && echo Type again a number from 1090 through 1130 && ping localhost /n 4 > nul && goto FIAL
)
goto FIA
:FIAM
set subr=FIAM
title Customize Bubbles screensaver (Subroutine: %SUBR%)
color 3 && if defined clrdef (color %clrdef%)
cls
echo To go back press Z
echo .
echo Change the amount of bubbles which will appear:
echo Type below a number ranging from (min) 1000 to (max) 2100
set /p FIAM=Your value: 
if %FIAM% == Z (goto FIA)
if %FIAM% == z (goto FIA)
if %FIAM% LEQ 2100 (
if %FIAM% GEQ 1000 (
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Screensavers\Bubbles /v SphereDensity /d %FIAM%000000 /t REG_DWORD /f && cls && echo Successfully set! && ping localhost /n 2 > nul
goto FIA
) else (
cls && echo Type again a number from 1000 through 2100 && ping localhost /n 4 > nul && goto FIAM
)
) else (
cls && echo Type again a number from 1000 through 2100 && ping localhost /n 4 > nul && goto FIAM
)
if %FIAM% == Z (goto FIA)
if %FIAM% == z (goto FIA)
:FIB
set subr=FIB > nul
color 3 && if defined clrdef (color %clrdef%)
title Customize Mystify screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Enable ribbons blur (Default. Works in Windows 7) (PRESS A)
echo .
echo Disable ribbons blur (Works in Windows 7) (PRESS B)
echo .
echo Set amount of lines (PRESS C)
echo .
echo Set line width (PRESS D)
echo .
echo Reset all settings (PRESS Y)
echo .
choice /c abcdyz10 /m "Your option: " /n
if %errorlevel% == 1 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Mystify /v Blur /t REG_DWORD /d 1 /f > nul && goto FIB)
if %errorlevel% == 2 (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Mystify /v Blur /t REG_DWORD /d 0 /f > nul && goto FIB)
if %errorlevel% == 3 (goto FIBC)
if %errorlevel% == 4 (goto FIBD)
if %errorlevel% == 5 (
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Mystify /v Blur /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Mystify /v NumLines /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Mystify /v LineWidth /f > nul
goto FIB
)
if %errorlevel% == 6 (goto FI)
if %errorlevel% == 7 (goto 1)
if %errorlevel% == 8 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FIB
:FIBC
set subr=FIBC > nul
color 3 && if defined clrdef (color %clrdef%)
title Customize Ribbons screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Set amount of lines/ribbons: 
echo Type below a number between (min) 0 and (max) 100: 
echo .
set /p FIBC=Your value: 
if %FIBC% == Z (goto FIB)
if %FIBC% == z (goto FIB)
if %FIBC% LEQ 100 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Mystify /v NumLines /t REG_DWORD /d %FIBC% /reg:32 /f > nul && cls && echo Successfully set! && ping localhost /n 2 > nul && goto FIB
) else (cls && echo Type again a number from 0 through 100 && ping localhost /n 4 > nul && goto FIBC)
goto FIBC
:FIBD
set subr=FIBD > nul
color 3 && if defined clrdef (color %clrdef%)
title Customize Ribbons screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Set width of lines/ribbons: 
echo Type below a number between (min) 1000 and (max) 1080: 
echo .
set /p FIBD=Your value: 
if %FIBD% == Z (goto FIB)
if %FIBD% == z (goto FIB)
if %FIBD% GEQ 1000 (
if %FIBD% LEQ 1080 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Mystify /v LineWidth /d %FIBD% /t REG_DWORD /f > nul

) else (
cls && echo Type again a number from 1000 through 1080 && ping localhost /n 4 > nul && goto FIBD)
)
) else (cls && echo Type again a number from 1000 through 1080 && ping localhost /n 4 > nul && goto FIBD)
goto FIB
:FIC
set subr=FIC > nul
color 3 && if defined clrdef (color %clrdef%)
title Customize Ribbons screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Enable Ribbons Fade-Out Effect (Default) (PRESS A)
echo .
echo Disable Ribbons Fade-Out Effect (PRESS B)
echo .
echo Adjust number of ribbons (PRESS C)
echo .
echo Adjust width of ribbons (PRESS D)
echo .
echo Reset all settings (PRESS Y)
echo .
choice /c abcdyz10 /m "Your option: " /n
if %errorlevel% == A (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Ribbons /v Blur /d 1 /t REG_DWORD /reg:32 /f > nul && goto FIC)
if %errorlevel% == B (reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Ribbons /v Blur /d 0 /t REG_DWORD /reg:32 /f > nul && goto FIC)
if %errorlevel% == C (goto FICC)
if %errorlevel% == D (goto FICD)
if %errorlevel% == Y (
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Ribbons /v Blur /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Ribbons /v NumRibbons /f > nul
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Ribbons /v RibbonWidth /f > nul
goto FIC
)
if %errorlevel% == Z (goto FI)
if %errorlevel% == 1 (goto 1)
if %errorlevel% == 0 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FIC
:FICC
set subr=FICC > nul
color 3 && if defined clrdef (color %clrdef%)
title Customize Ribbons screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Set number of ribbons: 
echo Type below a number between (min) 0 and (max) 100: 
echo .
set /p FICC=Your value: 
if %FICC% == Z (goto FIC)
if %FICC% == z (goto FIC)
if %FICC% LEQ 100 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Ribbons /v NumRibbons /t REG_DWORD /d %FICC% /reg:32 /f > nul && cls && echo Successfully set! && ping localhost /n 2 > nul && goto FIC
) else (
cls && echo Type again a number from 0 through 8 && ping localhost /n 4 > nul && goto FICC
)
goto FIC
:FICD
set subr=FICD > nul
color 3 && if defined clrdef (color %clrdef%)
title Customize Ribbons screensaver (Subroutine: %SUBR%)
cls
echo To go back press Z
echo .
echo Set width of ribbons: 
echo Type below a number between (min) 1000 and (max) 1080: 
echo .
set /p FICD=Your value: 
if %FICD% == Z (goto FIC)
if %FICD% == z (goto FIC)
if %FICD% GEQ 1000 (
if %FICD% LEQ 1080 (
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Screensavers\Ribbons /v RibbonWidth /t REG_DWORD /d %FICD%000000 /reg:32 /f > nul && cls && echo Successfully set! && ping localhost /n 2 > nul && goto FIC
) else (cls && echo Type again a number from 1000 through 1080 && ping localhost /n 4 > nul && goto FICD)
) else (
cls && echo Type again a number from 1000 through 1080 && ping localhost /n 4 > nul && goto FICD
)
goto FIC
:FKD
set subr=FKD > nul
title Change cortana/search box text (Windows 10) (Subroutine: %SUBR%)
cls
color 3 && if defined clrdef (color %clrdef%)
echo [PRESS C TO CANCEL / TO RESTORE DEFAULT TEXT PRESS D / ENTER TO CONFIRM]
echo TO SAVE CHANGES RESTART EXPLORER OR PRESS RESEXP AFTER CONFIRMATION
set /p DC=Change search box text to: 
if "%DC%" == "C" (goto FK)
if "%DC%" == "c" (goto FK)
if "%DC%" == "Z" (goto FK)
if "%DC%" == "z" (goto FK)
if "%DC%" == "D" (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\Flighting /v RotateFlight /t REG_DWORD /d 0 /f > nul && reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\Flighting\0\SearchBoxText /v Value /t REG_SZ /d "" /f > nul && goto FK)
if "%DC%" == "d" (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\Flighting /v RotateFlight /t REG_DWORD /d 0 /f > nul && reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\Flighting\0\SearchBoxText /v Value /t REG_SZ /d "" /f > nul && goto FK)
cls && echo "%DC%" Will be set as search box text if you continue. Continue? [YES (Y) / NO (ANY OTHER LETTER)] && echo .
choice /c "yn" /n /m "Your option: "
if %errorlevel% == 1 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\Flighting /v RotateFlight /t REG_DWORD /d 1 /f > nul && reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\Flighting\0\SearchBoxText /v Value /t REG_SZ /d "%DC%" /f > nul && goto FK)
if %errorlevel% == 2 (goto FK)
cls
color 2 && if defined clrdef (color %clrdef%)
echo Bad option or a problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FK
:FG
cls
set subr=FG > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Administrative System Settings (FOR ADVANCED ONLY) (Subroutine: %SUBR%)
if %ERRORLEVEL% == 2 (
cls && echo . && echo . && echo . && echo .
echo o---------- You forgot to run Control Prompt as administrator... && echo .
echo o--------------------- Any changes won't apply!
pause
)
echo To go back press Z
echo .
echo Do not power off computer after shutdown (PRESS A)
echo  ------o i: This mode gets activated when shutdown gets run by a program or in cmd by typing "shutdown /s /t 0" command and pressing ENTER. By shutting down computer from Start menu, the screen won't appear
echo .
echo Power off computer after shutdown (Default) (PRESS B)
echo .
echo Skip machine Out-Of-Box-Experience (PRESS C)
echo .
echo Do NOT skip Out-Of-Box-Experience in startup (PRESS D)
echo .
set /p FG=Your Option: 
if "%FG%" == "A" (reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT" /v DontPowerOffAfterShutdown /t REG_DWORD /d 1 /f > nul && goto FG)
if "%FG%" == "a" (reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT" /v DontPowerOffAfterShutdown /t REG_DWORD /d 1 /f > nul && goto FG)
if "%FG%" == "B" (reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT" /v DontPowerOffAfterShutdown /t REG_DWORD /d 1 /f > nul && reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT" /v DontPowerOffAfterShutdown /f > nul && goto FG)
if "%FG%" == "b" (reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT" /v DontPowerOffAfterShutdown /t REG_DWORD /d 1 /f > nul && reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows NT" /v DontPowerOffAfterShutdown /f > nul && goto FG)
if "%FG%" == "C" (reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v SkipMachineOOBE /t REG_DWORD /d 1 /f > nul && goto FG)
if "%FG%" == "c" (reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v SkipMachineOOBE /t REG_DWORD /d 1 /f > nul && goto FG)
if "%FG%" == "D" (reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v SkipMachineOOBE /t REG_DWORD /d 0 /f > nul && goto FG)
if "%FG%" == "d" (reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v SkipMachineOOBE /t REG_DWORD /d 0 /f > nul && goto FG)
if "%FG%" == "1" (goto 1)
if "%FG%" == "0" (goto 0)
if "%FG%" == "Z" (goto F)
if "%FG%" == "z" (goto F)
if "%FG%" == "LCK" (rundll32 user32.dll LockWorkStation && goto FG)
if "%FG%" == "lck" (rundll32 user32.dll LockWorkStation && goto FG)
if "%FG%" == "RESEXP" (taskkill /f /im explorer.exe > nul && ping localhost /n 2 > nul && start explorer.exe && goto FG)
if "%FG%" == "resexp" (taskkill /f /im explorer.exe > nul && ping localhost /n 2 > nul && start explorer.exe && goto FG)
cls
color 2 && if defined clrdef (color %clrdef%)
echo Bad option or a problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FG
:FB
cls
set subr=FB > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Customize Logonui.exe (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo Press R to go to lock screen
echo .
echo Enable Background Image On Logon (PRESS A)
echo .
echo Disable Background Image On Logon (PRESS B)
echo .
echo Enable Blur On Logon (PRESS C)
echo .
echo Disable Blur On Logon (PRESS D)
echo .
echo Display Last logon info (PRESS E)
echo .
echo Do Not Display Last logon info (PRESS F)
echo .
echo Display Verbose Status (PRESS G)
echo .
echo Do Not Display Verbose Status (PRESS H)
echo .
echo Disable Lock Screen (PRESS I)
echo .
echo Enable Lock Screen (PRESS J)
echo .
echo Configure Legal Notice Message* (PRESS K)
echo .
echo                          *Legal Notice Message=A message that appears when a user tries to connect
echo .
echo Don't Display Existing Users In Logon (PRESS L)
echo .
echo Display Existing Users In Logon (PRESS M)
echo .
echo Enable Ctrl+Alt+Del requirement in lock screen (PRESS N)
echo .
echo Disable Ctrl+Alt+Del requirement in lock screen (PRESS O)
echo .
echo Do not show password reveal button when typing user password (PRESS P)
echo .
echo Show password reveal button when typing user password (PRESS Q)
echo .
choice /c abcdefghijklmnopqrz10 /m "Your option: " /n
if %errorlevel% == 1 (
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v DisableLogonBackgroundImage /d 0 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 2 (
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v DisableLogonBackgroundImage /d 1 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 3 (
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v DisableAcrylicBackgroundOnLogon /d 0 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 4 (
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v DisableAcrylicBackgroundOnLogon /d 1 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 5 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisplayLastLogonInfo /d 1 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 6 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisplayLastLogonInfo /d 0 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 7 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v VerboseStatus /d 1 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 8 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v VerboseStatus /d 0 /t REG_DWORD /f && cls && goto FB
)
if %errorlevel% == 9 (
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization /v NoLockScreen /t REG_DWORD /d 1 /f && cls && goto FB
)
if %errorlevel% == 10 (
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization /v NoLockScreen /t REG_DWORD /d 0 /f && cls && goto FB
)
if %errorlevel% == 11 (goto FBA)
if %errorlevel% == 12 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DontDisplayLastUsername /t REG_DWORD /d 1 /f && cls && goto FB
)
if %errorlevel% == 13 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DontDisplayLastUsername /t REG_DWORD /d 0 /f && cls && goto FB
)
if %errorlevel% == 14 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCAD /t REG_DWORD /d 0 /f && cls && goto FB
)
if %errorlevel% == 15 (
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCAD /t REG_DWORD /d 1 /f && cls && goto FB
)
if %errorlevel% == 16 (reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI /v DisablePasswordReveal /t REG_DWORD /d 1 /f && cls && goto FB)
if %errorlevel% == 17 (reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI /v DisablePasswordReveal /t REG_DWORD /d 0 /f && reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI /v DisablePasswordReveal /f && cls && goto FB)
if %errorlevel% == 18 (rundll32 user32.dll LockWorkStation && goto FB)
if %errorlevel% == 19 (goto F)
if %errorlevel% == 20 (goto 1)
if %errorlevel% == 21 (goto 0)
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FB
:FBA
cls
set subr=FBA > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Configure Legal Notice Message (Subroutine: %SUBR%)
echo To go back press Z
echo i: Both caption and text should be filled in order to get message.
echo .
echo Configure Legal Notice Caption (PRESS A)
echo .
echo Configure Legal Notice Text (PRESS B)
echo .
choice /c ablz10 /m "Your option: " /n
if %errorlevel% == 1 (
cls
echo Change Legal Notice Caption To: [PRESS C TO CANCEL / ENTER TO CONFIRM]
set /p FBA1=Value: 
if "%FBA1%" == "C" (goto FBA)
if "%FBA1%" == "c" (goto FBA)
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticecaption /f > nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticecaption /t REG_SZ /d "%FBA1%" /f > nul
goto FBA
)
if %errorlevel% == 2 (
cls
echo Change Legal Notice Caption To: [PRESS C TO CANCEL / ENTER TO CONFIRM]
set /p FBA2=Value: 
if "%FBA2%" == "C" (goto FBA)
if "%FBA2%" == "c" (goto FBA)
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticetext /f > nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v legalnoticetext /t REG_SZ /d "%FBA2%" /f > nul
goto FBA
)
if %errorlevel% == 3 (rundll32 user32.dll LockWorkStation && goto FBA)
if %errorlevel% == 4 (goto FB)
if %errorlevel% == 5 (goto 1)
if %errorlevel% == 6 (goto 0)
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FBA
:FBB
cls
set subr=FBB > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Desktop/Taskbar/Explorer settings (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo In order to apply any changes you may want to restart explorer (PRESS X)
echo Some changes might require logoff
echo .
echo .
echo Bring back the classic Alt+Tab menu (PRESS A)
echo .
echo Windows Default Alt+Tab menu (PRESS B)
echo .
echo Icon text underline all files (Open files with a simple click) (PRESS C)
echo .
echo Icon text underline files when targetted (Opens files with a simple click) (PRESS D)
echo .
echo Never underline text Icon files (Open files with a simple click) (PRESS E)
echo .
echo Never underline text Icon files (Open files with double-click) (PRESS F)
echo .
echo Add check boxes over file icons (PRESS G)
echo .
echo Remove check boxes over file icons (PRESS H)
echo .
echo Never preview desktop when cursor hovers to "Show Desktop" button in the taskbar (PRESS I)
echo .
echo Preview desktop when cusror hovers to "Show Desktop" button in the taskbar (PRESS J)
echo .
echo Slow down window animations by holding shift key (You need to logoff) (PRESS K)
echo .
echo Do not slow down window animations by holding shift key (You need to logoff again) (PRESS L)
echo .
echo Show only icons in files instead of thumbnails (PRESS M)
echo .
echo Show thumbnails and icons together in files (PRESS N)
echo .
echo Disable minimizing all windows when shaking another window (PRESS O)
echo .
echo Enable minimizing all windows when shaking another window (PRESS P)
echo .
echo Show seconds in taskbar clock (PRESS Q)
echo .
echo Do not show seconds in taskbar clock (PRESS R)
echo .
echo Show Windows version in desktop (PRESS S)
echo .
echo Do not show Windows version in desktop (PRESS T)
echo .
echo Wallpaper Style (PRESS U)
echo .
echo Enable Auto Colorization (PRESS V)
echo ?: Changing wallpaper will also change the color
echo .
echo Disable Auto Colorization (PRESS W)
echo .
choice /c abcdefghijklmnopqrstuvwxz10 /m "Your option: " /n
if %errorlevel% == 1 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v AltTabSettings /t REG_DWORD /d 1 /f && goto FBB)
if %errorlevel% == 2 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v AltTabSettings /t REG_DWORD /d 0 /f && goto FBB)
if %errorlevel% == 3 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v ShellState /t REG_BINARY /d 2400000007a900000000000000000000000000000100000013000000000000006a000000 /f && reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v IconUnderline /t REG_DWORD /d 3 /f && goto FBB)
if %errorlevel% == 4 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v ShellState /t REG_BINARY /d 2400000007a900000000000000000000000000000100000013000000000000006a000000 /f && reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v IconUnderline /t REG_DWORD /d 2 /f && goto FBB)
if %errorlevel% == 5 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v ShellState /t REG_BINARY /d 2400000007a900000000000000000000000000000100000013000000000000006a000000 /f && reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v IconUnderline /t REG_DWORD /d 1 /f && goto FBB)
if %errorlevel% == 6 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v ShellState /t REG_BINARY /d 240000003ea800000000000000000000000000000100000013000000000000006a000000 /f && goto FBB)
if %errorlevel% == 7 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v AutoCheckSelect /t REG_DWORD /d 1 /f && start shell:::{3080f90d-d7ad-11d9-bd98-0000947b0257} && goto FBB)
if %errorlevel% == 8 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v AutoCheckSelect /t REG_DWORD /d 0 /f && start shell:::{3080f90d-d7ad-11d9-bd98-0000947b0257} && goto FBB)
if %errorlevel% == 9 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v DisablePreviewDesktop /t REG_DWORD /d 1 /f && goto FBB)
if %errorlevel% == 10 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v DisablePreviewDesktop /t REG_DWORD /d 0 /f && goto FBB)
if %errorlevel% == 11 (reg add HKCU\SOFTWARE\Microsoft\Windows\DWM /v AnimationsShiftKey /t REG_DWORD /d 1 /f > nul && cls && echo Note: You need to logoff in order to save changes! && ping localhost -n 2 > nul && goto FBB)
if %errorlevel% == 12 (reg delete HKCU\SOFTWARE\Microsoft\Windows\DWM /v AnimationsShiftKey /f > nul && cls && echo Note: You need to logoff in order to save changes! && ping localhost -n 2 > nul && goto FBB)
if %errorlevel% == 13 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v IconsOnly /t REG_DWORD /d 1 /f > nul && goto FBB)
if %errorlevel% == 14 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v IconsOnly /t REG_DWORD /d 0 /f > nul && goto FBB)
if %errorlevel% == 15 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v DisallowShaking /t REG_DWORD /d 1 /f && goto FBB)
if %errorlevel% == 16 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v DisallowShaking /t REG_DWORD /d 0 /f && goto FBB)
if %errorlevel% == 17 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f && goto FBB)
if %errorlevel% == 18 (reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSecondsInSystemClock /t REG_DWORD /d 0 /f > nul && goto FBB)
if %errorlevel% == 19 (reg add "HKCU\Control Panel\Desktop" /v PaintDesktopVersion /t REG_DWORD /d 1 /f && cls && goto FBB)
if %errorlevel% == 20 (reg add "HKCU\Control Panel\Desktop" /v PaintDesktopVersion /t REG_DWORD /d 0 /f && cls && goto FBB)
if %errorlevel% == 21 (goto FBBU)
if %errorlevel% == 22 (reg add "HKCU\Control Panel\Desktop" /v AutoColorization /t REG_DWORD /d 1 /f > nul && goto FBB)
if %errorlevel% == 23 (reg add "HKCU\Control Panel\Desktop" /v AutoColorization /t REG_DWORD /d 0 /f > nul && goto FBB)
if %errorlevel% == 24 (taskkill /f /im explorer.exe && start explorer.exe && goto FBB)
if %errorlevel% == 25 (goto F)
if %errorlevel% == 26 (goto 1)
if %errorlevel% == 27 (goto 0)
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FBB
)
:FBBU
cls
set subr=FBBU > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Wallpaper Style (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo Wallpaper Style: Fill (PRESS A)
echo .
echo Wallpaper Style: Adjust (PRESS B)
echo .
echo Wallpaper Style: Stretch (PRESS C)
echo .
echo Wallpaper Style: Tile (PRESS D)
echo .
echo Wallpaper Style: Center (PRESS E)
echo .
echo Wallpaper Style: Extend (PRESS F)
echo .
choice /c abcdefrz10 /m "Your option: " /n
if %errorlevel% == 1 (reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f > nul && reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f > nul && goto FBBU)
if %errorlevel% == 2 (reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f > nul && reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 6 /f > nul && goto FBBU)
if %errorlevel% == 3 (reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f > nul && reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f > nul && goto FBBU)
if %errorlevel% == 4 (reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 1 /f > nul && reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 0 /f > nul && goto FBBU)
if %errorlevel% == 5 (reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f > nul && reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 0 /f > nul && goto FBBU)
if %errorlevel% == 6 (reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f > nul && reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 22 /f > nul && goto FBBU)
if %errorlevel% == 7 (taskkill /f /im explorer.exe > nul && start explorer.exe && goto FBBU)
if %errorlevel% == 8 (goto FBB)
if %errorlevel% == 9 (goto 1)
if %errorlevel% == 10 (goto 0)
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto FBBU
:G
cls
set subr=G > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Time and Location (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo Time and date (PRESS A)
echo .
echo Additional clocks (PRESS B)
echo .
echo Time/date forms (Location) (PRESS C)
echo .
echo Location Management (PRESS D)
echo .
echo Show Time (PRESS E)
echo .
echo Show Date (PRESS F)
echo .
echo Change Time (PRESS G)
echo .
echo Change Date (PRESS H)
echo .
choice /c abcdefghz10 /m "Your option: " /n
if %errorlevel% == 1 (rundll32 shell32.dll Control_RunDLL timedate.cpl,,0 && goto G)
if %errorlevel% == 2 (rundll32 shell32.dll Control_RunDLL timedate.cpl,,1 && goto G)
if %errorlevel% == 3 (rundll32 shell32.dll Control_RunDLL intl.cpl,,0 && goto G)
if %errorlevel% == 4 (rundll32 shell32.dll Control_RunDLL intl.cpl,,1 && goto G)
if %errorlevel% == 5 (goto GE)
if %errorlevel% == 6 (goto GD)
if %errorlevel% == 7 (cls && echo ENTER TO CANCEL && time && goto G)
if %errorlevel% == 8 (cls && echo ENTER TO CANCEL && date && goto G)
if %errorlevel% == 9 (goto 1)
if %errorlevel% == 10 (goto 1)
if %errorlevel% == 11 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto G
:GE
cls
color 3 && if defined clrdef (color %clrdef%)
set subr=GE > nul
title %Username%: Show Time (Subroutine: %SUBR%)
echo To get back press Z. To refresh press R
echo .
echo %time%
echo .
choice /c rz10 /m "Your option: " /n
if %errorlevel% == 1 (goto GE)
if %errorlevel% == 2 (goto G)
if %errorlevel% == 3 (goto 1)
if %errorlevel% == 4 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto GE
:GD
cls
color 3 && if defined clrdef (color %clrdef%)
set subr=GD > nul
title %Username%: Show Time (Subroutine: %SUBR%)
echo To get back press Z. To refresh press R
echo .
echo %date%
echo .
choice /c rz10 /m "Your option: " /n
if %errorlevel% == 1 (goto GD)
if %errorlevel% == 2 (goto G)
if %errorlevel% == 3 (goto 1)
if %errorlevel% == 4 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto GD
:H
cls
color 3 && if defined clrdef (color %clrdef%)
set subr=H > nul
title %Username%: Accessibillity Features (Subroutine: H)
echo To go back press Z
echo .
echo To open On Screen Keyboard (PRESS A)
echo .
echo To open Narrator (PRESS B)
echo .
echo To open Magnifier (PRESS C)
echo .
echo --------------------- TROUBLESHOOT YOUR PROBLEMS HERE ---------------------
echo .
echo Facing problems with keyboard? (PRESS D)
echo .
choice /c abcdz10 /m "Your option: " /n
if %errorlevel% == 1 (start osk.exe && goto H)
if %errorlevel% == 2 (start narrator.exe && goto H)
if %errorlevel% == 3 (start magnify.exe && goto H)
if %errorlevel% == 4 (start msdt.exe /id KeyboardDiagnostic && goto H)
if %errorlevel% == 5 (goto 1)
if %errorlevel% == 6 (goto 1)
if %errorlevel% == 7 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto H
:I
cls
set subr=I > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Other tools (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo Troubleshoot Problems Menu (PRESS A)
echo .
echo Send a folder with all control panel staff (Known as GodMode folder) in Desktop (CLSID) (PRESS B)
echo .
echo Steps recording tool (PRESS C)
echo .
echo Set custom default color (PRESS D)
echo .
echo System action menu (PRESS E)
echo .
echo         o--------------------------------- WINXPRT (C) 20 OCTOBER 2024 --------------------
echo .
echo .
choice /c abcdez10 /m "Your option: " /n
if %errorlevel% == 1 (start shell:::{c58c4893-3be0-4b45-abb5-a63e4b8c8651} && goto I)
if %errorlevel% == 2 (md "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" && cls && echo Look for a folder with control panel icon in your desktop && pause && goto I)
if %errorlevel% == 3 (start psr.exe && goto I)
if %errorlevel% == 4 (goto ID)
if %errorlevel% == 5 (goto IE)
if %errorlevel% == 6 (goto 1)
if %errorlevel% == 7 (goto 1)
if %errorlevel% == 8 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto I
:IE
cls
set subr=IE > nul
color 1 && if defined clrdef (color %clrdef%)
title %Username%: System action menu (Subroutine: %SUBR%)
echo To go back press Z
echo .
echo What would you like the computer to do?
echo .
echo \--Shutdown (PRESS A)
echo \--Restart (PRESS B)
echo \--Suspend (PRESS C)
echo \--Lock (PRESS D)
echo \--Disconnect / Change User (PRESS E)
echo \--Sleep (PRESS F)
echo \--Log out / Log off (PRESS G) && echo .
choice /c abcdefgz10 /m "Your option: " /n
if %errorlevel% == 1 (
cls
shutdown /s /t 15 /c "This operation was made through Control Prompt." && echo You've got 15 seconds to cancel shutdown. If you want to cancel shutdown press A. To return press any other key
set /p IEA=Your optiom: 
if "%IEA%" == "A" (shutdown /a && goto IE)
if "%IEA%" == "a" (shutdown /a && goto IE)
goto IE
)
if %errorlevel% == 2 (
cls
shutdown /r /t 15 /c "This operation was made through Control Prompt." && echo You've got 15 seconds to cancel restart. If you want to cancel restart press A. To return press any other key
set /p IEB=Your optiom: 
if "%IEB%" == "A" (shutdown /a && goto IE)
if "%IEB%" == "a" (shutdown /a && goto IE)
goto IE
)
if %errorlevel% == 3 (cls && echo Your system was forced to suspend at %time% on %date% && rundll32 powrprof.dll SetSuspendState && pause && goto IE)
if %errorlevel% == 4 (rundll32 user32.dll LockWorkStation && goto IE)
if %errorlevel% == 5 (cls && echo Your user was disconnected at %time% on %date% && tsdiscon && pause && goto IE)
if %errorlevel% == 6 (cls && echo Your system was forced to sleep at %time% on %date% && rundll32 powrprof.dll SetSuspendState 1,0,1 && pause && goto IE)
if %errorlevel% == 7 (cls && shutdown /l /c "This operation was made through Control Prompt." && echo Goodbye! && pause && goto IE)
if %errorlevel% == 8 (goto I)
if %errorlevel% == 9 (goto 1)
if %errorlevel% == 10 (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%) && cls && echo Problem caused to batch! && echo Make sure you give administrative privileges
pause && goto IE
:ID
cls
set subr=ID > nul
color 3 && if defined clrdef (color %clrdef%)
title %Username%: Set custom default color (Subroutine: %SUBR%)
if defined clrdef (reg add HKCU\Software\Control10 /v Color /d %clrdef% /t REG_SZ /f > nul) else (
reg delete HKCU\Software\Control10 /f > nul
)
echo To go back press Z
echo .
echo ------ Colors ------            
echo 0 = Black
echo 1 = Blue
echo 2 = Green
echo 3 = Aqua
echo 4 = Red
echo 5 = Purple
echo 6 = Yellow
echo 7 = White
echo 8 = Grey
echo 9 = Bright Blue
echo .
echo .
echo                         ----------------- HOW TO USE: -----------------
echo                  Type the number of the color that you'd like to be the default
echo background color (WITHOUT ANY SPACES), and then type the number of the color you'd like to set
echo             as a default text color. Setting incorrect values won't save any changes
echo .
echo .
echo                      ----------------- EXAMPLES: -----------------
echo  07 is the default color-set for command prompt. It produces bright white on dark background
echo                       42 produces green text on red background
echo                      03 is the default color of Control Prompt
echo             When none color is set the text will be 03 (light-blue) by default
echo         (If the program was run by command prompt drag-n-drop, colors won't change)
echo .
echo .
echo NOTE: Numbers 00,11,22,33,44,55,66,77,88,99 CANNOT be set && echo . && echo .
echo To restore default colors (PRESS A)
echo .
set /p ID=Your Color/Option: 
if "%ID%" == "00" (echo By setting black color for the text and black color for the background will make the letters unreadable && ping localhost /n 4 > nul && goto ID)
if "%ID%" == "01" (set clrdef=01 && goto ID)
if "%ID%" == "02" (set clrdef=02 && goto ID)
if "%ID%" == "03" (set clrdef=03 && goto ID)
if "%ID%" == "04" (set clrdef=04 && goto ID)
if "%ID%" == "05" (set clrdef=05 && goto ID)
if "%ID%" == "06" (set clrdef=06 && goto ID)
if "%ID%" == "07" (set clrdef=07 && goto ID)
if "%ID%" == "08" (set clrdef=08 && goto ID)
if "%ID%" == "09" (set clrdef=09 && goto ID)
if "%ID%" == "1" (set clrdef=01 && goto ID)
if "%ID%" == "2" (set clrdef=02 && goto ID)
if "%ID%" == "3" (set clrdef=03 && goto ID)
if "%ID%" == "4" (set clrdef=04 && goto ID)
if "%ID%" == "5" (set clrdef=05 && goto ID)
if "%ID%" == "6" (set clrdef=06 && goto ID)
if "%ID%" == "7" (set clrdef=07 && goto ID)
if "%ID%" == "8" (set clrdef=08 && goto ID)
if "%ID%" == "9" (set clrdef=09 && goto ID)
if "%ID%" == "10" (set clrdef=10 && goto ID)
if "%ID%" == "11" (set clrdef=11 && goto ID)
if "%ID%" == "12" (set clrdef=12 && goto ID)
if "%ID%" == "13" (set clrdef=13 && goto ID)
if "%ID%" == "14" (set clrdef=14 && goto ID)
if "%ID%" == "15" (set clrdef=15 && goto ID)
if "%ID%" == "16" (set clrdef=16 && goto ID)
if "%ID%" == "17" (set clrdef=17 && goto ID)
if "%ID%" == "18" (set clrdef=18 && goto ID)
if "%ID%" == "19" (set clrdef=19 && goto ID)
if "%ID%" == "20" (set clrdef=20 && goto ID)
if "%ID%" == "21" (set clrdef=21 && goto ID)
if "%ID%" == "22" (set clrdef=22 && goto ID)
if "%ID%" == "23" (set clrdef=23 && goto ID)
if "%ID%" == "24" (set clrdef=24 && goto ID)
if "%ID%" == "25" (set clrdef=25 && goto ID)
if "%ID%" == "26" (set clrdef=26 && goto ID)
if "%ID%" == "27" (set clrdef=27 && goto ID)
if "%ID%" == "28" (set clrdef=28 && goto ID)
if "%ID%" == "29" (set clrdef=29 && goto ID)
if "%ID%" == "30" (set clrdef=30 && goto ID)
if "%ID%" == "31" (set clrdef=31 && goto ID)
if "%ID%" == "32" (set clrdef=32 && goto ID)
if "%ID%" == "33" (set clrdef=33 && goto ID)
if "%ID%" == "34" (set clrdef=34 && goto ID)
if "%ID%" == "35" (set clrdef=35 && goto ID)
if "%ID%" == "36" (set clrdef=36 && goto ID)
if "%ID%" == "37" (set clrdef=37 && goto ID)
if "%ID%" == "38" (set clrdef=38 && goto ID)
if "%ID%" == "39" (set clrdef=39 && goto ID)
if "%ID%" == "40" (set clrdef=40 && goto ID)
if "%ID%" == "41" (set clrdef=41 && goto ID)
if "%ID%" == "42" (set clrdef=42 && goto ID)
if "%ID%" == "43" (set clrdef=43 && goto ID)
if "%ID%" == "44" (set clrdef=44 && goto ID)
if "%ID%" == "45" (set clrdef=45 && goto ID)
if "%ID%" == "46" (set clrdef=46 && goto ID)
if "%ID%" == "47" (set clrdef=47 && goto ID)
if "%ID%" == "48" (set clrdef=48 && goto ID)
if "%ID%" == "49" (set clrdef=49 && goto ID)
if "%ID%" == "50" (set clrdef=50 && goto ID)
if "%ID%" == "51" (set clrdef=51 && goto ID)
if "%ID%" == "52" (set clrdef=52 && goto ID)
if "%ID%" == "53" (set clrdef=53 && goto ID)
if "%ID%" == "54" (set clrdef=54 && goto ID)
if "%ID%" == "55" (set clrdef=55 && goto ID)
if "%ID%" == "56" (set clrdef=56 && goto ID)
if "%ID%" == "57" (set clrdef=57 && goto ID)
if "%ID%" == "58" (set clrdef=58 && goto ID)
if "%ID%" == "59" (set clrdef=59 && goto ID)
if "%ID%" == "60" (set clrdef=60 && goto ID)
if "%ID%" == "61" (set clrdef=61 && goto ID)
if "%ID%" == "62" (set clrdef=62 && goto ID)
if "%ID%" == "63" (set clrdef=63 && goto ID)
if "%ID%" == "64" (set clrdef=64 && goto ID)
if "%ID%" == "65" (set clrdef=65 && goto ID)
if "%ID%" == "66" (set clrdef=66 && goto ID)
if "%ID%" == "67" (set clrdef=67 && goto ID)
if "%ID%" == "68" (set clrdef=68 && goto ID)
if "%ID%" == "69" (set clrdef=69 && goto ID)
if "%ID%" == "70" (set clrdef=70 && goto ID)
if "%ID%" == "71" (set clrdef=71 && goto ID)
if "%ID%" == "72" (set clrdef=72 && goto ID)
if "%ID%" == "73" (set clrdef=73 && goto ID)
if "%ID%" == "74" (set clrdef=74 && goto ID)
if "%ID%" == "75" (set clrdef=75 && goto ID)
if "%ID%" == "76" (set clrdef=76 && goto ID)
if "%ID%" == "77" (set clrdef=77 && goto ID)
if "%ID%" == "78" (set clrdef=78 && goto ID)
if "%ID%" == "79" (set clrdef=79 && goto ID)
if "%ID%" == "80" (set clrdef=80 && goto ID)
if "%ID%" == "81" (set clrdef=81 && goto ID)
if "%ID%" == "82" (set clrdef=82 && goto ID)
if "%ID%" == "83" (set clrdef=83 && goto ID)
if "%ID%" == "84" (set clrdef=84 && goto ID)
if "%ID%" == "85" (set clrdef=85 && goto ID)
if "%ID%" == "86" (set clrdef=86 && goto ID)
if "%ID%" == "87" (set clrdef=87 && goto ID)
if "%ID%" == "88" (set clrdef=88 && goto ID)
if "%ID%" == "89" (set clrdef=89 && goto ID)
if "%ID%" == "90" (set clrdef=90 && goto ID)
if "%ID%" == "91" (set clrdef=91 && goto ID)
if "%ID%" == "92" (set clrdef=92 && goto ID)
if "%ID%" == "93" (set clrdef=93 && goto ID)
if "%ID%" == "94" (set clrdef=94 && goto ID)
if "%ID%" == "95" (set clrdef=95 && goto ID)
if "%ID%" == "96" (set clrdef=96 && goto ID)
if "%ID%" == "97" (set clrdef=97 && goto ID)
if "%ID%" == "98" (set clrdef=98 && goto ID)
if "%ID%" == "A" (
cls
reg query HKCU\Software\Control10 > nul
cls
if %errorlevel% == 0 (reg delete HKCU\Software\Control10 /f > nul)
set clrdef= && goto ID
)
if "%ID%" == "a" (
cls
reg query HKCU\Software\Control10 > nul
cls
if %errorlevel% == 0 (reg delete HKCU\Software\Control10 /f > nul)
set clrdef= && goto ID
)
if "%ID%" == "Z" (goto I)
if "%ID%" == "z" (goto I)
if "%ID%" == "1" (goto 1)
if "%ID%" == "0" (goto 0)
cls
color 2 && if defined clrdef (color %clrdef%)
echo Bad option or a problem caused to batch! && echo Make sure you give administrative privileges
pause && goto ID