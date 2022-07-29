# Christian's Map Keys

This AutoHotKey script mimics most of the Vortex POK3R keyboard layout and other CapsLock as Fn shortcuts.

## Map Keys
Key | Map
--- | ---
CapsLock   | Fn
Fn + I | Up
Fn + J | Left
Fn + K | Down
Fn + L | Right
Fn + H | Home
Fn + N | End
Fn + U | PgUp
Fn + O | PgDn
Fn + W | Play (Media)
Fn + Q | Previous (Media)
Fn + E | Next (Media)
Fn + F | Volume Mute
Fn + S | Volume Down
Fn + D | Volume Up
Fn + P | PrintScreen
Fn + Backspace | Delete
Win + C | calc.exe
Ctrl + Alt + C | Toggle Caps Lock

## Setup 

1. Install [AutoHotKey](https://www.autohotkey.com/). You must install AHK with [UI access privileges](https://www.autohotkey.com/docs/Program.htm#Installer_uiAccess) (admin required).
2. Create a new script and paste the following:
```
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Run C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe "{PATH}\ijkl_nav_map_keys.ahk"
```
3. Replace `{PATH}` with your actual path and ensure that the AHK path is correct.
4. Save and compile via right click in Explorer.
5. Copy the .exe to your Startup folder or schedule using Task Scheduler or whatever your flavor.
`C:\Users\{USER}\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
