\version "2.26.0"
\include "../../settings.ily"
#(ly:set-option 'backend 'cairo)

global = {
  \key d \major
  \time 2/2
}

soprano = \fixed c' \transpose a c' {
  \global
  fis1^\p 2 2 g g fis1\fermata r2 fis g fis g1 fis e\fermata \break
  a1^\sfz 2 2~2 2 b cis' d'1\fermata 1^\sp b b cis'~2 a2 1\fermata \bar "||"
}

alto = \fixed c' \transpose a c' {
  \global
  d1 2 2 b,2. cis4 d1 r2 d e d b,1 d cis1
  1 2 d~2 cis b, a, b,1 fis g g e~2 fis2 1
}

tenor = \fixed c \transpose a c' {
  \global
  a1 b2 b g g a1\fermata r2 b b b g1 a a\fermata
  1 2 fis~2 a g e fis1\fermata d'1 1 e' cis'~2 d'2 1\fermata
}

bass = \fixed c \transpose a c' {
  \global
  d1 b,2 2 e e d1 r2 b, e b, e1 d a,1
  1 2 d~2 a, e cis b,1 b g e a~2 d2 1
}

verse = \lyricmode {
  Et in -- car -- ná -- tus est de Spí -- ri -- tu Sánc -- to
  ex Ma -- rí -- a Vír -- gi -- ne, et hó -- mo fac -- tus est.
}

\tocItem \markup "Credo III"
\markup \column {
  \fill-line {\bold \fontsize #5 "CREDO III" }
  \vspace #1
  \fill-line {
    \epsfile #X #110 #"cache/credoiii_partie1.png"
  }
  \vspace #2
}
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "S." "A." }
      \consists Merge_rests_engraver
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    
    \new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "T." "B." }
      \consists Merge_rests_engraver
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  
  \layout {}
  \midi { \tempo 4=100 }
}

\markup \column {
  \vspace #2
  \fill-line {\epsfile #X #110 #"cache/credoiii_partie2.png"}
}
\markup \column{
  \fill-line {\epsfile #X #110 #"cache/credoiii_partie3.png"}
}