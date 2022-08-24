#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%"       ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv                                    ; Recommended for performance and compatibility with future AutoHotkey releases.
                                          ; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input                            ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%               ; Ensures a consistent starting directory.
wt = Genshin Impact ahk_class UnityWndClass


sleep 10000
send, {w down}
sleep 8500
send, {w up}
sleep 100
send, {d down}
sleep 100
send, {d up}
sleep 1000
click, M
sleep 1000
send, {w down}
sleep 1875
send, {w up}
sleep 1000
Loop 5{
    send, {a down}
    sleep 100
    send, {a up}
}
send, f
sleep 3000
run, "0textskip.ahk"
sleep 15000
send, {m}
sleep 1000
MouseClick, Left, 983, 960
sleep 1000
MouseClick, Left, 991, 812
sleep 1000
MouseClick, Left, 1656, 995
sleep 10000
send, s
sleep 1000
click, M
sleep 1000
send, {w down}
sleep 34000
send, {w up}
sleep 1000
send, {a down}
sleep 1300
send, {a up}
sleep 100
send, f
sleep 100
run, "0textskip.ahk"
sleep 3000
send, {m}
sleep 1000
MouseClick, Left, 933, 116
sleep 1000
MouseClick, Left, 929, 450
sleep 1000
MouseClick, Left, 1384, 734
sleep 1000
MouseClick, Left, 1600, 1000
sleep 10000
send, {w down}
sleep 8500
send, {w up}
sleep 100
send, {d down}
sleep 100
send, {d up}
sleep 1000
click, M
sleep 1000
send, {w down}
sleep 1875
send, {w up}
sleep 1000
Loop 5{
    send, {a down}
    sleep 100
    send, {a up}
}
send, f
sleep 3000
run, "0textskip.ahk"
sleep 15000




