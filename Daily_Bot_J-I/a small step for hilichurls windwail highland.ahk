;A small step for hilichurls, starfell valley

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
#SingleInstance, Force



sleep 10000
send m

Sleep, 1200

MouseClick, L, 1150,900

Sleep, 500

MouseClick, L, 1577, 994

Sleep, 3500 

sleep 500
send 3
sleep 500
Send, s
Sleep, 400
Click, M
Sleep, 200   
Send, W
Sleep, 100
Send, {W down}
Send, {Shift down}
sleep 350
send {space}
sleep 350
send {space}
Sleep, 9500
Send, {a down}
Sleep, 2500
Send, {a up}
Sleep, 2500
Send, {w up}
Send, {Shift up}
run "%A_ScriptDir%\combat.ahk"


F10::
ExitApp