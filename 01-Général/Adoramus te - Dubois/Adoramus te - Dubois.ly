\version "2.26.0"
\include "settings.ily"
\include "composers.ily"
global = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \dynamicUp
}

soprano = \fixed c' { 
  \global
  c'4\p 8 8 b4 4 a2 g a4 8 8 c'4 8 8 4(b) c'2
  c'4 8 8 b4 4 a2 g a4 8\cresc 8 c'4 8 8 d'2 2
  e'4 8 8 c'4 4 d'4 4 f'4\mf 4 c'4.\sp 8 4 4 4(b) c'2
  c'4\pp 8 8 b4 4 a2 g a4 8 8 c'4 8 8 a2 c'\fermata
  e4\ppp 8 8 4 4 2 2\fermata \bar "|."
}

alto = \fixed c' {
  \global
  e4 8 8 g4 4 f(e) d2 f4 c8 8 4 d8 e f2 e
  e4 8 8 d4 4 c2 b, d4 8 8 e4 8 8 g2 2
  g4 8 8 e4 4 f4 4 4 4 4. 8 e4 4 d2 e
  e4 8 8 g4 4 f4(e) d2 f4 c8 8 4 d8 e f2 e
  c4 8 8 4 4 2 2
}

tenor = \fixed c {
  \global
  g4 8 8 4 4 c'2 b c'4 a8 8 g4 8 8 f2 g
  g4 8 8 4 4 e2 g f4 8 8 g4 c'8 8 2 b2
  4 8 8 c'4 4 a4 4 d'4 4 a4. 8 g4 4 2 2
  g4 8 8 4 4 c'2 b c'4 a8 8 g4 8 8 f2 g\fermata
  g4 8 8 4 4 a2 g\fermata
}

bass = \fixed c {
  \global
  c4 8 8 e4 4 f2 g f4 8 8 e4 8 8 d2 c2
  4 8 8 g,4 4 a,2 e d4 8 8 c4 8 8 g2 2
  e4 8 8 a4 4 d4 4 bes,4 4 f4. 8 c4 4 g,2 c2
  c4 8 8 e4 4 f2 g f4 8 8 e4 8 8 d2 c2
  4 8 8 4 4 a,2 c
}

verseOne = \lyricmode {
  A -- do -- rá -- mus te Chris -- te,
  et be -- ne -- dí -- ci -- mus ti -- bi.
  A -- do -- rá -- mus te Chris -- te,
  et be -- ne -- dí -- ci -- mus ti -- bi.
  Qui -- a per sanc -- tam Cru -- cem tu -- am
  re -- de -- mís -- ti mun -- dum.
  A -- do -- rá -- mus te Chris -- te,
  et be -- ne -- dí -- ci -- mus ti -- bi.
  A -- do -- rá -- mus te Chris -- te.
}

\tocItemComposer "Adoramus te" "Dubois"
\score {
  \header {
    title = "ADORAMUS TE CHRISTE"
    composer = \dubois
  }
  \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseOne
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
        \clef bass
      } <<
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \layout {\context{\Staff \RemoveAllEmptyStaves}}
    \midi {\tempo 4=70}
}

\markup \column {
  "Nous Vous adorons, ô Christ, et nous Vous bénissons,"
  "Parce que Vous avez racheté le monde par Votre sainte Croix."
}