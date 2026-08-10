\version "2.26.0"
\include "settings.ily"
\include "composers.ily"
#(set-global-staff-size 19.6)

global = {
    \key c \major
    \time 4/4
    \omit DynamicText
}

sopranoVoice = \fixed c'' {
    \global
    \dynamicUp
    \autoBeamOff
    R1*8
    c1\fffff 2.~8 e8 1 b,2. r4
    a,1 2. d8[c] b,1 e,2. r4
    c1~2 f b,1~2 e a,1 2 d4.(a,8) 2(as,) a,2. r4

    c1 2 f8[e d c] b,1 2 e8([d c b,] a,1) 2 d8[c b, a,] 1 as,2. r4
    c2 e4 a~2 g8[f e d] b,2 d4 g~2 f8[e d c] a,2 c4 f~2
    e8[d c b,] a,2(gis,) a,1

    r8 \autoBeamOn c e a c' b a g f a d' e' f' e' d' c'
    b d g a b a g f e g c' d' e' d' c' b
    a c f g a g f e d f b c' d' c' b a
    b c' b a as a as fis as a as fis e d c b,

    \autoBeamOff
    c2 e4 a~2 g8[f e d] b,2 d4 g~2 f8[e d c] a,2 c4 f~2
    e8[d c b,] a,2(gis,) a,2. r4

    \autoBeamOn
    e'4. c'16 b a8 g f e f4. g16 a d2
    d'4. b16 a g8 f e d e4. f16 g c2
    c'4. a16 g f8 e d c d4. e16 f b,2
    a4. b16 c' b8 a gis fis gis4. a8 2~2 \fermata \bar "|."
}

verse = \lyricmode {
  \repeat unfold 2 {A -- ve Ma -- ri -- a. }
    A _ _ _ _ -- ve Ma -- ri -- a.
  \repeat unfold 2 { A -- ve Ma -- ri -- a. }
  A \repeat unfold 9 { _ } -- ve Ma -- ri -- a.
  \repeat unfold 63 \skip 1
  A \repeat unfold 9 { _ } -- ve Ma -- ri -- a.
}

right = \fixed c' {
    \global
    e''4. c''16 b' a'8 g' f' e' f'4. g'16 a' d'2
    d''4. b'16 a' g'8 f' e' d' e'4. f'16 g' c'2
    c''4. a'16 g' f'8 e' d' c' d'4. e'16 f' b2
    a'4. b'16 c'' b'8 a' gis' fis' gis'4. fis'8 e'2
    <c e a>4\ppppp

    \repeat unfold 3 {<c e a>4}
    \repeat unfold 4 {<c f a>4}
    \repeat unfold 4 {<e g b>4}
    \repeat unfold 4 {<b, e g>4}
    \repeat unfold 4 {<c f>4}
    \repeat unfold 4 {<b, f>4}
    \repeat unfold 4 {<b, dis fis>4}
    <gis, b,> <gis, b,> <b, d> <b, d>

    \repeat unfold 4 {<c e a>4}
    \repeat unfold 2 {<c f a>4}
    \repeat unfold 2 {<c' f a>4}
    \repeat unfold 4 {<b, d g>4}
    \repeat unfold 2 {<b, e g>4}
    \repeat unfold 2 {<b e g>4}
    \repeat unfold 4 {<a, c f>4}
    \repeat unfold 2 {<a, d f>4}
    \repeat unfold 2 {<a d f>4}
    <b, fis> <b, fis> <b, e> <b, d>
    \repeat unfold 4 {<c e>}

    c'8
    e' d' e' c' e' b e' a
    f' e' f' d' f' c' f' b
    d' c' d' g d' a d' g
    e' d' e' c' e' b e' a
    c' b c' a c' g c' f
    d' c' d' b d' f d'
    es e fis g a b c' a
    as a b c' d' e' f' d'

    c'
    e' d' e' c' e' b e' a
    f' e' f' d' f' c' f' b
    d' c' d' g d' a d' g
    e' d' e' c' e' b e' a
    c' b c' a c' g c' f
    d' c' d' b d' f d'
    b d e a b d e as
    a e a b c' b a e

    e''4. c''16 b' a'8 g' f' e' f'4. g'16 a' d'2
    d''4. b'16 a' g'8 f' e' d' e'4. f'16 g' c'2
    c''4. a'16 g' f'8 e' d' c' d'4. e'16 f' b2
    a'4. b'16 c'' b'8 a' gis' fis' gis'4. fis'8 e'2

    c'8
    e' d' e' c' e' b e' a
    f' e' f' d' f' c' f' b
    d' c' d' g d' a d' g
    e' d' e' c' e' b e' a
    c' b c' a c' g c' f
    d' c' d' b d' f d'
    b d e a b d e as
    a e a b c' b a e

    <c' e' a' c''>1\arpeggio <c' f' a' c''>2
    <f' f''>8 <e' e''> <d' d''> <c' c''>
    <b d' g' b'>1\arpeggio <b e' g' b'>2
    <e' e''>8 <d'' d'> <c'' c'> <b' b>
    <a c' e' a'>1\arpeggio <a d' f' a'>2
    <d'' d'>8 <c'' c'> <b' b> <a' a>8 1
    <gis' e' b gis>2 <c e a>4 4 2\fermata

}


bassModel = #(define-music-function
  (parser location n1 n2 n3 n4)
  (ly:music? ly:music? ly:music? ly:music?)
  #{
        << \transpose c c, { $n1 }
            $n1
        >>
        \repeat unfold 3 {<< $n2 $n3 $n4 >>}
  #})


left = \fixed c {
    \global
    \bassModel a,4 a c' e'
    \bassModel d f a d'
    \bassModel g, g b d'
    \bassModel c e g c'
    \bassModel f, f a c'
    <d, d> \repeat unfold 3 { <f a b d'> }
    \bassModel b, fis b dis'
    <e, e> <gis b e'>4 8 d' c' b \bar "||" \break

    <a,, a,>1\ppppp <d, d> <g,, g,> <c, c>
    <f, f>2. <e, e>4 <d, d>2. <c, c>4 <b,, b,>1 <e, e>
    <a a,> <d, d> <g g,> <c c,> <f f,>2. <e e,>4
    <d d,>1 <dis dis,>2 <e e,> <a, a,,>1 \bar "||" \break

    <a,, a,>4. e8 a2 <d, d>4. a8 d'2 <g g,>4. d8 g,2 <c, c>4. g8 c'2
    <f, f>4. c8 f,2 <b,, b,>4. f8 b2 <b,, b,>4. fis8 b2 <e, e>2. 4
    <a,, a,>4. e8 a2 <d, d>4. a8 d'2 <g g,>4. d8 g,2 <c, c>4. g8 c'2
    <f, f>4. c8 f,2 <b,, b,>4. f8 b2 <e, e>4. b8 e'2 <a,, a,>4. e8 a2
    \bar "||" \break

    \bassModel a,4 a c' e'
    \bassModel d f' a d'
    \bassModel g, g b d'
    <c, c>4 \repeat unfold 3 {<g b c' e'>}
    <f, f,,> \repeat unfold 2 {<f a c'>} <e, e>
    <d, d> \repeat unfold 3 {<f a b d'>}
    \bassModel b, fis b dis'
    <e, e> <e b e'> <gis,, gis,> <e b d'> \bar "||" \break

    <a,, a,>4. e8 a2 <d, d>4. a8 d'2 <g g,>4. d8 g,2 <c, c>4. g8 c'2
    <f, f>4. c8 f,2 <b,, b,>4. f8 b2 <e, e>4. b8 e'2 <a,, a,>4. e8 a2
    \bar "||" \break

    \bassModel a,4 a c' e'
    \bassModel d a d' f'
    \bassModel g, g b d'
    <c c,> \repeat unfold 3 {<g b c' e'>}
    <f f,> <f a c'> <f a c'> <e e,>
    <d d,> \repeat unfold 3 {<f a b d'>}
    \bassModel dis fis b dis'
    <e e,> <c c,> <a, a,,>2~2\fermata

}

sopranoVoicePart = \new Staff \with {
    instrumentName = "Soprano"
    midiInstrument = "flute"
} { \sopranoVoice }
\addlyrics { \verse }

pianoPart = \new PianoStaff \with {
    instrumentName = "Orgue"
} <<
    \new Staff = "right" \with {
        midiInstrument = "church organ"
    } \right
    \new Staff = "left" \with {
        midiInstrument = "church organ"
    } { \clef bass \left }
>>

\score {
    \header {
        title = "AVE MARIA"
        composer = "Vladimir Vavilov (1925-1973)"
        arranger = "Attribué à Giulio Caccini (1551-1618)"
    }
    <<
        \sopranoVoicePart
        \pianoPart
    >>
    \layout { \context { \Staff \RemoveEmptyStaves }}
    \midi { \tempo 4 = 85 }
}
