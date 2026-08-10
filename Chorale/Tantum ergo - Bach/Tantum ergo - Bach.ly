\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global \bar".|:"
  \repeat unfold 2 {
    e4 a b c' b a(b8[a])gis4 e~4
    g g f e(a) a gis a2 r4
  }
  b c' d' e'4 8 8 4.(d'8)c'2 r4
  e'4 d' c' b(a8[b]) c'4 b a2 r4 
  s\bar":|." a2 2\bar"|."
}

alto = \fixed c' {
  \global
  \repeat unfold 2 {
    c8[d]e4 4 4 8[d]c4(f)e b,~4
    e e d4 8(c4.) f4 e4 2 r4
  }
  e e g g4 8 8 a4(g)2 r4
  8[a]b4 e f8[e e d] e4 8[d] cis2 r4
  s4 d2 cis
}

tenor = \fixed c {
  \global
  \repeat unfold 2 {
    a8[b]c'4 b a gis a(d'8[c']) b4 gis4~4
    b c' g g(a) b8[c'] d'4 c'2 r4
  }
  gis4 a b c'4 8 8 4(b)c'2
  r4 c'4 g a4 8([g]a4) 4 gis e2
  r4 s f2 e
}

bass = \fixed c {
  \global
  \repeat unfold 2 { 
    a,4 a gis a e f8([e]d4) e e,~4
    e a, b, c f8[e]d4 e a,2 r4
  }
  e4 a g8[f]e[d]c c f4(g) c2
  r4 c4 b, a, d8[e]f4 e8[d]e4 a,2
  r4 s4 d2 a,
}

verseOne = \strophemode #1 ##f \lyricmode {
  Tán -- tum ér -- go Sa -- cra -- mén -- tum
  ve -- ne -- ré -- mur cér -- nu -- i,
  et an -- tí -- quum do -- cu -- mén -- tum
  nó -- vo cé -- dat rí -- tu -- i_;
  prǽs -- tet fí -- des sup -- plé -- men -- tum
  sén -- su -- um de -- féc -- tu -- i.
  \override LyricText.font-series = #'bold
  A -- men.
}

verseTwo = \strophemode #2 ##t \lyricmode {
  Ge -- ni -- tó -- ri Ge -- ni -- tó -- que
  laus et ju -- bi -- lá -- ti -- o,
  sá -- lus, hó -- nor, vír -- tus quó -- que
  sit et be -- ne -- díc -- ti -- o_;
  pro -- ce -- dén -- ti ab u -- tró -- que
  cóm -- par sit lau -- dá -- ti -- o.
}

\tocItemComposer "Tantum ergo" "Bach"
\score {
  \header {
    title = "TANTUM ERGO"
    composer = \bach
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
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseTwo
      
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
    \midi {\tempo 4=70}
  }
