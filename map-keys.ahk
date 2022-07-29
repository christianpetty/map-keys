#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
#KeyHistory 0
SetCapsLockState, AlwaysOff

; Function to prefix modifiers with intended output key
PrefixModifiers(Key, PlayOpt := false)
{
	if GetKeyState("Shift", "P")
		if GetKeyState("Alt", "P")
			Prefix := "+!"
		else if GetKeyState("Ctrl", "P")
			Prefix := "+^"
		else
			Prefix := "+"
	else if GetKeyState("Ctrl", "P")
		if GetKeyState("Alt", "P")
			Prefix := "^!"
		else
			Prefix := "^"
	else if GetKeyState("Alt", "P")
		Prefix := "!"
	else
		Prefix := ""
	if (PlayOpt = true)
		SendPlay %Prefix%{%Key%}
	else
		Send %Prefix%{%Key%}
}

#IfWinActive OneNote ; Corner case where some admin-level apps are not compatible with "Send"

CapsLock & i:: PrefixModifiers("Up", true)
CapsLock & k:: PrefixModifiers("Down", true)

#IfWinActive

CapsLock & k:: PrefixModifiers("Up")
CapsLock & h:: PrefixModifiers("Left")
CapsLock & j:: PrefixModifiers("Down")
CapsLock & l:: PrefixModifiers("Right")
CapsLock & b:: PrefixModifiers("Home")
CapsLock & n:: PrefixModifiers("End")
CapsLock & u:: send, {PgUp}
CapsLock & o:: send, {PgDn}
CapsLock & w:: send, {Media_Play_Pause}
CapsLock & q:: send, {Media_Prev}
CapsLock & e:: send, {Media_Next}
CapsLock & f:: send, {Volume_Mute}
CapsLock & s:: send, {Volume_Down}
CapsLock & d:: send, {Volume_Up}
CapsLock & p:: send, {PrintScreen}
CapsLock & Backspace:: send, {Del}
CapsLock & 1:: PrefixModifiers("F1")
CapsLock & 2:: PrefixModifiers("F2")
CapsLock & 3:: PrefixModifiers("F3")
CapsLock & 4:: PrefixModifiers("F4")
CapsLock & 5:: PrefixModifiers("F5")
CapsLock & 6:: PrefixModifiers("F6")
CapsLock & 7:: PrefixModifiers("F7")
CapsLock & 8:: PrefixModifiers("F8")
CapsLock & 9:: PrefixModifiers("F9")
CapsLock & 0:: PrefixModifiers("F10")
CapsLock & -:: PrefixModifiers("F11")
CapsLock & +:: PrefixModifiers("F12")

<#c::
Run C:\Windows\System32\calc.exe
return

; Override caps lock toggle
^!c::
if GetKeyState("CapsLock", "T")
	SetCapsLockState, AlwaysOff
else if !GetKeyState("CapsLock", "T")
	SetCapsLockState, AlwaysOn
return

^!d::
Run pwsh.exe -Command "Set-Dark"
return

^!l::
Run pwsh.exe -Command "Set-Light"
return