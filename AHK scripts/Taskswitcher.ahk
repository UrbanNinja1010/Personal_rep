$~LWin::ContinuousFire()

	

 ContinuousFire() {
		Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
		Text= 1   2   3   4   5   6    7   8   9
		Gui, Color, c991A00
		Gui,Font, s15 Bold, Verdana
		Gui, Add,Text, c000000, % Text
		Gui, Show, x108  y1003 NoActivate  ; NoActivate avoids deactivating the currently active window.
		x := 1			
		Send {LWin Down}
		While GetKeyState("LWin"){
			Sleep, 10
		}
		Gui, Destroy
	}
	
	
