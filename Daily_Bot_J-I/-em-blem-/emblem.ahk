#SingleInstance, Force 
SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
SetWorkingDir %A_ScriptDir%

sleep 1000
click
sleep 800
send 1
sleep 200
send {shift down}
send {w down}
sleep 10000
loop 5{
	send f
	sleep 100
}

send {shift down}
sleep 100
send {shift up}
sleep, 500
send {shift down}
sleep 100
send {shift up}
send {w down}
sleep 1000
send {w up}
send {shift up}
run "emblend.ahk"
run "embleula.ahk"

F9::
ExitApp
return
