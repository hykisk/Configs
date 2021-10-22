#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ^: ctrl
; !: alt
; +: shift
; #: Win

Down() {
  Loop, 8 {
    Send,{Down}
    Sleep, 10 ;
  }
}

FastDown() {
  Loop, 24 {
    Send,{Down}
  }
}

Up() {
  Loop, 8 {
    Send,{Up}
    Sleep, 10 ;
  }
}

FastUp() {
  Loop, 24 {
    Send,{Up}
  }
}

Left() {
  Loop, 8 {
    Send,{Left}
    Sleep, 10 ;
  }
}

FastLeft() {
  Loop, 24 {
    Send,{Left}
  }
}

Right() {
  Loop, 8 {
    Send,{Right}
    Sleep, 10 ;
  }
}

FastRight() {
  Loop, 24 {
    Send,{Right}
  }
}

F13 & H::Send,{Blind}{Left}
F13 & J::Send,{Blind}{Down}
F13 & K::Send,{Blind}{Up}
F13 & L::Send,{Blind}{Right}

!J::Down()
^!j::FastDown()
!K::Up()
^!k::FastUp()
!H::Left()
^!h::FastLeft()
!l::Right()
^!l::FastRight()

F13 & A::Send,{Blind}{Home}
F13 & E::Send,{Blind}{End}
F13 & M::Send,{Blind}{Enter}
F13 & N::Send,{Blind}{Backspace}
F13 & B::Send,{Blind}{Backspace}
F13 & D::Send,{Blind}{Delete}
F13 & Q::Send,{Blind}{Escape}
F13 & S::Send,{Blind}^s
F13 & X::Send,{Blind}^x
F13 & V::Send,{Blind}+{Insert}
!v::Send,+{Insert}
; F13 & C::Send,{Blind}^c
; F13 & Z::Send,{Blind}^z
; F13 & Y::Send,{Blind}^y

; page up/down
F13 & 9::Send,{Blind}{PgDn}
F13 & 0::Send,{Blind}{PgUp}

; IME on/off
F13 & space::Send,{Blind}{vk1C}
!q::Send,{vk1C}

; move tab
F13 & ]::Send,{Blind}^{Tab}
F13 & [::Send,{Blind}^+{Tab}

; close window
F13 & `::Send,{Blind}!{F4}

; move active window to adjacent desktop
F13 & I::Send,{Blindk}#^{Left}
#A::Send,{Blind}#^{Left}

F13 & O::Send,{Blind}#^{Right}
#S::Send,{Blind}#^{Right}

F13 & 1::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}
F13 & 2::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Right}
F13 & 3::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Right}#^{Right}
F13 & 4::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Right}#^{Right}#^{Right}
F13 & 5::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Right}#^{Right}#^{Right}#^{Right}
F13 & 6::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}
F13 & 7::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}
F13 & 8::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}
; move first desktop
F13 & U::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}
; move last desktop
F13 & P::Send,{Blind}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}#^{Right}

F13 & R::Return

; disable narrator
#N::Return
