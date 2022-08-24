#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

sleep 10000
send, 4
sleep 500
send, {a down}
sleep 500
send, {a up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
sleep 10000
send {w up}
sleep 1000
send, {d down}
sleep 500
send, {d up}
sleep 500
send, {MButton}
sleep 1000
send, {w down}
sleep 4000
Loop 6{
    send {SPACE}
    sleep 200
    send, {a down}
    sleep 200
    send, {a up}
    sleep 1000
}

send, {w up}
sleep 1000
 send, {a down}
sleep 200
send, {a up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
sleep 6000
Loop 5{
    send, {d down}
    sleep 200
    send, {d up} 
    sleep 400
    send, {SPACE}
}
send, {w up}
sleep 1000
send, {d down}
sleep 300
send, {d up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
sleep 2000
send, {w up}

Loop 4{
    run, "combat.ahk"
    sleep 20000
    }
