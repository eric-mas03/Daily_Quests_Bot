#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


    ;A small step for hilichurs, whispering woods
    sleep 10000
    send, 1
    sleep 1000
    send, {d down}
    sleep 100
    send, {d up}
    sleep 1000
    send, {MButton}
    sleep 1000
    send, {w down}
    sleep 46000
    
    Loop 13{
        send, {d down}
        sleep 100
        send, {d up}
        sleep 100
    }
            
    send, {d down}
    sleep 100
    send, {d up}
    sleep 100
    send, {MButton}
    sleep 3000
    send, {w up}
    
    Loop 6{
        run, "combat.ahk"
        sleep 20000
    }