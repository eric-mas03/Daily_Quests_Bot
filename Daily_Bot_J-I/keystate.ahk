﻿
#SingleInstance Force

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


º::
		sleep 0
		send, {w down}
		send, {d down}
		sleep 200
		send, {w up}
		send, {d up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 7000
		Loop 4{
			send, {a down}
			sleep 200
			send, {a up}
			sleep 1000
		}
		sleep 6000
		send, {w up}
		sleep 100
		send, {f down}
		sleep 100
		send, {f up}
		
return





^ESC::
ExitApp