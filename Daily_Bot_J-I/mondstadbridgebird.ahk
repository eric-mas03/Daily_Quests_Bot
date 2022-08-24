#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;Paloma, Pato y niño, mondstad bridge
    sleep 10000
    send, 3
    sleep 300
    send, {w down}
    sleep 21000
    send, {w up}
    sleep 200
    send, {a down}
    sleep 100
    send, {a up}
    sleep 200
    send, {f down}
    sleep 200
    Loop 20{
        MouseClick, Left, 1308, 790
        sleep 500
    }
    send, {m}
    sleep 1000
    MouseClick, Left, 1204, 504
    sleep 500
    MouseClick, Left, 1654, 1003
    
    sleep 10000
    send, {w down}
    sleep 21000
    send, {w up}
    sleep 200
    send, {a down}
    sleep 100
    send, {a up}
    sleep 200
    send, {f down}
    sleep 1000
    MouseClick, Left, 1308, 790
    sleep 1000
    MouseClick, Left, 1308, 790
    sleep 1000
    MouseClick, Left, 1308, 790
    sleep 1000
    MouseClick, Left, 1308, 790
    
    send, {m}
    sleep 1000
    MouseClick, Left, 1204, 504
    sleep 500
    MouseClick, Left, 1654, 1003
    
    sleep 10000
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
    
    
    send, {m}
    sleep 1000
    MouseClick, Left, 1080, 613
    sleep 500
    MouseClick, Left, 1654, 1003
    
    sleep 10000
    send, {w down}
    sleep 21000
    send, {w up}
    sleep 200
    send, {a down}
    sleep 100
    send, {a up}
    sleep 200
    send, {f down}
    sleep 200