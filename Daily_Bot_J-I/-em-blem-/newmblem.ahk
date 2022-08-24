#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, Force 
SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

send {w down}
loop{
	send {space}
	sleep 333
	send f
	PixelSearch,cx,cy, 990, 970, 1045,1030,0xFECA32, 0, RGB Fast
	if (ErrorLevel==0){
		click, L, %cx% %cy%
		sleep 500
		PixelSearch,cx,cy, 575, 725, 935,790,0x4A5366, 3, RGB Fast
			if (ErrorLevel == 0){
				click, L, %cx% %cy%
				break
			}
		sleep 10000
		run "emblem.ahk"
		sleep 100
		break
	}
}



F9::
ExitApp
return