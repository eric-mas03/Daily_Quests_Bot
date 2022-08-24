#SingleInstance, Force



SetTitleMatchMode, 2
CoordMode, Mouse, Window
tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
SetWorkingDir %A_ScriptDir%


Loop
{
	Diona()
	Bennett()
	Chanli()
	Eula()
	Bennett()
	Chanli()
	Eula()
}











eulaQ() 
{
	send q
	sleep 2500
	send {e down}
	sleep 500
	send {e up}
	loop, 2{
		loop, 11
		{
			Click
			sleep 250
		}
		sleep 400
		Click, R
	}
}

Diona(){	
	PixelSearch  ,,, 1718, 540, 1821,620,0xE66D66,2,RGB Fast
	if (ErrorLevel == 0) {
		send 4
		sleep 200
		send {e down}
		sleep 200
		send {e up}
		sleep 500
		PixelSearch,,,1780,934,1857,1010,0x73BEF3,14,RGB Fast	
		if (ErrorLevel == 0) {
			send q
			sleep 1200
		}
	}
}

Bennett(){
	PixelSearch  ,,, 1718, 454, 1821,540,0xfdf9db,2,RGB Fast
	if (ErrorLevel == 0) {
		send 3
		sleep 200
		send e
		sleep 1300
		PixelSearch,,,1780,934,1857,1010,0xE95134,14,RGB Fast	
		if (ErrorLevel == 0) {
			send q
			sleep 1300
		}
	}
}

Chanli(){
	PixelSearch  ,,, 1718, 365, 1821,440,0x3d4879,2,RGB Fast
	if (ErrorLevel == 0) {
		send 2
		sleep 200
		send e
		sleep 1000
		PixelSearch,,,1780,934,1857,1010,0xE55034,9,RGB Fast	
		if (ErrorLevel == 0) {
			send q
			sleep 1500
		}
	}
}

Eula(){
	PixelSearch,,,1718, 228, 1821,350,0xBADADE,2,RGB Fast
	if (ErrorLevel == 0) {

		send 1
		sleep 200
		
		PixelSearch,,,1780,934,1857,1010,0x6FBEF6,9,RGB Fast
		if (ErrorLevel == 0) {
			send e
			sleep 800
			eulaQ()
		}
		else{
			send e
			sleep 800
			loop, 11
			{
				Click
				sleep 250
				PixelSearch,,,1780,934,1857,1010,0x6FBEF6,9,RGB Fast
					if (ErrorLevel == 0)
						eulaQ()
			}
			sleep 400
		}
		
	}
}

F9::
ExitApp
return
