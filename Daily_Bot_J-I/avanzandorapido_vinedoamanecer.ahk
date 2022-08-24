#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;Avanzando rapidamente, vieñedo amanecer
		sleep 10000
		send, 4
		sleep 1000
		send, {s down}
		sleep 200
		send, {s up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 8000
		send, {w up}
		sleep 100
		send, {a down}
		send, {w down}
		sleep 400
		send, {a up}
		send, {w up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 1200
		send, {w up}
		sleep 100
		send, {a down}
		sleep 650
		send, {a up}
		sleep 3000
		send, {w down}
		sleep 200
		send, {w up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 4000
		Loop 13{
			send, {a down}
			sleep 200
			send, {a up}
			sleep 100
		}
		sleep 14000
		send, {w up}
		send, 1
		sleep 500
		send, {e down}
		sleep 200
		send, {e up}
		sleep 300
		send, 4
		sleep 500
		send, {e down}
		sleep 700
		send, {e up}
		sleep 700
		send, {LButton}
		sleep 100
		
		loop 90 {
			send, {LButton}
			sleep 100
		}
		
		send, {e down}
		sleep 700
		send, {e up}
		sleep 700
		send, {LButton}
		sleep 100