#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

	tt = Genshin Impact ahk_class UnityWndClass
	WinWait, %tt%
	IfWinNotActive, %tt%,, WinActivate, %tt%

sleep 10000
send, 4
sleep 500
send, {w down} 
send, {d down}
sleep 200
send, {w up} 
send, {d up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
sleep 10000
send, {SPACE}
sleep 20000
send, {w up}
sleep 1000
send, {a down}
sleep 200
send, {a up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
sleep 12500
send, {w up}
sleep 500
send, {d down}
sleep 200
send, {d up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
sleep 26500
send, {w up}
sleep 10000

Loop 15{
    run, "combat.ahk"
    sleep 20000
}

