
#SingleInstance Force

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



sal = 0

sleep 1000
while(sal < 100){

    PixelSearch, Tx, Ty, 710, 849, 1284, 900, 0xFFC300, 6, RGB Fast
    if(ErrorLevel == 1){
        sal := sal + 1
        sleep 100
    }
    else{
        sal := 0
        sleep 10
        PixelSearch, Tx, Ty, 710, 500, 1284, 900, 0x806200, 6, RGB Fast
        if(ErrorLevel == 0){
            MouseClick, Left, Tx, Ty
        }
        
        PixelSearch, Tx, Ty, 1268, 500, 1323, 827, 0xFFFFFF, 1, RGB Fast
        if(ErrorLevel == 1){
            MouseClick, Left
        }
        else{
            MouseClick, Left, Tx, Ty
           
        }
        sleep 100
    }
}
ExitApp


^ESC::
ExitApp