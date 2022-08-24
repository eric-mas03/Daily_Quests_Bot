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


send, {LButton}
sleep 1000
MouseClick, Left, 733, 575
sleep 200
MouseClick, Left, 1654, 1003
sleep 10000
send, 4
sleep 500
send, {a down}
sleep 1000
send, {a up}
sleep 1000
send, {w down }
sleep 20000
send, {w up}
sleep 1000
send, {d down}
sleep 1000
send, {d up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
Loop 13{
    send, {a down}
    sleep 200
    send, {a up}
    sleep 100
}

sleep 16000
send, {w up}
Loop 4{
    run, "combat.ahk"

}
