;increasing danger starfell valley
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


sal := 0
;FIRST TOWER 
while(sal == 0){
	check()
	sleep 10000
	send, 3
	sleep 500
	check()
	send {w down}
	click, R
	sleep 500
	check()
	send {space}
	sleep 500
	check()
	send {space}
	sleep 500
	click, R
	send, {shift down}
	Loop 95{
		check()
		sleep 100
	}
	send, {w up}
	send, {shift up}
	tower()
	check()
	send m
	sleep 400
	loop, 30{
	Click WheelUp
	sleep 100
	}
	Click, L, 1100 550
	sleep 150
	Click, L, 1534 1000
	Loop 10{
		sleep 100
		check()
	}


	;SECOND TOWER
	sleep 10000
	send, 2
	sleep 500
	check()
	send {a down}
	sleep 300
	check()
	send {a up}
	sleep 200
	send {d down}
	sleep 100
	send {w down}
	sleep 150
	send {d up}
	check()
	send {w up}
	click, M
	check()
	sleep 500
	send {w down}
	sleep 300
	send {space}
	sleep 400
	send {space}
	Loop 70{
		check()
		sleep 100
	}
	send {a down}
	sleep 1000
	send {a up}
	send {w up}
	check()
	tower()
		Loop 10{
		sleep 100
		check()
	}
}


tower(){
	click
	sleep 1500
	send, 1
	check()
	sleep 200
	send, e
	sleep 1000
	send 3
	check()
	sleep 500
	send e
	sleep 800
	send 2
	check()
	sleep 500
	send e
	sleep 1500
	send 4
	check()
	sleep 500
	send {e down}
	sleep 1000
	send, {e up}
	sleep 700
	MouseClick,Left
	sleep 1000
	check()
}

check(){
	tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Loop {
	PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
		if (ErrorLevel == 0) {
    		sal := 1
			break
		}
	Sleep, 1500
}

}


F9::
ExitApp
return
