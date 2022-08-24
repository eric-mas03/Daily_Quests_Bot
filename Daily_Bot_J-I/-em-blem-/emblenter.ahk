#SingleInstance, Force 
SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Genshin Impact ahk_class UnityWndClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
SetWorkingDir %A_ScriptDir%


send {s down}
sleep 1500
send {s up}
send f
sleep 4000
click, 1740 1000
sleep 1500
click, 1740 1000
sleep 6000
run "emblem.ahk"
return