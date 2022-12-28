Global $WinName = "World of Warcraft"
Global $state = "stop" 
Opt("PixelCoordMode", 2) ;Отсчет координат пикселей от левого верхнего угла клиентской части окна
Opt("MouseCoordMode", 2) ;Отсчет координат мыши от левого верхнего угла клиентской части окна
HotKeySet("3", "_Exit")
HotKeySet("1","Runing")
HotKeySet("2","Pause")
WinActivate($WinName)
WinWaitActive($WinName)	


Func _Exit()
    Exit
EndFunc



Func Fish()
	While 1
			$coord = PixelSearch(641,335,1281,618, 0xFFFFFF)
			If Not @error Then
				sleep(500)
				MouseClick("left", $coord[0],$coord[1]);
				sleep(1000)
				Send("5")
			EndIf
	WEnd
EndFunc

