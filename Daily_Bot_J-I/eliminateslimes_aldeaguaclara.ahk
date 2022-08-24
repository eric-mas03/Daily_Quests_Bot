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

send, {d down}
sleep 1000
send, {d up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
sleep 26000
send, {w up}
sleep 1000
send, {a down}
sleep 500
send, {a up}
sleep 1000
send, {MButton}


;Loop 5{
 ;   run, "combat.ahk"
  ;  sleep 20000
;}

send, m
sleep 1000

Loop 20{
    send, {WheelDown}
    sleep 100
}

MouseClick, Left, 1015, 561
sleep 600
MouseClick, Left, 1641, 994
sleep 10000

send, {d down}
sleep 1000
send, {d up}
sleep 1000
send, {MButton}
sleep 1000
send, {w down}
Loop 260{
    send, {f down}
    sleep 100
    send, {f up}
}
send, {w up}
Loop 10{
    send, {f down}
    sleep 100
    send, {f up}
}
send, {a down}
Loop 5{
    send, {f down}
    sleep 100
    send, {f up}
}
send, {a up}
sleep 1000
send, {MButton}
sleep 1000
Loop 10{
    send, {f down}
    sleep 100
    send, {f up}

}
run, "0textskip.ahk"
sleep 1000

;Sin acabar, es muy larga y da much pal



^ESC::
ExitApp