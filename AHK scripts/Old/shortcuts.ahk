SetNumlockState, AlwaysOn

#IfWinActive ahk_class CabinetWClass
^+b::
#IfWinActive ahk_class ExploreWClass
^+b::
#IfWinActive ahk_class Progman
^+b::
#IfWinActive ahk_class WorkerW
^+b::
    ; Get full path from open Explorer window
    WinGetText, FullPath, A

    ; Clean up result
    StringReplace, FullPath, FullPath, `r, , all
    FullPath := RegExReplace(FullPath, "^.*`nAddress: ([^`n]+)`n.*$", "$1")

    ; Change working directory
    SetWorkingDir, %FullPath%

    ; An error occurred with the SetWorkingDir directive
    If ErrorLevel
        Return

    ; Display input box for filename
    InputBox, UserInput, New File (example: foo.txt), , , 400, 100

    ; User pressed cancel
    If ErrorLevel
        Return

    ; Create file
    FileAppend, , %UserInput%

    ; Open the file in the appropriate editor
    Run %UserInput%

    Return
	
	


#IfWinActive
;open edge
!x::
run % "msedge.exe" ( winExist("ahk_class Chrome_WidgetWin_1") ? " --new-window " : " " ) 
return

;#z to screen
#z::+#s


; Always on Top
^SPACE:: Winset, Alwaysontop, , A ; ctrl + space
Return

active := true

; Suspend AutoHotKey
NumLock::
Suspend 
DetectHiddenWindows On  ; Allows a script's hidden main window to be detected.
SetTitleMatchMode 2  ; Avoids the need to specify the full path of the file below.
PostMessage, 0x111, 65305,,, dragging.ahk - AutoHotkey  ; Suspend.

TrayTip, Suspended, ahk hotkeys %active%,1,33
Sleep 1500   ; Let it display for 1.5 seconds.
HideTrayTip()
active := !active

return


HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}



