#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ^: ctrl
; !: alt
; +: shift
; #: Win

F13 & H::Send,{Blind}{Left}
F13 & J::Send,{Blind}{Down}
F13 & K::Send,{Blind}{Up}
F13 & L::Send,{Blind}{Right}
F13 & A::Send,{Blind}{Home}
F13 & E::Send,{Blind}{End}
F13 & M::Send,{Blind}{Enter}
F13 & N::Send,{Blind}{Backspace}
F13 & B::Send,{Blind}{Backspace}
F13 & D::Send,{Blind}{Delete}
F13 & Q::Send,{Blind}{Escape}
F13 & S::Send,{Blind}^s
F13 & X::Send,{Blind}^x
F13 & V::Send,{Blind}^v
F13 & C::Send,{Blind}^c
F13 & Z::Send,{Blind}^z
F13 & Y::Send,{Blind}^y

; IME on/off
F13 & space::Send,{Blind}{vk1C}

; move tab
F13 & ]::Send,{Blind}^{Tab}
F13 & [::Send,{Blind}^+{Tab}

; move active window to adjacent desktop
F13 & U::Send,{Blind}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}#^{Left}
F13 & I::Send,{Blind}#^{Left}
F13 & O::Send,{Blind}#^{Right}

F13 & R::Return
F13 & P::Return

; disable narrator
#N::Return
