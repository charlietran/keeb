#Requires AutoHotkey v2.0
Persistent	   ; This keeps the script running permanently.
#SingleInstance Force
#Warn              ; Enable warnings to assist with detecting common errors. 
InstallKeybdHook()

SendMode("Input") ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.

SetCapsLockState("AlwaysOff")

GroupAdd("Browsers", "ahk_class MozillaWindowClass")
; GroupAdd, Browsers, ahk_class Chrome_WidgetWin_1
GroupAdd("Browsers", "ahk_exe chrome.exe")
GroupAdd("Browsers", "ahk_exe Discord.exe")
GroupAdd("Fps", "ahk_class UnrealWindow")
GroupAdd("Fps", "ahk_class TankWindowClass")
GroupAdd("Fps", "ahk_class techland_game_class")
GroupAdd("Fps", "ahk_exe HeroesOfTheStorm_x64.exe")
GroupAdd("Fps", "ahk_class Respawn001")
GroupAdd("Fps", "ahk_exe RelicCardinal_ws.exe")
GroupAdd("Fps", "ahk_exe Code.exe")

;;; Prefixes:
;;; ! Alt
;;; ^ Ctrl
;;; + Shift
;;; # Windows

;;; Browser Specific
#HotIf WinActive("ahk_group Browsers", )
  !1::  Send("^1")
  !2::  Send("^2")
  !3::  Send("^3")
  !4::  Send("^4")
  !5::  Send("^5")
  !6::  Send("^6")
  !7::  Send("^7")
  !t::  Send("^t")
  +!t::  Send("+^t")
  !w::  Send("^w")
  !l::  Send("^l")
  !r::  Send("^r")

  ![::  Send("^{PgUp}")
  !]::  Send("^{PgDn}")
  !+[::  Send("^{PgUp}")
  !+]::  Send("^{PgDn}")

  ^[::  Send("^{PgUp}")
  ^]::  Send("^{PgDn}")
  ^+[::  Send("^{PgUp}")
  ^+]::  Send("^{PgDn}")

  !Left::  SendInput("!{Left}")
  !Right::  SendInput("!{Right}")
  !LButton::  SendInput("^{LButton}")
  !\::  Send("^\")
#HotIf

;;; Unity Specific
#HotIf WinActive("ahk_exe Unity.exe", )
  !p::  Send("^p")
  !+p::  Send("^+p")
#HotIf

;;; Valheim
#HotIf WinActive("ahk_exe valheim.exe", )
  +1::  Send(6)
  +2::  Send(7)
  +3::  Send(8)
#HotIf

;;; Valorant
#HotIf WinActive("ahk_exe VALORANT-Win64-Shipping.exe", )
LWin::[
#HotIf

#HotIf WinActive("ahk_exe helldivers2.exe")
XButton2::w
#HotIf

;;; Windows key rebinding
;#IfWinActive ahk_group FPS
;LWin::[
;#IfWinActive

;;; General Maclike Hotkeys, when not in a Fps game
#HotIf !WinActive("ahk_group Fps", )
  !c::  Send("^c")
  !x::  Send("^x")
  !f::  Send("^f")
  !g::  Send("^g")
  !+g::  Send("^+g")
  !v::  Send("^v")
  !z::  Send("^z")
  !+z::  Send("^+z")
  !s::  Send("^s")
  !w::  Send("^w")

  #Left::  SendInput("^{Left}")
  #Right::  SendInput("^{Right}")
  #+Left::  SendInput("^+{Left}")
  #+Right::  SendInput("^+{Right}")

  ;; Cursor Movement
  !Left::  SendInput("{Home}")
  !Right::  SendInput("{End}")
  !+Left::  SendInput("+{Home}")
  !+Right::  SendInput("+{End}")
  !a::  SendInput("^a")
  !Down:: SendInput("^{End}")
  !Up:: SendInput("^{Home}")
  !+Down:: SendInput("^+{End}")
  !+Up:: SendInput("^+{Home}")
  
  ;;; Alt+H To Minimize
  !h::  WinMinimize("a")

  ;; Alt-q to Quit
  !q::  Send("!{F4}")
#HotIf

; Backtick key as escape
`::Escape
+`::+`

*CapsLock::return

;; Capslock Bindings
#HotIf GetKeyState("CapsLock", "P") ; Following hotkeys are enabled when caps is held
w::Up
a::Left
s::Down
d::Right

h::Left
j::Down
k::Up
l::Right

z::Volume_Down
x::Volume_Up
e::Send "{Media_Play_Pause}"
r::Send "{Media_Prev}"
t::Send "{Media_Next}"
c::Send "^{c}"

Space::Delete
Tab::SendInput "^{Tab}"

`::`

;; Function Keys
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
7::F7
8::F8
9::F9
0::F10
-::F11
=::F12 

#HotIf


;; LGTV control
global LGTV_Companion_path := "C:\Program Files\LGTV Companion\LGTV Companion.exe"
global LGTVcli_path := "C:\`"Program Files\LGTV Companion\LGTVcli.exe`""

^F1::
{
	Run LGTV_Companion_path " -request com.webos.service.audio/master/volumeDown",,"Hide"
	return
}

^F2::
{
	Run LGTV_Companion_path " -request com.webos.service.audio/master/volumeUp",,"Hide"
	return
}

PGDN::
{
	Run LGTV_Companion_path " -request com.webos.service.audio/master/volumeDown",,"Hide"
	return
}

PGUP::
{
	Run LGTV_Companion_path " -request com.webos.service.audio/master/volumeUp",,"Hide"
	return
}


^+F3::
{
	Run LGTV_Companion_path " -setHdmi 3",,"Hide"
	return
}

^+F4::
{
	Run LGTV_Companion_path " -setHdmi 4",,"Hide"
	return
}
