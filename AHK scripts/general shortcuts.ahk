; ctrl-shift-b	    >>	make new file and open file according to extention
; alt-x	            >>	open a new window of chrome
; win-q	            >>	toggle active window to always-on-top
; ctrl-o            >> 	type "ORDER BY DESC"
; ctrl-u	        >>	make selected tekst upercase
; ctrl-l	        >>	make selected tekst lowercase
; ctrl-shift-l      >> 	replace spaces with underscores
; ctrl-shift-u	    >>	make first letter of word uppercase
; ctrl-[            >> 	surround text with brackets 
; ~	               	>>	in explorer 1 level up


;change powershell to terminal



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force

Menu, Tray, Icon, pics/default.png

;hotstrings
::!sel::SELECT * FROM 
::!ord::ORDER BY 1 DESC
::!mvg::Met vriendelijke groet,{enter}Mendel Niehof


;make numlock hold
;NumLock:: SetNumLockState, off
;NumLock up:: SetNumLockState, On 

;hotstrings shortcuts?
!b::
   Send, {tab}{tab}
   Send, ^c
   Send, {tab}
   Send, 5:00
   Send, {tab}
   Send, ^v
   Send, {tab}
   Send, 20:00
Return

NumpadEnd::
   send Select * from 
return

NumpadHome::
   Run, bthprops.cpl
   Sleep, 3000
   Send, {tab}{tab}{tab}
   Sleep, 500
   Send, {enter}
   Sleep, 200
   Send, {tab}{enter}
   Sleep, 500
   Send,!{Tab}
return

^+r:: Reload

; control shift b to make new file in file explorer
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
; Open chrome with alt x
!x::
run % "firefox.exe" ( winExist("ahk_class Chrome_WidgetWin_1") ? " --new-window " : " " ) 
return

!z::
Run, powershell -NoExit -Command "cd ~;"
return 

OT := False
; Always on Top - control space
#q:: 
if OT{
    Winset, Alwaysontop,On , A
    ;Menu, Tray, Icon, pics/top.png
    OT := False
    Return
}
Winset, Alwaysontop,Off , A
OT := True
;Menu, Tray, Icon, pics/default.png
Return


^u::                            ; Convert text to upper ctrl-u
 OldClipboard:= Clipboard       ; DONT use it with enters
 Clipboard:= ""
 Send, ^c ; Copies selected text
 ClipWait, 0.5
 StringUpper Clipboard, Clipboard
 Send %Clipboard%
 Sleep 1000
 Clipboard:= OldClipboard
return

^l::                            ; Convert text to lower ctrl-l
 OldClipboard:= Clipboard       ; DONT use it with enters
 Clipboard:= ""
 Send, ^c ; Copies selected text
 ClipWait, 0.5
 StringLower Clipboard, Clipboard
 Send %Clipboard%
 Sleep 1000
 Clipboard:= OldClipboard
return

+^u::                           ; Convert text to lower except the 1st letter ctrl-shift-u
 OldClipboard:= Clipboard       ; DONT use it with enters
 Clipboard:= ""
 Send, ^c ; Copies selected text
 ClipWait, 0.5
 StringLower Clipboard, Clipboard, T
 Send %Clipboard%
 Sleep 1000
 Clipboard:= OldClipboard
return

+^l::                            ; spaces = underscores ctrl-shift-l
 OldClipboard:= Clipboard        ; DONT use it with enters
 Clipboard:= ""
 Send, ^c ; Copies selected text
 ClipWait, 0.5
 Clipboard := StrReplace(Clipboard, A_Space, "_")
 Send %Clipboard%
 Sleep 1000
 Clipboard:= OldClipboard
return


^[::                            ;
 OldClipboard:= Clipboard       ; 
 Clipboard:= ""
 Send, ^c ; Copies selected text
 ClipWait, 0.5
if Clipboard = 
{
 Sleep 1000
 Clipboard:= OldClipboard
 return
}
 Send [%Clipboard%]
 Sleep 1000
 Clipboard:= OldClipboard
return


; Press ~ to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
`::Send !{Up} 
#IfWinActive
return



UriEncode(Uri)
{
   VarSetCapacity(Var, StrPut(Uri, "UTF-8"), 0)
   StrPut(Uri, &Var, "UTF-8")
   f := A_FormatInteger
   Res := ""
   SetFormat, IntegerFast, H
   While Code := NumGet(Var, A_Index - 1, "UChar")
      If (Code >= 0x30 && Code <= 0x39 ; 0-9
         || Code >= 0x41 && Code <= 0x5A ; A-Z
         || Code >= 0x61 && Code <= 0x7A) ; a-z
         Res .= Chr(Code)
      Else
         Res .= "%" . SubStr(Code + 0x100, -1)
   SetFormat, IntegerFast, %f%
   Return, Res
}
return
