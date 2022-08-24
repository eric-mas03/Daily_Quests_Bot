Loop, 1
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Loop {
	PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
		if (ErrorLevel == 0) {
    		Send, {F10}
			break
		}
	Sleep, 1500
}

}
