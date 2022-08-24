#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
	
SetTitleMatchMode, 2
CoordMode, Mouse, Window


	tt = Genshin Impact ahk_class UnityWndClass
	WinWait, %tt%
	IfWinNotActive, %tt%,, WinActivate, %tt%


sleep 10000
send, {a down}
sleep 500
send, {a up}
sleep 1000
click, M
sleep 1000
send, {w down}
sleep 10000
send, {w up}
sleep 100
run, "combat.ahk"
sleep 5000

-::
ExitApp