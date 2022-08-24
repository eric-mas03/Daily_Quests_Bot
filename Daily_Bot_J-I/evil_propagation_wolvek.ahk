#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;Propagación del mal, wolves kingdom
    sleep 10000
    send, 4
    sleep 300
    send, {w down}
    send, {d down}
    sleep 1000
    send, {w up}
    send, {d up}
    sleep 1000
    send, {MButton}
    sleep 1200
    send, {a down}
    sleep 200
    send, {a up}
    sleep 100
    send, {w down}
    sleep 42000
    Loop 20{
        send, {a down}
        sleep 100
        send, {a up}
        sleep 100
    }
    send, {MButton}
    sleep 1500
    send, {w down}
    sleep 6000
    send, {w up}
    Loop 4{
        run, "combat.ahk"
        sleep 180000
    }