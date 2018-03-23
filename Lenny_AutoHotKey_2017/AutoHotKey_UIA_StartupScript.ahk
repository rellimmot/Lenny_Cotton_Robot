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
Sleep,100
Run "C:\PlanetCNCLenny\colordataShortcut"
Sleep,8000
Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "C:\PlanetCNCLenny\Main_Startup_Script.ahk"
Sleep,60000
Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "C:\PlanetCNCLenny\CNC_Detect_Reset_USBCrash.ahk"
Run "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "C:\PlanetCNCLenny\Lenny_DetectCNCErrorsAutoHome.ahk"
Run "C:\Users\Lenny\Downloads\usblogview\USBLogView.exe"
Return