Process, Priority,, High
DetectHiddenWindows, ON
DetectHiddenText, ON
SetTitleMatchMode, 1
SetTitleMatchMode, slow
SetWinDelay, 200
SetControlDelay,30
SetKeyDelay,50
#WinActivateForce
#NoEnv

Sleep,20000

SoundPlay *-1
;IfWinExist,ahk_exe EXCEL.EXE,colordata.xls  -  Compatibility Mode
;{
;WinActivate
;WinMinimize
;}
;IfWinNotExist,ahk_exe EXCEL.EXE,colordata.xls  -  Compatibility Mode
;{
;Run, "C:\PlanetCNCLenny\ColorData\colordata.xls",,Min,AHK_COLORXL
;}
;Sleep,10000

SoundPlay *-1
Run "C:\Minolta\Accessory Software for CM-2600d\Drv2600.exe",,,AHK_CLR
Sleep,800
WinWait ahk_pid %AHK_CLR%
Sleep,800
WinActivate, ahk_pid %AHK_CLR%
Send,{Enter}
Sleep,800
ControlFocus,ComboBox1,ahk_pid %AHK_CLR%
Send,{Down}
Sleep,800
Send,{Space}
Sleep,2000
ControlFocus,SysListView321,ahk_pid %AHK_CLR%,FolderView
Sleep,400
Send,{Down}
Sleep,400
Send,{Enter} ;Excel Opens
Sleep,8000
ControlFocus,SysListView321,ahk_pid %AHK_CLR%,Tree1
Sleep,200
Send,{Down}
Sleep,200
ControlClick,Button7,ahk_pid %AHK_CLR%,Add
Sleep,200
ControlFocus,SysListView321,ahk_pid %AHK_CLR%,Tree1
Sleep,200
Send,{Down}
Sleep,800
ControlClick,Button9,ahk_pid %AHK_CLR%,Select
Sleep,800
ControlClick,Button10,ahk_pid %AHK_CLR%,Close
Sleep,800
WinActivate, ahk_pid %AHK_CLR%
Sleep,200
ControlFocus,Button1,ahk_pid %AHK_CLR%,&Measure
Sleep,1500

Run "C:\PlanetCNCLenny\PlanetCNC64_OPENGCODE",,Max,AHK_CNC
WinWait ahk_pid %AHK_CNC%
Sleep,5000

SoundPlay *-1
Run "C:\Program Files (x86)\obs-studio\bin\64bit\obs64.exe - Shortcut",,Max,AHK_OBS
WinWait ahk_pid %AHK_OBS%
WinActivate, ahk_pid %AHK_OBS%
Sleep,100
Send,^o
Sleep,20
WinMinimize, ahk_pid %AHK_OBS%
Sleep,500

SoundPlay *-1
WinActivate, ahk_pid %AHK_CNC%

SoundPlay *-1
SoundPlay *-1
Return