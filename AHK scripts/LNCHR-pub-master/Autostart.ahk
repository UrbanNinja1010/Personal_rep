#Requires AutoHotkey v2.0
#SingleInstance

consoleMsg(str) {
  static DebugConsoleInitialized := 0
  if (DebugConsoleInitialized == 0) {
    DllCall("AllocConsole")
    DebugConsoleInitialized := 1
  }
  FileAppend str, "CONOUT$"
}

; NOTE: Use dbgview64.exe to view OutputDebug messages. Optionally uncomment
; consoleMsg to get a console window with debug prints or MsgBox to get message
; box popups for each message.
;
; Use like msg(Format("hello {:s}", "world")), see AutoHotKey "Format
; Specifiers" help.
msg(text) {
  OutputDebug("AHK|" . text)
  ;consoleMsg(text . "`n")
  ;MsgBox(text)
}

;Use absolute coordinates, required for AltWindowDrag.ahk
CoordMode "Mouse", "Screen"

#include AltWindowDrag.ahk
#include LNCHR-Main.ahk


; ; = comment
; ^ = control
; # = windows key
; + = shift
; ! = alt


#LButton::AWD_StartAction(0, "LButton") ; Move window with windows key + Lclick
#RButton::AWD_StartAction(1, "RButton") ; Resize window with windows key + Rclick
!+R::reload ; Reload the app
; #p::Pause -1  ; Pause the scripts

