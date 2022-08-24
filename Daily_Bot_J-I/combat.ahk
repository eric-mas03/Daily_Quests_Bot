SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
#SingleInstance, Force

run combatend.ahk

	Loop 
	{
		Send, 1
		Sleep, 200
		Send, e
		Sleep, 1300
		Send, 3
		Sleep, 600
		Send, q
		Sleep, 800
		Send, e
		Sleep, 1000
		Send, 4
		Sleep, 800
		Send, e
		Sleep, 1300
		Send, q
		Sleep, 1500
		Send, 2
		Sleep, 600
		Send, e
		Sleep, 800
		Send, q
		Sleep, 1000
		Send, 1
		Sleep, 700
		Send, q
		Sleep, 1200
		Send, 3
		Sleep, 500
		Send, e
		Sleep, 1000
		Send, 2
		Sleep, 500
		Click
		Sleep, 250
		Click
		Sleep, 400
		Click
		Sleep, 400
		Click
		Sleep, 400
		Click
		Sleep, 600
		Send, 1
	}

F9::
ExitApp
return
