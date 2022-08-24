Loop, 1
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

;Sleep, 10000
send 3
sleep 300
Send, {d down}
Sleep, 4900
send {d up}
Send, {w down}
Sleep, 3550
send {w up}


Send, {d down}
Sleep, 2250
send {d up}

Send, {w down}
Send, {Shift down}
Sleep, 11000
Send, {Shift up}

Send, {a down}
Sleep, 1000
send {a up}
send 3
sleep 200
run "automove.ahk"
sleep 40000
run "increasing danger brightcrown mountains check.ahk"
}



F10::
ExitApp
return
