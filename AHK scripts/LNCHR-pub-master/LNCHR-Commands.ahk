lngui_run_commands(input){


if ((input == "todo") and (UsingAnyWorkcomputer)) ; todo 
{
close_lngui()
tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select outlook:tasks')
return
}

if ((input == "cal") and (UsingAnyWorkcomputer)) ; cal 
{
close_lngui()
tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select outlook:calendar')
return
}

if ((input == "com") and (UsingAnyWorkcomputer)) ; com 
{
close_lngui()
outlookApp := GetOutlookCom()
MailItem := outlookApp.CreateItem(0)
MailItem.Display
return
}

if ((input == "inb") and (UsingAnyWorkcomputer)) ; inb 
{
close_lngui()
tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select outlook:inbox')
return
}

if ((input == "tdi") and (UsingAnyWorkcomputer)) ; tdi 
{
close_lngui()
nr := StrReplace(A_Clipboard, " ", "+")
if(InStr(nr, "AM")){
	tryrun(StrReplace("https://axians.topdesk.net/tas/secure/incident?action=lookup&lookup=naam&lookupValue=REPLACEME","REPLACEME",nr))
} 
if(InStr(nr, "AW")){
	tryrun(StrReplace("https://axians.topdesk.net/tas/secure/newchange?action=lookup&lookup=number&lookupValue=REPLACEME","REPLACEME",nr))
}
return
}

if ((input == "tdp") and (UsingAnyWorkcomputer)) ; tdp 
{
close_lngui()
tryrun('https://axians.topdesk.net/')
return
}

if ((input == "whi") and (UsingAnyWorkcomputer)) ; whi 
{
close_lngui()
tryrun('https://vincienergies.sharepoint.com/:x:/r/sites/AxiansPSManagedServicesTeam/Documents`%20partages/General/Ochtendcontrole/Whiteboard`%202.0.xlsx?d=w8f40518b1395443bbc43f59c0c153edc&csf=1&web=1&e=2lxaND')
return
}

if ((input == "snow") and (UsingAnyWorkcomputer)) ; snow 
{
close_lngui()
tryrun('https://axians.service-now.com')
return
}

if ((input == "zab") and (UsingAnyWorkcomputer)) ; zab 
{
close_lngui()
tryrun('https://monitoring.bs.axians.nl/zabbix/zabbix.php?action=dashboard.view')
return
}

if input == "?" ; ? 
{
tryrun("HELP-Commands.txt")
Sleep(100)
close_lngui()
build_lngui()
return
}

if input == "a dir" ; a dir 
{
close_lngui()
tryrun('%A_ScriptDir%\..\')
return
}

if input == "a edit" ; a edit 
{
close_lngui()
tryrun('pycharm64 %A_ScriptDir%\..\.')
return
}

if input == "a kill" ; a kill 
{
close_lngui()
tryrun('KillAHK.ahk')
return
}

if input == "a rel" ; a rel 
{
close_lngui()
Reload
return
}

if input == "a show" ; a show 
{
close_lngui()
tryrun('%A_ScriptDir%\..\ShowAHKScripts.ahk')
return
}

if input == "a sta" ; a sta 
{
close_lngui()
tryrun('%A_ScriptDir%\..\..\AHKstartup.ahk')
return
}

if input == "a xl" ; a xl 
{
close_lngui()
tryrun('LNCHR-CommandsGenerator.xlsm')
return
}

if input == "a code" ; a code 
{
close_lngui()
tryrun("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk " . A_ScriptDir . "\..\")
return
}

if input == "awa" ; awa 
{
close_lngui()
tryrun('StayAwake.ahk')
return
}

if input == "sub" ; sub 
{
close_lngui()
tryrun('"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sublime Text.lnk"')
return
}

if input == "not" ; not 
{
close_lngui()
tryrun('Notepad')
return
}

if input == "pai" ; pai 
{
close_lngui()
tryrun('C:\Windows\system32\mspaint.exe')
return
}

if input == "tea" ; tea 
{
close_lngui()
tryrun('"C:\Users\' A_UserName '\AppData\Local\Microsoft\Teams\current\Teams.exe"')
return
}

if input == "vsc" ; vsc 
{
close_lngui()
tryrun('"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"')
return
}

if input == "vsdir" ; vsdir 
{
close_lngui()
tryrun(StrReplace('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk "REPLACEME"',"REPLACEME", GetActiveExplorerPath()))
return
}

if input == "caps" ; caps 
{
close_lngui()
toggleCapsLock()
return
}

if input == "doc" ; doc 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\OneDrive - VINCI Energies\Documenten"')
return
}

if input == "down" ; down 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\Downloads"')
return
}

if input == "desk" ; desk 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\Desktop"')
return
}

if input == "wor" ; wor 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\OneDrive - VINCI Energies\Documenten\Working-files"')
return
}

if input == "rec" ; rec 
{
close_lngui()
tryrun('::{645FF040-5081-101B-9F08-00AA002F954E}')
return
}

if input == "pc" ; pc 
{
close_lngui()
tryrun('explorer =')
return
}

if input == "cdr" ; cdr 
{
close_lngui()
tryrun('C:\')
return
}

if input == "/" ; / 
{
lngui_enable_query("r/", make_run_ReplaceTexts_func("https://www.reddit.com/r/REPLACEME"))
return
}

if input == "c " ; c  
{
lngui_enable_calc()
return
}

if input == "e " ; e  
{
lngui_enable_query("Everything", make_run_ReplaceTexts_func("C:\Program Files\Everything\Everything.exe -search REPLACEME"))
return
}

if input == "g " ; g  
{
lngui_enable_query("Google", make_run_ReplaceTexts_func("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l="))
return
}

if input == "m " ; m  
{
lngui_enable_query("Multi Search", make_run_ReplaceTexts_func("https://www.google.com/search?&q=REPLACEME","https://duckduckgo.com/?q=REPLACEME"))
return
}

if input == "o " ; o  
{
lngui_enable_query("Outlook", OutlookSearch)
return
}

if input == "r " ; r  
{
lngui_enable_query("Run", make_run_ReplaceTexts_func("REPLACEME"))
return
}

if input == "rk " ; rk  
{
lngui_enable_query("Run (keep open)", make_run_ReplaceTexts_func("cmd /k 'REPLACEME'"))
return
}

if input == "s " ; s  
{
lngui_enable_query("Spotify", make_run_ReplaceTexts_func("https://open.spotify.com/search/REPLACEME"))
return
}

if input == "y " ; y  
{
lngui_enable_query("YouTube", make_run_ReplaceTexts_func("https://www.youtube.com/results?search_query=REPLACEME"))
return
}

if input == "cal" ; cal 
{
close_lngui()
tryrun('https://www.google.com/calendar')
return
}

if input == "dri" ; dri 
{
close_lngui()
tryrun('www.drive.google.com/')
return
}

if input == "git" ; git 
{
close_lngui()
tryrun('https://github.com/')
return
}

if input == "gma" ; gma 
{
close_lngui()
tryrun('https://mail.google.com/')
return
}

if input == "kee" ; kee 
{
close_lngui()
tryrun('https://keep.google.com/')
return
}

if input == "map" ; map 
{
close_lngui()
tryrun('https://www.google.com/maps/')
return
}

if input == "red" ; red 
{
close_lngui()
tryrun('www.reddit.com')
return
}

if input == "reg" ; reg 
{
close_lngui()
tryrun('https://regex101.com/')
return
}

if input == "wea" ; wea 
{
close_lngui()
tryrun('https://weawow.com/')
return
}

if input == "wha" ; wha 
{
close_lngui()
tryrun('https://web.whatsapp.com')
return
}

if input == "sou" ; sou 
{
close_lngui()
tryrun('SoundCardCheck.ahk')
return
}

if input == "c?" ; c? 
{
close_lngui()
tryrun('TODO')
return
}

if input == "col" ; col 
{
close_lngui()
SendInput '#+c'
return
}

if input == "cont" ; cont 
{
close_lngui()
tryrun('control')
return
}

if input == "emo" ; emo 
{
close_lngui()
SendInput '#.'
return
}

if input == "E" ; E 
{
close_lngui()
tryrun('""C:\Windows\system32\rundll32.exe" sysdm.cpl`,EditEnvironmentVariables "')
return
}

if input == "ext" ; ext 
{
close_lngui()
SendInput '#+t'
return
}

if input == "k?" ; k? 
{
close_lngui()
tryrun('TODO')
return
}

if input == "mag" ; mag 
{
close_lngui()
tryrun("C:\Users\" A_Username "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility\Magnify.lnk")
return
}

if input == "mou" ; mou 
{
close_lngui()
SendLevel(0)
Send "^!#m"
SendLevel(1)
return
}

if input == "mut" ; mut 
{
close_lngui()
SendInput '#+n'
return
}

if input == "resx" ; resx 
{
close_lngui()
run 'taskkill /f /im explorer.exe'
run 'explorer.exe'
return
}

if input == "rul" ; rul 
{
close_lngui()
SendInput '#+m'
return
}

if input == "sni" ; sni 
{
close_lngui()
SendInput '#+s'
return
}

if input == "tm" ; tm 
{
close_lngui()
tryrun('taskmgr')
return
}

if input == "top" ; top 
{
close_lngui()
SendInput '#^t'
return
}

if input == "xmag" ; xmag 
{
close_lngui()
tryrun('TODO')
return
}

if input == "zon" ; zon 
{
close_lngui()
SendInput '#+``'
return
}

if input == "mem" ; mem 
{
close_lngui()
tryrun('"LNCHR-Memory.ini"')
return
}

if ((input == "ep wor") and (UsingAnyWorkcomputer)) ; ep wor 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Default"')
return
}

if ((input == "ep per") and (UsingAnyWorkcomputer)) ; ep per 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 1"')
return
}

if ((input == "ep nlo") and (UsingAnyWorkcomputer)) ; ep nlo 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 11"')
return
}

if ((input == "ep bpd") and (UsingAnyWorkcomputer)) ; ep bpd 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 12"')
return
}

if ((input == "ep dak") and (UsingAnyWorkcomputer)) ; ep dak 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 13"')
return
}

if ((input == "ep fle") and (UsingAnyWorkcomputer)) ; ep fle 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 14"')
return
}

if ((input == "ep zab") and (UsingAnyWorkcomputer)) ; ep zab 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 15"')
return
}

if ((input == "ep ind") and (UsingAnyWorkcomputer)) ; ep ind 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 16"')
return
}

if ((input == "ep ith") and (UsingAnyWorkcomputer)) ; ep ith 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 17"')
return
}

if ((input == "ep bua") and (UsingAnyWorkcomputer)) ; ep bua 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 18"')
return
}

if ((input == "ep eik") and (UsingAnyWorkcomputer)) ; ep eik 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 2"')
return
}

if ((input == "ep vio") and (UsingAnyWorkcomputer)) ; ep vio 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 20"')
return
}

if ((input == "ep fou") and (UsingAnyWorkcomputer)) ; ep fou 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 21"')
return
}

if ((input == "ep ven") and (UsingAnyWorkcomputer)) ; ep ven 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 22"')
return
}

if ((input == "ep syn") and (UsingAnyWorkcomputer)) ; ep syn 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 23"')
return
}

if ((input == "ep axi") and (UsingAnyWorkcomputer)) ; ep axi 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 24"')
return
}

if ((input == "ep med") and (UsingAnyWorkcomputer)) ; ep med 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 3"')
return
}

if ((input == "ep sup") and (UsingAnyWorkcomputer)) ; ep sup 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 4"')
return
}

if ((input == "ep eme") and (UsingAnyWorkcomputer)) ; ep eme 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 5"')
return
}

if ((input == "ep bur") and (UsingAnyWorkcomputer)) ; ep bur 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 6"')
return
}

if ((input == "ep odf") and (UsingAnyWorkcomputer)) ; ep odf 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 7"')
return
}

if ((input == "ep kiw") and (UsingAnyWorkcomputer)) ; ep kiw 
{
close_lngui()
tryrun('msedge.exe --profile-directory="Profile 8"')
return
}

}