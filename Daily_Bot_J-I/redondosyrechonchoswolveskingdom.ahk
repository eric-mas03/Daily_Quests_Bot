#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;Redondos y rechonchos, wolves kingdom
		sleep 10000
		send, 3
		sleep 1000
		send, {a down}
		sleep 200
		send, {a up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 68000
		send, {w up}
		
		Loop 6{
			run, "combat.ahk"
			sleep 20000
			MouseClick, Left
			send, {MButton}
		}
	