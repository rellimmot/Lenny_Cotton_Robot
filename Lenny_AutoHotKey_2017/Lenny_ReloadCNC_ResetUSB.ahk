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

SoundPlay *-1
IfWinExist, ahk_pid %AHK_CNC%
{
WinClose, ahk_pid %AHK_CNC%,,2
WinWaitClose, ahk_pid %AHK_CNC%,,2
}
IfWinExist, LennyTest
{
WinClose, LennyTest,,2
WinWaitClose, LennyTest,,2
}
SoundPlay *-1
Run "C:\PlanetCNCLenny\devcondisableCNC",,,AHK_DISABLECNC
Sleep,2000
Run "C:\PlanetCNCLenny\devconenableCNC",,,AHK_ENABLECNC
SoundPlay *-1

SoundPlay *-1
Sleep,3000
SoundPlay *-1
Run "C:\PlanetCNCLenny\PlanetCNC64_OPENGCODE",,Max,AHK_CNC
SoundPlay *-1

Return