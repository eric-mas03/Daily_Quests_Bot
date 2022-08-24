#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


    sleep 10000
    send, 3					;Personaje 3
    sleep 1000
    ;Elimina los Slime
    ;MsgBox, Pausa hasta tener el código hecho
    send, {W Down}
    sleep 14000
    send, {W up}
    sleep 100
    send, {a down}
    sleep 1000
    send, {a up}
    sleep 100
    send, {w down}
    sleep 7500
    send, {SPACE}
    send, {d down}
    sleep 12000
    send, {d up}
    sleep 15000
    send, {d down}
    sleep 6000
    send, {d up}
    send, {w up}
    
    
    ;Pelea
    Loop 4{
        run, "combat.ahk"
        sleep 20000
    }
    send, f
    
    send, {a down}
    sleep 5000
    send, {a up}
    sleep 100
    send, {w down}
    sleep 19000
    send, {w up}
    send, {d down}
    sleep 500
    send, {d up}
    send, 4
    sleep 1000
    send, e
