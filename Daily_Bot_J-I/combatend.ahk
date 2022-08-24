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



loop {
	PixelSearch  ,,, 744, 160, 1166,210,0x3E7B1B,8,RGB Fast
	if (ErrorLevel == 0) {
		WinClose, combat.ahk ahk_class AutoHotkey
		sleep 100
		MsgBox, sacabo
		ExitApp
	}
	sleep 333
}