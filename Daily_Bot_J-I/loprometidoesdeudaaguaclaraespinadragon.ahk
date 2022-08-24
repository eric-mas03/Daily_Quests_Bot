#SingleInstance Force
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

        sleep 10000
		send, 4
		sleep 1000
		MouseClick, Left, 129, 871
		sleep 200
		MouseClick, Left, 1654, 1003
		sleep 10000
		send, 4
		sleep 500
		send, {a down}
		sleep 400
		send, {a up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 10000
		send, {w up} 
		sleep 1000
		send, {a down}
		sleep 1000
		send, {a up}
		sleep 1000
		send, {w down}
		sleep 63500
		send, {w up}
		sleep 200
		
		Loop 3{
			send, {a down}
			sleep 100
			send, {a up}
			sleep 200
			send, f
		}
		;Loop 17 {
			;MouseClick, Left, 1080, 613
    		sleep 2000
		;}
		sleep 10000
		send, {s down}
		sleep 200
		send, {s up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 45000
		send, {w up}
		Loop 4{
			run "combat.ahk"
			sleep 20000
		}
        sleep 2000
        send, m
        sleep 1000
        Loop 100{
            send, {WheelDown}
            sleep 40
        }
        Loop 19{
            send, {WheelUp}
            sleep 100
        }
        MouseClick, Left, 842, 475
        sleep 100
        MouseClick, Left, 1654, 1003
        sleep 10000

        sleep 10000
		send, 4
		sleep 1000
		MouseClick, Left, 129, 871
		sleep 200
		MouseClick, Left, 1654, 1003
		sleep 10000
		send, 4
		sleep 500
		send, {a down}
		sleep 400
		send, {a up}
		sleep 1000
		send, {MButton}
		sleep 1000
		send, {w down}
		sleep 10000
		send, {w up} 
		sleep 1000
		send, {a down}
		sleep 1000
		send, {a up}
		sleep 1000
		send, {w down}
		sleep 63500
		send, {w up}
		sleep 200
		
		Loop 3{
			send, {a down}
			sleep 100
			send, {a up}
			sleep 200
			send, f
		}
		Loop 17 {
			MouseClick, Left, 1080, 613
    		sleep 2000
		}
        sleep 1000