Process, Priority,, High
DetectHiddenWindows, ON
DetectHiddenText, ON
SetTitleMatchMode, 1
SetTitleMatchMode, slow
#SingleInstance force
#NoEnv

loop{
Run, C:\PlanetCNCLenny\PlanetCNC Api\PipeExample\___Output\PipeExample.exe,,Hide,AHK_CNCAPICALL
WinWait, ahk_pid %AHK_CNCAPICALL%
WinActivate, ahk_pid %AHK_CNCAPICALL%
Sleep,10
Send,posz{Enter}
Sleep,100
clipsaved:= ClipboardAll
	Clipboard =    
	Send, ^a
	Send, ^c 
	Sleep 150
	WinClose, ahk_pid %AHK_CNCAPICALL%
		RegExMatch(Clipboard, "#", found)
		if (found = "#")
			{
			WinClose
			Clipboard := clipsaved
			Run, C:\PlanetCNCLenny\Lenny_ReloadCNC_ResetUSB.ahk,,Hide,AHK_CNCRESETCALL
			Sleep,10000
			FileAppend, Crash at %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%`n, C:\PlanetCNCLenny\CNCcrashlog.txt
			}
		else
			{
			Clipboard := clipsaved
			IfWinNotExist, LennyTest
				{
				Run "C:\PlanetCNCLenny\PlanetCNC64_OPENGCODE",,Max,AHK_CNC
				}
			Sleep,60000
			}
}