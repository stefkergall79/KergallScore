\version "2.26.0"
\include "settings.ily"
global = {
  \key c \major
  \time 4/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \bar ".|:"c'4 b a g a8. 16 e2
  8. 16 a2 4 g4 c'2 d'
  e' a d' g4 c'4 2(b) c'1\bar ":|."
}

alto = \fixed c' {
  \global
  c'4 b a g a8. 16 e2
  8. 16 2 f4 d4 g2 b c' f b e4 g4 2.(f4) g1
}

tenor = \fixed c {
  \global
  c'4 b a g a8. 16 e2
  8. 16 c'2 4 b c'2 g'2
  2 c' g' c'4 e' d'1 e'
}

bass = \fixed c {
  \global
  c'4 b a g a8. 16 e2
  8. 16 a2 f4 g c(e) g2
  c f g c8[d] e[f] g2(g,) c1
}

verse = \lyricmode {
  Sán -- cte Pí -- e Dé -- ci -- me,
  glo -- ri -- ó -- se Pa -- tró -- ne,
  ó -- ra, ó -- ra pro nó -- bis_!
}

\tocItem \markup "Sáncte Píe Décime"
\score {
  \header {
    title = "SANCTE PIE DECIME"
    composer = "Harmonisation simple"
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
      } \lyricsto "soprano" \verse
      
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
    \midi {\tempo 4=85}
  }

\markup "Saint Pie X, glorieux patron, priez pour nous !"