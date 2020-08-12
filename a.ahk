
;for vscode, switch between editor group
!w::send, ^k^{left}

!h::send, {left}
!l::send, {right}
!j::send, {down}
!k::send, {up}
!a::send, {home}
!e::send, {end}
!+a::send, +{home}
!+e::send, +{end}
!+h::send, +{left}
!+l::send, +{right}
!+j::send, +{down}
!+k::send, +{up}
!b::send, ^{left}
!f::send, ^{right}
!t::send, ^a

!u::send, {del}
!`;::send, {backspace}
capslock & `;::send, ^{backspace}
!d::send, {end}{shift down}{home}{shift up}{del}
!+enter::send, {home}{enter}{up}
!y::send, {end}{shift down}{home}{shift up}^c

!p::send, {pgup}
!n::send, {pgdn}
!+p::send, ^{up}
!+n::send, ^{down}

!s::send, ^s
!v::send, ^v
!c::send, ^c
!x::send, ^x
!z::send, ^z
!r::send, ^y

!,::send, !{left}
!.::send, !{right}
capslock & w::send, ^w
capslock & t::send, ^t
capslock & p::send, ^{pgup}
capslock & n::send, ^{pgdn}
capslock & m::send, +{f10}
capslock & enter:: send, {f2}

;For IE, many apps with tabs use ctrl-pgup/pgdn to switch
#ifwinactive ahk_class IEFrame
    capslock & p::send, ^+{tab}
    capslock & n::send, ^{tab}
#ifwinactive
;for excel
#ifwinnotactive ahk_class XLMAIN
    !enter::send, {end}{enter}
#ifwinnotactive

;for putty
#ifwinactive ahk_class PuTTY
    capslock & w::send, ^d
    capslock & `;::send, !{backspace}
    !f::send, !{right}
    !b::send, !{left}
#ifwinactive

!q::send, {esc}
!/::send, !{f4}
!g::send, #{tab}
!m::send, #d
!o::
    winget, s, minmax, A
    ifequal s, 1, winrestore, A
    ifequal s, 0, winmaximize, A
return
!+o:: send, #+{up}
!i:: winrestore, A

capslock & h::send, #^{left}
capslock & l::send, #^{right}
capslock & j::send, #^{f4}
capslock & k::send, #^d

!1::run, iexplore.exe
!2::run, explorer.exe
!3::run, notepad.exe
!4::run, mspaint.exe
!5::run, calc.exe

capslock & s::
    wingetpos, x, y, w, h, a
    winmove, a, , x-(w/20), y
return
capslock & d::
    wingetpos, x, y, w, h, a
    winmove, a, , x, y+(h/20)
return
capslock & f::
    wingetpos, x, y, w, h, a
    winmove, a, , x, y-(h/20)
return
capslock & g::
    wingetpos, x, y, w, h, a
    winmove, a, , x+(w/20), y
return
capslock & r::
    wingetpos, x, y, w, h, a
    winmove, a, , x, y-h/40, w, h*1.05
return
capslock & v::
    wingetpos, x, y, w, h, a
    winmove, a, , x, y+h/40, w, h*0.95
return
capslock & c::
    wingetpos, x, y, w, h, a
    winmove, a, , x+w/40, y, w*0.95, h
return
capslock & e::
    wingetpos, x, y, w, h, a
    winmove, a, , x-w/40, y, w*1.05, h
return
