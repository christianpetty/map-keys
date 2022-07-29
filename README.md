# Christian's Map Keys

This AutoHotKey script mimics most of the Vortex POK3R keyboard layout and other CapsLock as Fn shortcuts. 

## Setup 

1. Install [AutoHotKey](https://www.autohotkey.com/). You must install AHK with [UI access privileges](https://www.autohotkey.com/docs/Program.htm#Installer_uiAccess) (admin required).
2. Create a new script and paste the following:
```
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Run C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe "map-keys.ahk"
```
3. Place the script in the same folder as this repo.
4. Save and compile via right click in Explorer.
5. Create a shortcut in your Startup folder or schedule using Task Scheduler or whatever your flavor.
`C:\Users\{USER}\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
