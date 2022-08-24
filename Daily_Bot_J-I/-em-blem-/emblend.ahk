#SingleInstance, Force 
SetTitleMatchMode, 2
CoordMode, Mouse, Window
DetectHiddenWindows, On 



tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
SetWorkingDir %A_ScriptDir%
Thread, Priority, 2
loop{
	PixelSearch  ,,, 744, 244, 1166,290,0xC58B27,3,RGB Fast
		if (ErrorLevel == 0) {
			Script = embleula.ahk 
			WinClose, %Script% ahk_class AutoHotkey
			sleep 100
			run "newmblem.ahk"
			sleep 100
			break
		}
	sleep 333
}
