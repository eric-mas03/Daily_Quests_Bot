#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%"       ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv                                    ; Recommended for performance and compatibility with future AutoHotkey releases.
                                          ; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input                            ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%               ; Ensures a consistent starting directory.
wt = Genshin Impact ahk_class UnityWndClass
DetectHiddenWindows, On 

	WinWait, %wt%
	IfWinNotActive, %wt%,, WinActivate, %wt%

tow := 0
loop
	{
		sleep 1000
		ImageSearch, xclick, yclick, 361, 186, 1566, 880, *32 *TransBlack 2m.png
		if (ErrorLevel == 0){
			loop 1{
				sleep 3000
				run combat.ahk
				WinClose, automove.ahk ahk_class AutoHotkey
				sleep 18000
				run automove.ahk
			}
			PixelSearch  ,,, 744, 160, 1166,210,0x3E7B1B,8,RGB Fast
			if (ErrorLevel == 0) {
				WinClose, automove.ahk ahk_class AutoHotkey
				WinClose, combat.ahk ahk_class AutoHotkey
				WinClose, "increasing danger brightcrown mountains.ahk" ahk_class AutoHotkey
				ExitApp
			}
		}
	}




F10::
ExitApp
return
