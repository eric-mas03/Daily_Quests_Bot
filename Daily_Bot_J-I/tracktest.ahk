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
autocorrect = 0
Loop{
    WinWait, %wt%
    IfWinNotActive, %wt%,, WinActivate, %wt%
    
    PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 1, RGB Fast
    if(ErrorLevel == 0){

        if(Xp<=950){ 

           if(Xp<=660){
                if(Yp<= 600 and Yp >= 480){
                    send, {MButton}
                    sleep 1000
                    send, {a down}
                    sleep 100
                    send, {a up}
                    sleep 1000
                    send, {MButton}
                    sleep 1000
                }
            }
            
            PixelSearch, Xp, Yp, 345, 145, 1575, 1000, 0x5B468B, 1, RGB Fast
            if(ErrorLevel == 0){
                if(Xp<=952){ 
                    MouseGetPos, X, Y
                    send, {Alt down}
                    sleep 150
                    send, {LButton down}
                    sleep 10
                    Loop 8{
                        MouseMove, X, Y
                        X := X-25
                        sleep 1
                    }
                    sleep 10
                    send, {LButton up}
                    sleep 1
                    send, {Alt up}
                    autocorrect:= autocorrect + 1
                    if(autocorrect == 10){
                        send, {w up}
                        autocorrect := 0
                    }
                }
                else if(Xp>=1260){
                        MouseGetPos, X, Y
                        send, {Alt down}
                        sleep 150
                        send, {LButton down}
                        sleep 10
                        Loop 8{
                            MouseMove, X, Y
                            X := X+25
                            sleep 1
                        }
                        sleep 10
                        send, {LButton up}
                        sleep 1
                        send, {Alt up}
                        autocorrect:= autocorrect + 1
                        if(autocorrect == 10){
                            send, {w up}
                            autocorrect := 0
                        }
                }
            }
        }
        else if(Xp>=967){
        
        if(Xp>=1260){

            if(Yp<= 600 and Yp >= 480){
                send, {MButton}
                sleep 1000
                send, {d down}
                sleep 100
                send, {d up}
                sleep 1000
                send, {MButton}
                sleep 1000
            }
        }
        PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 1, RGB Fast
        if(ErrorLevel == 0){
            if(Xp<=950){ 
                MouseGetPos, X, Y
                send, {Alt down}
                sleep 150
                send, {LButton down}
                sleep 10
                Loop 8{
                    MouseMove, X, Y
                    X := X-25
                    sleep 1
                }
                sleep 10
                send, {LButton up}
                sleep 1
                send, {Alt up}
                autocorrect:= autocorrect + 1
                if(autocorrect == 10){
                        send, {w up}
                        autocorrect := 0
                }
            }
            else if(Xp>=1260){
                    MouseGetPos, X, Y
                    send, {Alt down}
                    sleep 150
                    send, {LButton down}
                    sleep 10
                    Loop 8{
                        MouseMove, X, Y
                        X := X+25
                        sleep 1
                    }
                    sleep 10
                    send, {LButton up}
                    sleep 1
                    send, {Alt up}
                    autocorrect:= autocorrect + 1
                    if(autocorrect == 10){
                        send, {w up}
                        autocorrect := 0
                    }
            }
        }
    }
    sleep 10
    
    PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 1, RGB Fast
    if(Xp>=952 and Xp<=967){ 
            PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 1, RGB Fast
            if(ErrorLevel == 0){
                if(Yp>1080/2){
                    send,{s down}
                    sleep 200
                    send, {s up}
                    sleep 1000
                    send, {MButton}
                    send, {shift}
                    sleep 100
                    send, {SPACE}
                }
                if(Yp<=1080/2){
                    send,{w down}
                    send, {SPACE}
                    if(autocorrect == 10){
                        send, {w up}
                        autocorrect := 0
                    }
                    
                }
            }
    }
}

    PixelSearch,Xp ,Yp ,345,145,1575,1000, 0x5B468B, 1, RGB Fast
    if(ErrorLevel == 1){
        send, {v}
        sleep 20
        contador := contador + 1
        autocorrect := autocorrect +1 
        if(contador == 100){
            sleep 4000
            send, {w up}
            run, "combat.ahk"
            sleep 100
            ExitApp
        }
        if(autocorrect == 50){
            send, {w up}
            autocorrect := 0
        }
    }
}


^ESC::
send, {w up}
ExitApp
return