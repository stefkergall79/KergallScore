\version "2.26.0"
\include "../../settings.ily"

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \markChanson "Couplets"
  e4 8 fis g4 8[a]4. b8 2
  d' b a8 b c' a b2
  
  \markChanson "Refrain"
  b8 c' d' e' b2 a8 g a b g2
  a8 g a b c'4 a8 g fis4. e8 2\bar"|."
}

alto = \fixed c' {
  \global
  b,4 8 d e4 4 4 fis g2
  fis g e8 8 8 fis g2
  
  g8 a b c' g2 fis8 e fis g e2
  fis8 e fis gis a[g]fis e e4 dis b,2
}

tenor = \fixed c {
  \global
  g4 8 a b4 8[c']4 4 b2
  2 2 c'8 b a c' b2
  
  g8 8 8 8 d'2 b8 8 8 8 2
  d'8 8 8 8 e'4 c'8 8 fis4 b g2
}

bass = \fixed c {
  \global
  e4 8 8 4 4 a a e2
  b, e a,8 8 8 8 e2
  
  g8 8 8 8 2 b,8 8 8 8 e2
  d8 8 c b, a,4 8 8 b,4 4 e2
}

verseOne = \strophemode 1 ##f\lyricmode {
  En -- tre le bœuf et l’â -- ne gris,
  dors, dors, dors, le pe -- tit fils.
  Mille an -- ges di -- vins,
  mil -- le sé -- ra -- phins
  vo -- lent à l’en -- tour
  de ce Dieu d’a -- mour.
}

verseTwo = \strophemode 2 ##t \lyricmode {
  En -- tre les pas -- tou -- reaux jo -- lis,
}

verseThree = \strophemode 3 ##f \lyricmode {
  En -- tre les ro -- ses et les lys,
}

verseFour = \strophemode 4 ##t \lyricmode {
  En -- tre les deux bras de Ma -- rie,
}

\tocItemComposer "Entre le bœuf et l'âne gris" "Traditionnel français"
\score {
  \header {
    title = "ENTRE LE BŒUF ET L'ÂNE GRIS"
    composer = "Noël traditionnel français"
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
    \layout {\context{\Staff \RemoveAllEmptyStaves}}
    \midi {\tempo 4=70 }
  }

