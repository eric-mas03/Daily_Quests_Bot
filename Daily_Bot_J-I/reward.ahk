^ESC::
ExitApp
return



n::
Loop, 1
{

		SetTitleMatchMode, 2
		CoordMode, Mouse, Client

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%

		Sleep, 250

		Send, {Blind}m

		Sleep, 1000
		Loop 100{
			send, {WheelDown}
			sleep 5
		}

		Loop 19 {
			send, {WheelUp}
			sleep 15
		}
		sleep 10
		
		MouseClick, L, 1755, 969

		Sleep, 250


		MouseClick, L, 1594, 381

		Sleep, 250


		MouseClick, L, 982, 569

		Sleep, 250


		MouseClick, L, 1415, 731

		Sleep, 250

		MouseClick, L, 1617, 989
		Color := 0x000000
		sleep 1000
		
		
		while(Color != 0xE3FBFF){ ;Falta arreglar el color, ejecuta el widow spy en admin y con el CTrl bloqueas los datos y los copias
			PixelGetColor, Color, 1791, 256 
			sleep 100
			IfWinNotActive, %tt%,, WinActivate, %tt%
		}
				
				sleep 1000

				Send, {Blind}{e down}
				Sleep, 300
				Send, {Blind}{e up}
				Sleep, 2800

				Send, {Blind}d
				Sleep,100
				Send,e
				Sleep,300
				Send,wwwwwww
				Sleep,300
				Send,wwwwwww
				Sleep,300
				Send,wwwwwww
				Sleep,300
				Send,wwwwwww

				Sleep, 1300

				Send, {Blind}f
				Sleep, 1000


				Loop 14{
					MouseClick, L, 1392,433
					Sleep,100
				}
			

}
