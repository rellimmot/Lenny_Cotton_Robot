#SingleInstance force
DetectHiddenWindows, ON
SetTitleMatchMode, 1
SetTitleMatchMode, slow

loop{
If a:=WinExist("Error"){
tooltip,ahk_id %a%
WinActivate ,ahk_pid %AHK_OBS%
WinActivate ,Error
Sleep,500
Send,{Enter}
Sleep,1000

RunWait "C:\Program Files (x86)\PlanetCNC\PlanetCNC64.exe" close
Sleep,2000
RunWait "C:\Program Files (x86)\PlanetCNC\PlanetCNC64.exe" mdi "/4322"
Sleep,2000
RunWait "C:\Program Files (x86)\PlanetCNC\PlanetCNC64.exe" mdi "/4320"
Sleep,2000
RunWait "C:\Program Files (x86)\PlanetCNC\PlanetCNC64.exe" mdi "/4322"
Sleep,10000
RunWait "C:\Program Files (x86)\PlanetCNC\PlanetCNC64.exe" open "C:\PlanetCNCLenny\LENNYGCODE_MAIN.txt"
}
else
Sleep,300
}