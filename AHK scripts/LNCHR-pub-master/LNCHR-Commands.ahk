lngui_run_commands(input){if ((input == "cal") and (UsingAnyWorkcomputer)) ; cal {close_lngui()tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select outlook:calendar')return}if ((input == "com") and (UsingAnyWorkcomputer)) ; com {close_lngui()outlookApp := GetOutlookCom()
MailItem := outlookApp.CreateItem(0)
MailItem.Displayreturn}if ((input == "inb") and (UsingAnyWorkcomputer)) ; inb {close_lngui()tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select outlook:inbox')return}if ((input == "sin") and (UsingAnyWorkcomputer)) ; sin {close_lngui()tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select "outlook:\\support.ps.nl@axians.com\Postvak IN"')return}if ((input == "sca") and (UsingAnyWorkcomputer)) ; sca {close_lngui()tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select "outlook:\\AXIANS-BAZ NL Managed Services\Calendar"')return}if ((input == "tdi") and (UsingAnyWorkcomputer)) ; tdi {close_lngui()nr := StrReplace(A_Clipboard, " ", "+")
if(InStr(nr, "AM")){
	tryrun(StrReplace("https://axians.topdesk.net/tas/secure/incident?action=lookup&lookup=naam&lookupValue=REPLACEME","REPLACEME",nr))
} 
if(InStr(nr, "AW")){
	tryrun(StrReplace("https://axians.topdesk.net/tas/secure/newchange?action=lookup&lookup=number&lookupValue=REPLACEME","REPLACEME",nr))
}return}if ((input == "tdc") and (UsingAnyWorkcomputer)) ; tdc {close_lngui()nr := StrReplace(A_Clipboard, " ", "+")
if(InStr(nr, "AM")){
	A_Clipboard :=  StrReplace("[REPLACEME](https://axians.topdesk.net/tas/secure/incident?action=lookup&lookup=naam&lookupValue=REPLACEME)","REPLACEME",nr)
} 
if(InStr(nr, "AW")){
	A_Clipboard := StrReplace("https://axians.topdesk.net/tas/secure/newchange?action=lookup&lookup=number&lookupValue=REPLACEME","REPLACEME",nr)
}return}if ((input == "tdp") and (UsingAnyWorkcomputer)) ; tdp {close_lngui()tryrun('msedge.exe --profile-directory="Default" https://axians.topdesk.net/')return}if ((input == "whi") and (UsingAnyWorkcomputer)) ; whi {close_lngui()tryrun('msedge.exe --profile-directory="Default" https://vincienergies.sharepoint.com/:x:/r/sites/AxiansPSManagedServicesTeam/Documents%20partages/General/Ochtendcontrole/Whiteboard%202.0.xlsx?d=w8f40518b1395443bbc43f59c0c153edc&csf=1&web=1&e=2lxaND')return}if ((input == "snow") and (UsingAnyWorkcomputer)) ; snow {close_lngui()tryrun('msedge.exe --profile-directory="Default" https://axians.service-now.com')return}if ((input == "zab") and (UsingAnyWorkcomputer)) ; zab {close_lngui()tryrun('msedge.exe --profile-directory="Default" https://monitoring.bs.axians.nl/zabbix/zabbix.php?action=dashboard.view')return}if ((input == "ti") and (UsingAnyWorkcomputer)) ; ti {close_lngui()Send("^{F8}")return}if input == "?" ; ? {tryrun("HELP-Commands.txt")
Sleep(100)
close_lngui()
build_lngui()return}if input == "a dir" ; a dir {close_lngui()tryrun('%A_ScriptDir%\..\')return}if input == "a rep" ; a rep {close_lngui()tryrun('%A_ScriptDir%\..\..\..\')return}if input == "a kill" ; a kill {close_lngui()tryrun('KillAHK.ahk')return}if input == "a rel" ; a rel {close_lngui()Reloadreturn}if input == "a show" ; a show {close_lngui()tryrun('%A_ScriptDir%\..\ShowAHKScripts.ahk')return}if input == "a sta" ; a sta {close_lngui()tryrun('%A_ScriptDir%\..\..\AHKstartup.ahk')return}if input == "a xl" ; a xl {close_lngui()tryrun('LNCHR-CommandsGenerator.xlsm')return}if input == "awa" ; awa {close_lngui()tryrun('StayAwake.ahk')return}if input == "sub" ; sub {close_lngui()tryrun('"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sublime Text.lnk"')return}if input == "not" ; not {close_lngui()tryrun('Notepad')return}if input == "pai" ; pai {close_lngui()tryrun('C:\Windows\system32\mspaint.exe')return}if input == "tea" ; tea {close_lngui()tryrun('ms-team.exe')return}if input == "vsc" ; vsc {close_lngui()tryrun('"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"')return}if input == "vsd" ; vsd {close_lngui()tryrun(StrReplace('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk "REPLACEME"',"REPLACEME", GetActiveExplorerPath()))return}if input == "vst" ; vst {close_lngui()tryrun(StrReplace('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk "REPLACEME"',"REPLACEME", "C:\Users\mendel.niehof\OneDrive - VINCI Energies\Documenten\Temp"))return}if input == "caps" ; caps {close_lngui()toggleCapsLock()return}if ((input == "doc") and (UsingAnyWorkcomputer)) ; doc {close_lngui()tryrun('"C:\Users\' A_Username '\OneDrive - VINCI Energies\Documenten"')return}if input == "doc" ; doc {close_lngui()tryrun('"C:\Users\' A_Username '\Documenten"')return}if input == "down" ; down {close_lngui()tryrun('"C:\Users\' A_Username '\Downloads"')return}if input == "desk" ; desk {close_lngui()tryrun('"C:\Users\' A_Username '\Desktop"')return}if ((input == "wor") and (UsingAnyWorkcomputer)) ; wor {close_lngui()tryrun('"C:\Users\' A_Username '\OneDrive - VINCI Energies\Documenten\Working-files"')return}if ((input == "och") and (UsingAnyWorkcomputer)) ; och {close_lngui()tryrun('"C:\Users\' A_Username '\VINCI Energies\GO-Axians PS Managed Analytics Team - General\Ochtendcontrole"')return}if ((input == "kla") and (UsingAnyWorkcomputer)) ; kla {close_lngui()tryrun('"C:\Users\' A_Username '\VINCI Energies\GO-Axians PS Managed Analytics Team - Klanten"')return}if input == "rec" ; rec {close_lngui()tryrun('::{645FF040-5081-101B-9F08-00AA002F954E}')return}if input == "pc" ; pc {close_lngui()tryrun('explorer =')return}if input == "cdr" ; cdr {close_lngui()tryrun('C:\')return}if input == "c " ; c  {lngui_enable_calc()return}if input == "e " ; e  {lngui_enable_query("Everything", make_run_ReplaceTexts_func("C:\Program Files\Everything\Everything.exe -search REPLACEME"))return}if input == "g " ; g  {lngui_enable_query("Google", make_run_ReplaceTexts_func("msedge.exe --profile-directory=`"Default`" https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l="))return}if input == "m " ; m  {lngui_enable_query("Multi Search", make_run_ReplaceTexts_func("https://www.google.com/search?&q=REPLACEME","https://duckduckgo.com/?q=REPLACEME"))return}if input == "o " ; o  {lngui_enable_query("Outlook", OutlookSearch)return}if input == "r " ; r  {lngui_enable_query("reddit search", make_run_ReplaceTexts_func("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME+site`%3Areddit.com&btnG=Search&oq=&gs_l="))return}if input == "rk " ; rk  {lngui_enable_query("Run (keep open)", make_run_ReplaceTexts_func("cmd /k 'REPLACEME'"))return}if input == "sp " ; sp  {lngui_enable_query("Spotify", make_run_ReplaceTexts_func("https://open.spotify.com/search/REPLACEME"))return}if input == "y " ; y  {lngui_enable_query("YouTube", make_run_ReplaceTexts_func("https://www.youtube.com/results?search_query=REPLACEME"))return}if input == "p " ; p  {lngui_enable_query("Perplexity", make_run_ReplaceTexts_func("https://www.perplexity.ai/search?q=REPLACEME"))return}if input == "cal" ; cal {close_lngui()tryrun('https://www.google.com/calendar')return}if input == "gcal" ; gcal {close_lngui()tryrun('https://www.google.com/calendar')return}if input == "dri" ; dri {close_lngui()tryrun('www.drive.google.com/')return}if input == "git" ; git {close_lngui()tryrun('https://github.com/')return}if input == "gma" ; gma {close_lngui()tryrun('https://mail.google.com/')return}if input == "kee" ; kee {close_lngui()tryrun('https://keep.google.com/')return}if input == "map" ; map {close_lngui()tryrun('https://www.google.com/maps/')return}if input == "red" ; red {close_lngui()tryrun('www.reddit.com')return}if input == "reg" ; reg {close_lngui()tryrun('https://regex101.com/')return}if input == "wea" ; wea {close_lngui()tryrun('https://weawow.com/')return}if input == "wha" ; wha {close_lngui()tryrun('https://web.whatsapp.com')return}if input == "dpl" ; dpl {close_lngui()tryrun('https://www.deepl.com/en/translator')return}if input == "gpt" ; gpt {close_lngui()tryrun('https://chat.openai.com/')return}if input == "dev" ; dev {close_lngui()tryrun('https://aex.dev.azure.com/')return}if input == "azu" ; azu {close_lngui()tryrun('https://portal.azure.com/')return}if input == "fab" ; fab {close_lngui()tryrun('https://app.powerbi.com/')return}if input == "ade" ; ade {close_lngui()tryrun('https://dataexplorer.azure.com/')return}if input == "adf" ; adf {close_lngui()tryrun('https://adf.azure.com/')return}if ((input == "todo") and (UsingAnyWorkcomputer)) ; todo {close_lngui()tryrun('obsidian://advanced-uri?vault=Tech%20vault&filepath=92%2520Meta%252FTodo%2520board.md&openmode=silent&viewmode=preview')return}if ((input == "task") and (UsingAnyWorkcomputer)) ; task {close_lngui()tryrun('obsidian://advanced-uri?vault=Tech%20vault&commandid=quickadd%253Achoice%253Acc65d777-297e-45b5-9cc9-32e0a81eaed1')return}if ((input == "obs") and (UsingAnyWorkcomputer)) ; obs {close_lngui()tryrun('obsidian://advanced-uri?vault=Tech%20vault&commandid=omnisearch%253Ashow-modal')return}if ((input == "t ") and (UsingAnyWorkcomputer)) ; t  {lngui_enable_query("new dynamic obsidian task", make_run_ReplaceTexts_func("obsidian://advanced-uri?eval=this.app.plugins.plugins.quickadd.api.executeChoice('New task Q1 (URI)',{param1:'REPLACEME'})"))return}if input == "sou" ; sou {close_lngui()tryrun('SoundCardCheck.ahk')return}if input == "c?" ; c? {close_lngui()tryrun('TODO')return}if input == "col" ; col {close_lngui()SendInput '#+c'return}if input == "cont" ; cont {close_lngui()tryrun('control')return}if input == "emo" ; emo {close_lngui()SendInput '#.'return}if input == "E" ; E {close_lngui()tryrun('""C:\Windows\system32\rundll32.exe" sysdm.cpl`,EditEnvironmentVariables "')return}if input == "ext" ; ext {close_lngui()SendInput '#+t'return}if input == "k?" ; k? {close_lngui()tryrun('TODO')return}if input == "mag" ; mag {close_lngui()tryrun("C:\Users\" A_Username "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility\Magnify.lnk")return}if input == "mou" ; mou {close_lngui()SendLevel(0)
Send "^!#m"
SendLevel(1)return}if input == "mut" ; mut {close_lngui()SendInput '#+n'return}if input == "resx" ; resx {close_lngui()run 'taskkill /f /im explorer.exe'
run 'explorer.exe'return}if input == "rul" ; rul {close_lngui()SendInput '#+m'return}if input == "sni" ; sni {close_lngui()SendInput '#+s'return}if input == "tm" ; tm {close_lngui()tryrun('taskmgr')return}if input == "top" ; top {close_lngui()SendInput '#^t'return}if input == "zon" ; zon {close_lngui()SendInput '#+``'return}if input == "mem" ; mem {close_lngui()tryrun('"LNCHR-Memory.ini"')return}if input == "ver" ; ver {close_lngui()Send("^+`,")return}if input == "rnw" ; rnw {close_lngui()Send("!f")
Sleep(20)
Send("l")
Sleep(20)  
Send("w")return}if input == "rc" ; rc {close_lngui()Send("+{F10}")return}if input == "cat" ; cat {close_lngui()Send("+{F10}")
Sleep(20)
Send("t")return}if input == "mv" ; mv {close_lngui()Send("+{F10}")
Sleep(20)
Send("m")
Sleep(20)
Send("o")return}if input == "b1" ; b1 {close_lngui()SaveToBuffer(1, A_Clipboard)return}if input == "b2" ; b2 {close_lngui()SaveToBuffer(2, A_Clipboard)return}if input == "b3" ; b3 {close_lngui()SaveToBuffer(3, A_Clipboard)return}if input == "b4" ; b4 {close_lngui()SaveToBuffer(4, A_Clipboard)return}if input == "b5" ; b5 {close_lngui()SaveToBuffer(5, A_Clipboard)return}if input == "b6" ; b6 {close_lngui()SaveToBuffer(6, A_Clipboard)return}if input == "b7" ; b7 {close_lngui()SaveToBuffer(7, A_Clipboard)return}if input == "b8" ; b8 {close_lngui()SaveToBuffer(8, A_Clipboard)return}if input == "b9" ; b9 {close_lngui()SaveToBuffer(9, A_Clipboard)return}if input == "b0" ; b0 {close_lngui()SaveToBuffer(0, A_Clipboard)return}if input == "/1" ; /1 {close_lngui()TypeBuffer(1)return}if input == "/2" ; /2 {close_lngui()TypeBuffer(2)return}if input == "/3" ; /3 {close_lngui()TypeBuffer(3)return}if input == "/4" ; /4 {close_lngui()TypeBuffer(4)return}if input == "/5" ; /5 {close_lngui()TypeBuffer(5)return}if input == "/6" ; /6 {close_lngui()TypeBuffer(6)return}if input == "/7" ; /7 {close_lngui()TypeBuffer(7)return}if input == "/8" ; /8 {close_lngui()TypeBuffer(8)return}if input == "/9" ; /9 {close_lngui()TypeBuffer(9)return}if input == "/0" ; /0 {close_lngui()TypeBuffer(0)return}if input == "bu1" ; bu1 {close_lngui()SaveToBuffer(11, A_Clipboard)return}if input == "bp1" ; bp1 {close_lngui()SaveToBuffer(12, A_Clipboard)return}if input == "/pw" ; /pw {close_lngui()SendUsernameAndPassword(10)return}if input == "bu2" ; bu2 {close_lngui()SaveToBuffer(21, A_Clipboard)return}if input == "bp2" ; bp2 {close_lngui()SaveToBuffer(22, A_Clipboard)return}if input == "/pw2" ; /pw2 {close_lngui()SendUsernameAndPassword(20)return}if input == "bu3" ; bu3 {close_lngui()SaveToBuffer(31, A_Clipboard)return}if input == "bp3" ; bp3 {close_lngui()SaveToBuffer(32, A_Clipboard)return}if input == "/pw3" ; /pw3 {close_lngui()SendUsernameAndPassword(30)return}if input == "vbu" ; vbu {close_lngui()ViewBuffers()return}if input == "/dn" ; /dn {close_lngui()Send(A_DD '-' A_MM '-' A_YYYY)return}if input == "/ds" ; /ds {close_lngui()Send(A_YYYY . A_MM . A_DD)return}if input == "/da" ; /da {close_lngui()Send(A_YYYY '-' A_MM '-' A_DD)return}if input == "/ms" ; /ms {close_lngui()Send("Met vriendelijke groet/kind regards,`rMendel Niehof")return}if input == "/cl" ; /cl {close_lngui()Send(A_Clipboard)return}if input == "/li" ; /li {close_lngui()Send("LIKE '%%'{Left 2}")return}if input == "/sa" ; /sa {close_lngui()Send("SELECT * FROM ")return}if input == "/or" ; /or {close_lngui()Send("ORDER BY  DESC{Left 5}")return}if input == "/tu" ; /tu {close_lngui()Send("👍")return}if input == "/la" ; /la {close_lngui()Send("😂")return}if input == "/sw" ; /sw {close_lngui()Send("😅")return}if input == "/idk" ; /idk {close_lngui()Send("¯\_(ツ)_/¯")return}if input == "/pho" ; /pho {close_lngui()Send("0629620732")return}if input == "/che" ; /che {close_lngui()Send("✅")return}if ((input == "ep wor") and (UsingAnyWorkcomputer)) ; ep wor {close_lngui()tryrun('msedge.exe --profile-directory="Default" "portal.azure.com"')return}if ((input == "ep per") and (UsingAnyWorkcomputer)) ; ep per {close_lngui()tryrun('msedge.exe --profile-directory="Profile 1" "portal.azure.com"')return}if ((input == "ep nlo") and (UsingAnyWorkcomputer)) ; ep nlo {close_lngui()tryrun('msedge.exe --profile-directory="Profile 11" "portal.azure.com"')return}if ((input == "ep bpd") and (UsingAnyWorkcomputer)) ; ep bpd {close_lngui()tryrun('msedge.exe --profile-directory="Profile 12" "portal.azure.com"')return}if ((input == "ep dak") and (UsingAnyWorkcomputer)) ; ep dak {close_lngui()tryrun('msedge.exe --profile-directory="Profile 13" "portal.azure.com"')return}if ((input == "ep fle") and (UsingAnyWorkcomputer)) ; ep fle {close_lngui()tryrun('msedge.exe --profile-directory="Profile 14" "portal.azure.com"')return}if ((input == "ep zab") and (UsingAnyWorkcomputer)) ; ep zab {close_lngui()tryrun('msedge.exe --profile-directory="Profile 15" "portal.azure.com"')return}if ((input == "ep ind") and (UsingAnyWorkcomputer)) ; ep ind {close_lngui()tryrun('msedge.exe --profile-directory="Profile 16" "portal.azure.com"')return}if ((input == "ep ith") and (UsingAnyWorkcomputer)) ; ep ith {close_lngui()tryrun('msedge.exe --profile-directory="Profile 17" "portal.azure.com"')return}if ((input == "ep bua") and (UsingAnyWorkcomputer)) ; ep bua {close_lngui()tryrun('msedge.exe --profile-directory="Profile 18" "portal.azure.com"')return}if ((input == "ep eik") and (UsingAnyWorkcomputer)) ; ep eik {close_lngui()tryrun('msedge.exe --profile-directory="Profile 2" "portal.azure.com"')return}if ((input == "ep vio") and (UsingAnyWorkcomputer)) ; ep vio {close_lngui()tryrun('msedge.exe --profile-directory="Profile 20" "portal.azure.com"')return}if ((input == "ep fou") and (UsingAnyWorkcomputer)) ; ep fou {close_lngui()tryrun('msedge.exe --profile-directory="Profile 21" "portal.azure.com"')return}if ((input == "ep ven") and (UsingAnyWorkcomputer)) ; ep ven {close_lngui()tryrun('msedge.exe --profile-directory="Profile 22" "portal.azure.com"')return}if ((input == "ep syn") and (UsingAnyWorkcomputer)) ; ep syn {close_lngui()tryrun('msedge.exe --profile-directory="Profile 23" "portal.azure.com"')return}if ((input == "ep axi") and (UsingAnyWorkcomputer)) ; ep axi {close_lngui()tryrun('msedge.exe --profile-directory="Profile 24" "portal.azure.com"')return}if ((input == "ep kuy") and (UsingAnyWorkcomputer)) ; ep kuy {close_lngui()tryrun('msedge.exe --profile-directory="Profile 26" "portal.azure.com"')return}if ((input == "ep sch") and (UsingAnyWorkcomputer)) ; ep sch {close_lngui()tryrun('msedge.exe --profile-directory="Profile 27" "portal.azure.com"')return}if ((input == "ep den") and (UsingAnyWorkcomputer)) ; ep den {close_lngui()tryrun('msedge.exe --profile-directory="Profile 28" "portal.azure.com"')return}if ((input == "ep cs") and (UsingAnyWorkcomputer)) ; ep cs {close_lngui()tryrun('msedge.exe --profile-directory="Profile 29" "portal.azure.com"')return}if ((input == "ep med") and (UsingAnyWorkcomputer)) ; ep med {close_lngui()tryrun('msedge.exe --profile-directory="Profile 3" "portal.azure.com"')return}if ((input == "ep sup") and (UsingAnyWorkcomputer)) ; ep sup {close_lngui()tryrun('msedge.exe --profile-directory="Profile 4" "portal.azure.com"')return}if ((input == "ep eme") and (UsingAnyWorkcomputer)) ; ep eme {close_lngui()tryrun('msedge.exe --profile-directory="Profile 5" "portal.azure.com"')return}if ((input == "ep bur") and (UsingAnyWorkcomputer)) ; ep bur {close_lngui()tryrun('msedge.exe --profile-directory="Profile 6" "portal.azure.com"')return}if ((input == "ep odf") and (UsingAnyWorkcomputer)) ; ep odf {close_lngui()tryrun('msedge.exe --profile-directory="Profile 7" "portal.azure.com"')return}if ((input == "ep kiw") and (UsingAnyWorkcomputer)) ; ep kiw {close_lngui()tryrun('msedge.exe --profile-directory="Profile 8" "portal.azure.com"')return}}