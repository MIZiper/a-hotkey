;y/w/t/

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

!u::send, {del}
!`;::send, {backspace}
capslock & `;::send, ^{backspace}
!d::send, {end}{shift down}{home}{shift up}{del}
!enter::send, {end}{enter}
!+enter::send, {home}{enter}{up}

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
capslock & p::send, ^+{tab}
capslock & n::send, ^{tab}

!q::send, {esc}
!/::send, !{f4}
!g::send, #{tab}
!m::send, #d
!o::
    winget, s, minmax, A
    ifequal s, 1, winrestore, A
    ifequal s, 0, winmaximize, A
return
!i:: winminimize, A

capslock & h::send, #^{left}
capslock & l::send, #^{right}
capslock & j::send, #^{f4}
capslock & k::send, #^d

!1::run, iexplore.exe
!2::run, explorer.exe
!3::run, notepad.exe
!4::run, mspaint.exe

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