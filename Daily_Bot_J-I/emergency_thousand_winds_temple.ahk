 Loop, 1
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
SetWorkingDir %A_ScriptDir%

sleep 10000
Send, {s down}{a down}
Sleep, 400
Click, M
Send, {a up}{s up}
sleep 200
Sleep, 1000
Send,{w down}
Send,{Shift down}
Sleep, 5000
Send, {Space}
Send, {Shift up}
Sleep, 500
Send, {Space}
Sleep, 10000
Send, {Space}
Sleep, 500
Click
Send, {w up}
run "combat.ahk"


}

F10::ExitApp