#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 更新脚本(ctrl+alt+r)
^!r::Reload
return

~F11::
getId(1, 2, 3)
return

; 截取图片，匹配图片
Numpad0::
{
  ; CoordMode, ToolTip, Screen
  ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, ..\assets\google.png
  if (FoundX) {
    Click %FoundX% %FoundY% 0
    Click 2
    return
  } else {
    MsgBox The icon was found at %FoundX%x%FoundY%.
    return
  }
}

getId(pid1 = 0, pid2 = 0, pid3 = 0) {

}