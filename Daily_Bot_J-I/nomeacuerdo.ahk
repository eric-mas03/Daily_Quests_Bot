#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
    sleep 10000
    send, {a down}
    sleep 100
    send, {a up}
    sleep 100
    send, {MButton}
    sleep 1200
    send, {w down}
    sleep 9000
    Loop 10 {
        send, {SPACE}
        sleep 1000
    }
    send, {d down}
    send, {w down}
    sleep 200
    send, {w up}
    send, {d up}
    sleep 100
    send, {MButton}
    sleep 1000
    send, {w down}
    sleep 6000
    send, {w up}
    Loop 4{
        run, "combat.ahk"
        sleep 20000
    }