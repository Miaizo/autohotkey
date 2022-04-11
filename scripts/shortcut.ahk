#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 更新脚本(ctrl+alt+r)
^!r::Reload
return

; 调节音量(shift + (+/-))
+NumpadAdd:: Send {Volume_Up}
+NumpadSub:: Send {Volume_Down}
break::Send {Volume_Mute}
return

; 百度关键字搜索
^Numpad1::
{
Send, ^c
Sleep 50
Run, https://www.baidu.com/s?wd=%clipboard%
Return
}
; 谷歌关键字搜索
^Numpad2::
{
Send, ^c
Sleep 50
Run, https://www.google.com/search?q=%clipboard%
Return
}

; 打开百度(ctrl + alt + a)
^!a::
{
Send, ^c
Sleep 50
Run, https://www.baidu.com/
Return
}

; 打开b站(ctrl + alt + b)
^!b::
{
Run, https://www.bilibili.com/
Return
}

; 运行网易云音乐(ctrl + alt + m)
^!m::
{
Run, D:\CloudMusic\cloudmusic.exe
Return
}

; 运行翻墙工具(//r + (tab/Enter))
^!F1::
{
  Run, d:\Downloads\SSR-win.4.9.2\ShadowsocksR-win-4.9.2\ShadowsocksR-dotnet4.0.exe
  return
}

; 固定窗口处于最上方(ctrl + t)
^t::Winset, AlwaysOnTop, , A
Return

; 取色工具(Control+Alt+Z)
^!z::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%, rgb
StringLower , colorLower , color
Clipboard = %colorLower%
ToolTip , 色值: %colorLower%`n已复制到剪贴板
Sleep , 2000
; 2秒后关闭气泡提示
ToolTip
return