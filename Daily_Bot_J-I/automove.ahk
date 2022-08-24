#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%"       ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv                                    ; Recommended for performance and compatibility with future AutoHotkey releases.
                                          ; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input                            ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%               ; Ensures a consistent starting directory.
wt = Genshin Impact ahk_class UnityWndClass

	WinWait, %wt%
	IfWinNotActive, %wt%,, WinActivate, %wt%



	found := 0
	cont := 0
	dir := 0
	sleep 100
	MouseGetPos, X, Y
	DX := X
	DY := Y
	Loop{
		PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 5, RGB Fast
		if(ErrorLevel == 0){
			if(Xp<920){
				if (found && Xp < 500){
					sleep 5000
					send {w up}
					found := 0
				}
				send, {Alt down}
				if (!var){
					sleep 300
				}
				var := 1
				Click, D, X Y
				Loop 10{
					DX := DX - 40
					MouseMove,DX, Y, 100
					sleep 33
				}
				DX := X
				Click, U, X Y
			}

			else if(Xp>1070){
				if (found && Yp > 1400){
					send {w up}
				}
				send, {Alt down}
				if (!var){
					sleep 300
				}
				var := 1
				Click, D, X Y
				Loop 10{
					DX := DX + 40
					MouseMove,DX, Y, 100
					sleep 33
				}
				DX := X
				Click, U, X Y
			}
			sleep 10
		PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 5, RGB Fast
			if(Xp>=920 and Xp<=1070){ 
				if (!found){
					loop 10{
						found := true
						Click, D, X Y
						send, {Alt down}
						loop 10{
							DY := DY + 33
							MouseMove,X, DY,50
							sleep 33
						}
						DY := Y
						Click, U, X Y
					}
				}
				PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 5, RGB Fast
				if(ErrorLevel == 0){
					if(Yp>1080/2){
						send,{s down}
						sleep 200
						send, {s up}
						sleep 1000
						send, {MButton}
					}
					if(Yp<=1080/2){
						send, {LButton up}                                                     
						sleep 1
						send, {Alt up}
						send,{w down}
						Random, rand , 0, 21
						if (rand == 21){
							send {space}
							sleep 200
						}
						if (dir == 0){
							send {a down}
							sleep 50
							send {a up}
							dir := 1
						}
						else {
							send {d down}
							sleep 50
							send {d up}
							dir := 0
						}
						var := 0
					}
				}
			}
		}
		if(ErrorLevel == 1){
			send, {v}
			send {w down}
			sleep 5000
			send {w up}
			cont := cont + 1
			if(cont >= 2){
				send {w up}
				send {Alt up}
				break 1
				sleep 100
				ExitApp
			}
		}
	}


F10::
ExitApp
return
