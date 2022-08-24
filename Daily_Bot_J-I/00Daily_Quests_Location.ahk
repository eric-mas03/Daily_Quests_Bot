
#SingleInstance Force

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%" ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check  first.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^ESC::
ExitApp


º::
	;Variables Declaration
	
	oX = 960
	oY = 540
	fX = 960
	fY = 540
	
	
	tt = Genshin Impact ahk_class UnityWndClass
	WinWait, %tt%
	IfWinNotActive, %tt%,, WinActivate, %tt%
	sleep 1000
	
	;Tp outside mondstad location 
	send, m
	sleep 1000
	MouseClick, Left, 1532, 47
	sleep 1000
	Loop 40{
		send, {WheelUp}
		sleep 50
	}
	MouseClick, Left, 1812, 1028
	sleep 1000
	MouseClick, Left, 1596, 265
	sleep 1000
	MouseClick, Left, 1104, 531
	sleep 1000
	MouseClick, Left, 1422, 750
	sleep 1000
	MouseClick, Left, 1654, 1003
	sleep 10000
	
	
	
	;Track the top mission
	sleep 1000
	send, j
	sleep 3000
	MouseClick, Left, 1055, 47
	sleep 200
	MouseClick, Left, 400, 198
	sleep 200
	MouseClick, Left, 1640, 1010
	sleep 100
	MouseClick, Left, 1640, 1010
	sleep 1000
	
	;Tp to the mission
	send, m
	sleep 1000
	Loop 20{
		send, {WheelUp}
		sleep 60
	}
	MouseClick, Left, 1812, 1028
	sleep 600
	MouseClick, Left, 1596, 265
	sleep 600
	MouseClick, Left, 1875, 33
	sleep 600
	PixelSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x987CD5, 15, RGB Fast
	sleep 1000
	MouseClick, Left, X, Y
	
	Loop 20{
		send, {WheelUp}
		sleep 60
	}
	sleep 2000
	MouseClick, Right, X, Y+20
	sleep 2000
	
	times := 100
	Tx := 0
	Ty := 0
	
	;Locating closest teleport to the commision
	Loop %times%{

		if(times!=0){
			PixelSearch, Tx, Ty, oX, oY, fX, fY, 0x04ECF3, 6, RGB Fast
				if(ErrorLevel == 0){
					MsgBox, Found1, Tx = %Tx%, Ty = %Ty%		 ;Los quitaremos una vez tengamos todas las coordenadas para la mision	
					IfWinNotActive, %tt%,, WinActivate, %tt%
					sleep 1000
					MouseClick, Left, Tx, Ty
					times := 0
					sleep 200
					MouseClick, Left, 1654, 1003
				}
		}
		
		if(times!=0){
			PixelSearch, Tx, Ty, oX, oY, fX, fY, 0x226EA6, 5, RGB Fast
			if(ErrorLevel == 0){
					MsgBox, Found2, Tx = %Tx%, Ty = %Ty%		 ;Los quitaremos una vez tengamos todas las coordenadas para la mision
					IfWinNotActive, %tt%,, WinActivate, %tt%
					sleep 1000
					MouseClick, Left, Tx, Ty
					times := 0
					sleep 200
					MouseClick, Left, 1654, 1003
				}
		}
		
		if(times!=0){
			PixelSearch, Tx, Ty, oX, oY, fX, fY, 0x01EAEC, 5, RGB Fast
			if(ErrorLevel == 0){
					MsgBox, Found3, Tx = %Tx%, Ty = %Ty%		 ;Los quitaremos una vez tengamos todas las coordenadas para la mision
					IfWinNotActive, %tt%,, WinActivate, %tt%
					sleep 1000
					MouseClick, Left, Tx, Ty
					times := 0
					sleep 200
					MouseClick, Left, 1654, 1003
				}		 
		}
		
		if(times!=0){
			PixelSearch, Tx, Ty, oX, oY, fX, fY, 0x8AD7DF, 5, RGB Fast
			if(ErrorLevel == 0){
					MsgBox, Found4, Tx = %Tx%, Ty = %Ty%		 ;Los quitaremos una vez tengamos todas las coordenadas para la mision
					IfWinNotActive, %tt%,, WinActivate, %tt%
					sleep 1000
					MouseClick, Left, Tx, Ty
					times := 0
					sleep 200
					MouseClick, Left, 1654, 1003
				}		 
		}
		 
		if(times!=0){
			PixelSearch, Tx, Ty, oX, oY, fX, fY, 0x2880C0, 5, RGB Fast
			if(ErrorLevel == 0){
					MsgBox, Found5, Tx = %Tx%, Ty = %Ty%		 ;Los quitaremos una vez tengamos todas las coordenadas para la mision
					IfWinNotActive, %tt%,, WinActivate, %tt%
					sleep 1000
					MouseClick, Left, Tx, Ty
					times := 0
					sleep 200
					MouseClick, Left, 1654, 1003
					
				}		 
		}
		
		if(times!=0){
			PixelSearch, Tx, Ty, oX, oY, fX, fY, 0x99ECF5, 5, RGB Fast
			if(ErrorLevel == 0){
					MsgBox, Found6, Tx = %Tx%, Ty = %Ty%		 ;Los quitaremos una vez tengamos todas las coordenadas para la mision
					IfWinNotActive, %tt%,, WinActivate, %tt%
					sleep 1000
					MouseClick, Left, Tx, Ty
					times := 0
					sleep 200
					MouseClick, Left, 1654, 1003
					
				}		 
		}

		if(times!=0){
			PixelSearch, Tx, Ty, oX, oY, fX, fY, 0X2988CC, 10, RGB Fast
			if(ErrorLevel == 0){
					MsgBox, Found7, Tx = %Tx%, Ty = %Ty%		 ;Los quitaremos una vez tengamos todas las coordenadas para la mision
					IfWinNotActive, %tt%,, WinActivate, %tt%
					sleep 1000
					MouseClick, Left, Tx, Ty
					times := 0
					sleep 200
					MouseClick, Left, 1654, 1003
					
				}		 
		}
		 
		
		oX := oX - 15
		oY := oY - 15
		
		fX := fX + 15
		fY := fY + 15
		sleep 10
	}
	
	if(Tx == 1349 && Ty == 143){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "eliminateslimes1.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}	
	if(Tx == 1409 && Ty == 419){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "smallstephili_wiwoo.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}
	
	if(Tx == 1158 && Ty == 707){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "evil_propagation_wolvek.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}
	
	if(Tx == 1034 && Ty == 285){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "nomeacuerdo.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}
	
	if(Tx == 1204 && Ty == 504){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "mondstadbridgebird.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}
	
	if(Tx == 1138 && Ty == 243){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "redondosyrechonchoswolveskingdom.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}
	
	if(Tx == 888 && Ty == 587){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "avanzandorapido_vinedoamanecer.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 1364 && Ty == 158){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "loprometidoesdeudaaguaclaraespinadragon.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}

	}

	if(Tx == 819 && Ty == 747){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "crisisescudosplantahielo.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 1215 && Ty == 742){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "emergency_meseta_ventisca.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 1134 && Ty == 616){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "eliminateslimes_aldeaguaclara.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 800 && Ty == 395){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "emergency_thousand_winds_temple.ahk "
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 1113 && Ty == 694){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "objetosredondosyexplosivos_levantamiento.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 1053 && Ty == 567){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "lamejordelasdefensas_espinadragon.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 1104 && Ty == 751){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "grata_sorpresa_cathedral_Mondstad.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 1083 && Ty == 558){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "increasing danger starfell valley.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 952 && Ty == 435){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "emergency_storm_terror.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 929 && Ty == 450){
		MouseClick, Left, 929, 450
		sleep 1000
		MouseClick, Left, 1384, 734
		sleep 1000
		MouseClick, Left, 1600, 1000
		sleep 1000
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window
		sleep 10000
		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "food_deliver.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 768 && Ty == 748){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "emergency_storm_terror.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 735 && Ty == 383){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "redondosyexplosivos_ventisca_mondstad.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

	if(Tx == 947 && Ty == 510){
		SetTitleMatchMode, 2
		CoordMode, Mouse, Window

		tt = Genshin Impact ahk_class UnityWndClass
		WinWait, %tt%
		IfWinNotActive, %tt%,, WinActivate, %tt%
		run, "avanzando_espinadragon.ahk"
		Loop  200 {
			PixelSearch,,,752,170,1168,198,0x7DFF61,14,RGB Fast
				if (ErrorLevel == 0) {
					Send, {F10}
					break
				}
			Sleep, 1500
		}
	}

-::
ExitApp
return