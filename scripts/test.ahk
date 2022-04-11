#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 连发
SetKeyDelay, 50
$x::
loop
{
  Send, {x down}{x up}
  sleep, 5
}
Until Not GetKeyState("x", "P")
return