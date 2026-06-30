\version "2.26.0"
\include "../../settings.ily"
global = {
  \key f \major
  \time 4/4
  \partial 2
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \repeat unfold 2 {
    c'2 4 4 d' c' 4 2 a bes a4 g f2 e f\fermata
  }
  r4 a8 8 g4(e) f d c2.
  c'4 4 4 d' c'4 2 a bes a4 g f2 e f\fermata\bar "|."
  
}

alto = \fixed c' {
  \global
  \repeat unfold 2 {
    f2 4 4 4 4 e2 f g d4 4 c2 2 a,
  }
  r4 c8 8 b,4(c) d b, c2.
  f4 4 4 4 4 e2 f g d4 4 c2 2 2
}

tenor = \fixed c {
  \global
  \repeat unfold 2 {
    a2 4 4 bes a g2 f d' c'4 bes a2 g a\fermata
  }
  r4 f8 8 d4 a a f e2.
  a4 4 4 bes a g2 f d' c'4 bes a2 g4(bes) a2\fermata
}

bass = \fixed c {
  \global
  \repeat unfold 2 {
    f2 4 4 bes, f c2 d g, a,4 bes, c2 2 f,
  }
  r4 f,8 8 g,4(a,) d g, c2.
  f4 4 4 bes, f c2 d g, a,4 bes, c2 2 <f, c>
}

verseOne = \strophemode 1 ##f \lyricmode {
  Dans une é -- table ob -- scu -- re,
  sous le ciel é -- toi -- lé,
  et d'u -- ne Vier -- ge pu -- re,
  Un doux Sau -- veur est né.
  Le Sei -- gneur Jé -- sus -_Christ
  est né dans u -- ne crè -- che,
  quand a son -- né mi -- nuit.
}

verseTwo = \strophemode 2 ##t \lyricmode {
  Tan -- dis que les Rois ma -- ges,
  tan -- dis que les ber -- gers,
  lui por -- tent leurs hom -- ma -- ges,
  por -- tons -_Lui nos bai -- sers.
  Le Sei -- gneur Jé -- sus -_Christ
  sau -- ra bien nous sou -- ri -- re
  en cette heu -- reu -- se nuit.
}

verseThree = \strophemode 3 ##f \lyricmode {
  Plein d'u -- ne foi pro -- fon -- de,
  le monde est à ge -- noux.
  Frê -- le Ma -- jes -- té blon -- de,
  é -- tends les mains sur nous.
  Ô Jé -- sus tout pe -- tit_!
  Le monde en -- tier t'ac -- cla -- me
  dans l'a -- do -- ra -- ble nuit.
}

\tocItem \markup "Dans une étable obscure"
\score {
  \header {
    title = "DANS UNE ÉTABLE OBSCURE"
    composer = "Michael Praetorius (1571-1621)"
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
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { \tempo 4=80 }
}
