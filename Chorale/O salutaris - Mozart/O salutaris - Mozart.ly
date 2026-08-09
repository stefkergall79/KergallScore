\version "2.26.0"
\include "settings.ily"
global = {
  \key g \major
  \time 3/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  g4 4 4 fis2 d4 c'2 4 b2.
  d'4 4 b d'(c') a g2 b8[a] a2.
  g4 4 4 fis4.(e8)d4 c'2 4 b2.
  d'4 4 b a(c') e g2 fis4 g2.\bar "||"
  g2. g\bar"|."
}

alto = \fixed c' {
  \global
  d4 4 4 2 4 2 fis4 g2.
  4 4 4 e2 d4 2 g8[fis] 2.
  g4 4 4 fis4.(e8) d4 2 4 2.
  4 g f e2 4 d2 c4 b,2.
  c b,
}

tenor = \fixed c {
  \global
  b4 4 4 a2 fis4 4 a d'4 2.
  b4 d'4 4a2 c'4 b2 d'4 2.
  b4 d' b c'4.(b8) a[g] fis[g a b] c'[a] g2.
  b4 4 d' c'2 a4 b2 a4 g2.
  e d
}

bass = \fixed c {
  \global
  g,4 b, g, d2 4 4 fis d g2.
  4 b g a2 fis4 g2 4 d2.
  g4 b g a4.(g8) fis[e] d[e fis g] a[fis] g2.
  4 4 gis a2 c4 d2 4 g,2.
  c g,
}

verseOne = \strophemode #1 ##f \lyricmode {
  O sa -- lu -- ta -- ris Hos -- ti -- a,
  quæ cæ -- li pan -- dis os -- ti -- um.
  Bel -- la pre -- munt hos -- ti -- li -- a,
  da ro -- bur, fer au -- xi -- li -- um.
  A -- men.
}
verseTwo = \strophemode #2 ##t \lyricmode {
  U -- ni tri -- no -- que Do -- mi -- no
  sit sem -- pi -- ter -- na glo -- ri -- a,
  qui vi -- tam si -- ne ter -- mi -- no
  no -- bis do -- net in pa -- tri -- a. 
}

\tocItemComposer "O salutaris Hostia" "Mozart"
\score {
  \header {
    title = "O SALUTARIS HOSTIA"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
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
      } \lyricsto "alto" \verseOne
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "alto" \verseTwo
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \layout {\context{\Staff \RemoveAllEmptyStaves}}
    \midi {\tempo 4=90}
  }
