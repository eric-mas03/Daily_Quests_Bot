#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
	
SetTitleMatchMode, 2
CoordMode, Mouse, Window


	tt = Genshin Impact ahk_class UnityWndClass
	WinWait, %tt%
	IfWinNotActive, %tt%,, WinActivate, %tt%
exit := 0
While(exit == 0) {

	

	PixelSearch, tx, ty, 1766, 219 , 1836, 297, 0xADADAD, 3, RGB Fast
	if (ErrorLevel == 1){
			;MsgBox, Vivo el 1
			send, {MButton}
			IfWinNotActive, %tt%,, WinActivate, %tt%
			Send, 1
			sleep 600
			send, {e down}
			sleep 100
			send, {e up}
			sleep 600
			Loop 2{
				send, {LButton}
				sleep 100
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {q down}
			sleep 200
			send, {q up}
			Loop 15 {
				send, {LButton}
				sleep 100
				
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
		PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5560, 10, RGB Fast
		if(ErrorLevel == 0){
			;MsgBox, encontrado1, %tx%, %ty%
			IfWinNotActive, %tt%,, WinActivate, %tt%
			if(tx >= 1920/2){
				send, {d down}
				sleep 300
				send, {d up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			
			else if(tx <= 1920/2){
				send, {a down}
				sleep 300
				send, {a up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {w down}
			sleep 1000
			send, {w up}
			sleep 100
			
		}
		else{
			PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5A7B, 10, RGB Fast
			if(ErrorLevel == 0){
				;MsgBox, encontrado2, %tx%, %ty%
				IfWinNotActive, %tt%,, WinActivate, %tt%
				if(tx >= 1920/2){
					send, {d down}
					sleep 300
					send, {d up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				
				else if(tx <= 1920/2){
					send, {a down}
					sleep 300
					send, {a up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					exit := 1
				}
				send, {w down}
				sleep 1000
				send, {w up}
				sleep 100
				
			}
		}
	}
	
	PixelSearch, tx, ty, 1766, 415, 1835, 483, 0xA9A9A9, 3, RGB Fast
	if(ErrorLevel == 1){
			;MsgBox, Vivo el 3
			IfWinNotActive, %tt%,, WinActivate, %tt%
			send, {MButton}
			Send, 3
			sleep 600
			send, {e down}
			sleep 100
			send, {e up}
			sleep 600
			Loop 2{
				send, {LButton}
				sleep 100
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {q down}
			sleep 200
			send, {q up}
			Loop 15 {
				send, {LButton}
				sleep 100
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
		PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5560, 10, RGB Fast
		if(ErrorLevel == 0){
			;MsgBox, encontrado1, %tx%, %ty%
			IfWinNotActive, %tt%,, WinActivate, %tt%
			if(tx >= 1920/2){
				send, {d down}
				sleep 300
				send, {d up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			
			else if(tx <= 1920/2){
				send, {a down}
				sleep 300
				send, {a up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {w down}
			sleep 1000
			send, {w up}
			sleep 100
			
		}
		else{
			PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5A7B, 10, RGB Fast
			if(ErrorLevel == 0){
				;MsgBox, encontrado2, %tx%, %ty%
				IfWinNotActive, %tt%,, WinActivate, %tt%
				if(tx >= 1920/2){
					send, {d down}
					sleep 300
					send, {d up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				
				else if(tx <= 1920/2){
					send, {a down}
					sleep 300
					send, {a up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					exit := 1
				}
				send, {w down}
				sleep 1000
				send, {w up}
				sleep 100
				
			}
		}
	}

	PixelSearch, tx, ty, 1774, 326, 1839, 394, 0x34487B , 3, RGB Fast
	if(ErrorLevel == 0){
			;MsgBox, Vivo el 2
			IfWinNotActive, %tt%,, WinActivate, %tt%
			send, {MButton}
			Send, 2
			sleep 600
			send, {e down}
			sleep 100
			send, {e up}
			sleep 600
			Loop 2{
				send, {LButton}
				sleep 100
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {q down}
			sleep 200
			send, {q up}
			Loop 15 {
				send, {LButton}
				sleep 100
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
		PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5560, 10, RGB Fast
		if(ErrorLevel == 0){
			;MsgBox, encontrado1, %tx%, %ty%
			IfWinNotActive, %tt%,, WinActivate, %tt%
			if(tx >= 1920/2){
				send, {d down}
				sleep 300
				send, {d up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			
			else if(tx <= 1920/2){
				send, {a down}
				sleep 300
				send, {a up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {w down}
			sleep 1000
			send, {w up}
			sleep 100
			
		}
		else{
			PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5A7B, 10, RGB Fast
			if(ErrorLevel == 0){
				;MsgBox, encontrado2, %tx%, %ty%
				IfWinNotActive, %tt%,, WinActivate, %tt%
				if(tx >= 1920/2){
					send, {d down}
					sleep 300
					send, {d up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				
				else if(tx <= 1920/2){
					send, {a down}
					sleep 300
					send, {a up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					exit := 1
				}
				send, {w down}
				sleep 1000
				send, {w up}
				sleep 100
				
			}
		}
	}
	
	PixelSearch, tx, ty, 1766, 511, 1832, 585, 0xFDEBDE, 3, RGB Fast
	if(ErrorLevel == 0){
			;MsgBox, Vivo el 4
			IfWinNotActive, %tt%,, WinActivate, %tt%
			send, {MButton}
			Send, 4
			sleep 600
			send, {q down}
			sleep 300
			send, {q up}
			sleep 200
			Loop 25 {
				send, {LButton}
				sleep 100
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {e down}
			sleep 600
			send, {e up}
			sleep 700
			MouseClick, Left
			sleep 300
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
		PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5560, 10, RGB Fast
		if(ErrorLevel == 0){
			;MsgBox, encontrado1, %tx%, %ty%, %tx%, %ty%
			IfWinNotActive, %tt%,, WinActivate, %tt%
			if(tx >= 1920/2){
				send, {d down}
				sleep 300
				send, {d up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			
			else if(tx <= 1920/2){
				send, {a down}
				sleep 300
				send, {a up}
				sleep 200
				send, {MButton}
				sleep 500
			}
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
			if (ErrorLevel == 0) {
				Send, {F10}
				exit := 1
			}
			send, {w down}
			sleep 1000
			send, {w up}
			sleep 100
			
		}
		else{
			PixelSearch, tx, ty, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFF5A7B, 10, RGB Fast
			if(ErrorLevel == 0){
				;MsgBox, encontrado2, %tx%, %ty%
				IfWinNotActive, %tt%,, WinActivate, %tt%
				if(tx >= 1920/2){
					send, {d down}
					sleep 300
					send, {d up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				
				else if(tx <= 1920/2){
					send, {a down}
					sleep 300
					send, {a up}
					sleep 200
					send, {MButton}
					sleep 500
				}
				PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					exit := 1
				}
				send, {w down}
				sleep 1000
				send, {w up}
				sleep 100
				
			}
		}
	}
}
ExitApp

^ESC::
	ExitApp