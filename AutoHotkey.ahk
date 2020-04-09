#NoEnv             ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent	   ; This keeps the script running permanently.
#SingleInstance	   ; Only allows one instance of the script to run.
#Warn              ; Enable warnings to assist with detecting common errors. 
#InstallKeybdHook

SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapslockState, AlwaysOff

GroupAdd, Browsers, ahk_class MozillaWindowClass
GroupAdd, Browsers, ahk_class Chrome_WidgetWin_1
GroupAdd, Fps, ahk_class UnrealWindow
GroupAdd, Fps, ahk_class TankWindowClass
GroupAdd, Fps, ahk_class techland_game_class
GroupAdd, Fps, ahk_exe HeroesOfTheStorm_x64.exe
GroupAdd, Fps, ahk_class Respawn001

;;; Prefixes:
;;; ! Alt
;;; ^ Ctrl
;;; + Shift
;;; # Windows

;;; Browser Specific
#IfWinActive ahk_group Browsers
  !1::Send ^1
  !2::Send ^2
  !3::Send ^3
  !4::Send ^4
  !5::Send ^5
  !6::Send ^6
  !7::Send ^7
  !t::Send ^t
  +!t::Send +^t
  !w::Send ^w
  !l::Send ^l
  !r::Send ^r

  ![::Send ^{PgUp}
  !]::Send ^{PgDn}
  !+[::Send ^{PgUp}
  !+]::Send ^{PgDn}

  ^[::Send ^{PgUp}
  ^]::Send ^{PgDn}
  ^+[::Send ^{PgUp}
  ^+]::Send ^{PgDn}

  !Left::SendInput !{Left}
  !Right::SendInput !{Right}
  !LButton::SendInput ^{LButton}
  !\::Send ^\
#IfWinActive

;;; Unity Specific
#IfWinActive ahk_exe Unity.exe
  !p::Send ^p
  !+p::Send ^+p
#IfWinActive

;;; Windows key rebinding
;#IfWinActive ahk_group FPS
;LWin::[
;#IfWinActive

;;; General Maclike Hotkeys, when not in a Fps game
#IfWinNotActive ahk_group Fps
  !c::Send ^c
  !x::Send ^x
  !f::Send ^f
  !g::Send ^g
  !+g::Send ^+g
  !v::Send ^v
  !z::Send ^z
  !+z::Send ^+z
  !s::Send ^s
  !w::Send ^w
  #Left::SendInput ^{Left}
  #Right::SendInput ^{Right}
  #+Left::SendInput ^+{Left}
  #+Right::SendInput ^+{Right}

  ;; Cursor Movement
  !Left::SendInput {Home}
  !Right::SendInput {End}
  !+Left::SendInput +{Home}
  !+Right::SendInput +{End}
  !a::SendInput ^a
  
  ;;; Alt+H To Minimize
  !h::WinMinimize,a

  ;; Alt-q to Quit
  !q::Send !{F4}
#IfWinNotActive

;; Escape/Tilde Key mapping
  ;;; Tilde as Escape
  `::Esc
  +`::~
  ~Capslock & `::`
  ;;; Ctrl-Shift- for Task Manager

  ;;; Shift-Escape for Tilde
  +Esc::~
  ^~::run taskmgr.exe

;; Capslock Bindings
  ~Capslock & z::Send {Volume_Down}
  ~Capslock & x::Send {Volume_Up}
  ~Capslock & [::Send ^{PgUp}
  ~Capslock & ]::Send ^{PgDn}

  ~Capslock & e::Send {Media_Play_Pause}
  ~Capslock & r::Send {Media_Prev}
  ~Capslock & t::Send {Media_Next}

  ~Capslock & c::Send ^{c}

  ~Capslock & Space::Send {Delete}

  ;; Function Keys
    ~Capslock & 1::F1
    ~Capslock & 2::F2
    ~Capslock & 3::F3
    ~Capslock & 4::F4
    ~Capslock & 5::F5
    ~Capslock & 6::F6
    ~Capslock & 7::F7
    ~Capslock & 8::F8
    ~Capslock & 9::F9
    ~Capslock & 0::F10
    ~Capslock & -::F11
    ~Capslock & =::F12 

  ;; Vim-like HJKL arrow keys, with Shift support
  ~Capslock & h::
    If Getkeystate("Shift","p")
      Send +{Left}
    else
      Send {Left}
    return
  ~Capslock & a::
    If Getkeystate("Shift","p")
      Send +{Left}
    else
      Send {Left}
    return


  ~Capslock & s::
    If Getkeystate("Shift","p")
      Send +{Down}
    else
      Send {Down}
    return
  ~Capslock & j::
    If Getkeystate("Shift","p")
      Send +{Down}
    else
      Send {Down}
    return

  ~Capslock & w::
    If Getkeystate("Shift","p")
      Send +{Up}
    else
      Send {Up}
    return
  ~Capslock & k::
    If Getkeystate("Shift","p")
      Send +{Up}
    else
      Send {Up}
    return

  ~Capslock & d::
    If Getkeystate("Shift","p")
      Send +{Right}
    else
      Send {Right}
    return
  ~Capslock & l::
    If Getkeystate("Shift","p")
      Send +{Right}
    else
      Send {Right}
    return

  ~Capslock & Tab::SendInput ^{Tab}
