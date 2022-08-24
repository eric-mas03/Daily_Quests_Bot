#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

	tt = Genshin Impact ahk_class UnityWndClass
	WinWait, %tt%
	IfWinNotActive, %tt%,, WinActivate, %tt%
    
gotocathedral(){
    sleep 10000
    send, 4
    sleep 500
    send, {a down}
    sleep 100
    send, {a up}
    sleep 1000
    send, {MButton}
    sleep 1000
    send, {w down}
    sleep 200
    send, {SPACE}
    sleep 320
    send, {Space}
    sleep 20000
    Loop 4{
        send, {a down}
        sleep 200
        send, {a up}
        sleep 100
        send, {x}
    }
    sleep 3000
    send, {x}
    sleep 3000
    send, {x}
    send, {w up}
    send, {x}
    sleep 1000
    send, {f}
    sleep 15000
    send, {w down}
    sleep 2600
    send, {w up}
    sleep 1000
    send, {d down}
    Loop 6{
        send, {f}
        sleep 200
    }
    send, {d up}
    sleep 100
    send, {f}
    sleep 1000
    run, "0textskip.ahk"
    sleep 20000
}

exitcathedralandbuy(){
    send, {m}
    sleep 1000
    MouseClick, Left, 1410, 717
    sleep 1000
    MouseClick, Left, 1716, 1000
    sleep 15000
    send, {w down}
    sleep 9700
    send, {w up}
    sleep 1000
    send, {a down}
    sleep 1000
    send, {a up}
    sleep 1000
    send, {MButton}
    sleep 1000
    send, {w down}
    sleep 1400
    send,{w up}
    sleep 1000
    send, {f}
    sleep 1000
    Loop 10{
        MouseClick, Left
        sleep 100
    }
    MouseClick, Left, 1444, 519
    sleep 1000
    run, "0textskip.ahk"
    sleep 20000
    send, m
    sleep 1000
    MouseClick, Left, 591, 507
    sleep 1000
    MouseClick, Left, 1716, 1000

}

gotocathedral()
exitcathedralandbuy()
gotocathedral()
   
^ESC::
ExitApp