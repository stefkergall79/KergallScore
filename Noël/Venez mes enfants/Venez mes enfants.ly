\version "2.26.0"
\include "../../settings.ily"
global = {
  \key f \major
  \time 2/2
  \autoBeamOff
  \partial 4
  \tempo "Sans lenteur" 2=120
  \dynamicUp
}

soprano = \relative c'' {
  \global
  c4\mf 2 a4 c4 |
  2 a4 c |
  bes2 g4 4 |
  a2 r4 c4
  2 a4 c4 |
  2 a4 c |
  bes2 g4 4 |
  a2 r4 4\p
  g2 4 4 |
  bes2 4 4 |a2 4 4 |
  d2. 4 |
  c2 4 4 |
  f2 c4 a |
  bes2 g4 e | f2 \bar"|."
}

alto = \fixed c' {
  \global
  \repeat unfold 2 {
    f4 2 4 4 |
    2 4 4 |
    2 e4 4 |
    f2 r4
  }
  4 e2 4 4 |
  f2 4 g |
  f2 g4 4 |
  a2(g4)^\fermata\breathe <d g>4 |
  <e a>2 <e g>4 4 |
  f2 4 4 |
  2 e4 d c2
}

tenor = \relative c' {
  \global
  \repeat unfold 2 {
    c4 2 4 4 |
    2 4 4 |
    d2 c4 4 |
    2 r4
  }
  4 2 4 4 |
  2 4 4 |
  2 es4 4 |
  <<{d2.}\\{s2 s4^\fermata}>> \breathe 4|
  c2 bes4 4 |
  a2 c4 4 |
  d2 c4 bes |a2
}

bass = \fixed c {
  \global
  \repeat unfold 2 {
    a4 2 f4 a |
    2 f4 a |
    g2 c4 4 |
    f2 r4
  }
  f4 c2 4 4 |
  d2 4 e|
  f2 4 4 |
  <bes, f>2. bes,4 |
  c2 4 4 |
  d2 a4 4 |
  g2 c4 4 f2
}

verseOne = \strophemode 1 ##f \lyricmode {
  Ve -- nez, mes en -- fants, ac -- cou -- rez, ve -- nez tous,
  mer -- veil -- les di -- vi -- nes se pas -- sent chez nous.
  Voy -- ez dans la Crè -- che l’En -- fant nou -- veau -_né
  que dans la nuit fraî -- che Dieu nous a don -- né.
}

verseTwo = \strophemode 2 ##t \lyricmode {
  U -- ne pauvre é -- ta -- ble lui sert de mai -- son,
  ni chai -- se ni ta -- ble, rien que paille et son_;
  une hum -- ble chan -- del -- le suf -- fit à l’En -- fant
  que le monde ap -- pel -- le le Dieu Tout -_Puis -- sant.
}

verseThree = \strophemode 3 ##f \lyricmode {
  On n’a vu per -- son -- ne mon -- ter au clo -- cher,
  mais la clo -- che son -- ne pour le nou -- veau -_né.
  L’oi -- seau sur la bran -- che s’est mis à chan -- ter,
  l’œil de la per -- ven -- che s’en est é -- veil -- lé.
}

verseFour = \strophemode 4 ##t \lyricmode {
  Ber -- gers et ber -- gè -- res por -- tent leurs pré -- sents
  “Do -- do, pe -- tit frè -- re” chan -- tent les en -- fants.
  Mille an -- ges fo -- lâ -- trent dans un ray -- on d’or_;
  les Ma -- ges se hâ -- tent vers Jé -- sus qui dort.
}

\tocItem \markup "Venez, mes enfants"
\score {
  \header {
    title = "VENEZ MES ENFANTS"
    composer = "Mélodie populaire"
    arranger = "Harmonisation : César Geoffray (1901-1972)"
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
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseFour
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \layout{\context{\Staff \RemoveAllEmptyStaves}}
    \midi {}
  }
