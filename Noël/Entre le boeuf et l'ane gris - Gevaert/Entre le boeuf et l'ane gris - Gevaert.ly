\version "2.26.0"
\include "../../settings.ily"

global = {
  \key as \major
  \time 4/4
  \autoBeamOff
  \tempo "Andantino"
  \dynamicUp
}

soprano = \fixed c' {
  \global
  f4\pp 8 g as4 f c'4 4 2
  f' c'2 8 bes as bes c'2\breathe
  
  f8\< g as bes8 2\> c'8\! bes as g f2\breathe
  8 g as bes c'8. as16 bes8 c' as2. g8.[f16]1~1 2\fermata
  \bar"|."
}

alto = \fixed c' {
  \global
  R1*2 as2\pp f1 e2 \breathe
  c4.\<(d8 es4\>)4\! 4 4 f2
  R1 f2(e)c des(c)des8 c des bes, c2\fermata
}

tenor = \fixed c {
  \global
  R1*2 des'2\pp as2.(f4)g2\breathe
  as2(g4)4 as8[g]c'[bes]as2
  R1 des'2(bes)as f1 8 e f g a2\fermata
}

bass = \fixed c {
  \global
  R1*3 des2\pp c\breathe
  f2(es4)4 c c des2
  R1 bes,2(c)f bes,(a,)bes, <f f,>\fermata
}

verseOneSoprano = \strophemode 1 \lyricmode {
  En -- tre le bœuf et l’â -- ne gris,
  dors, dors, dors, le pe -- tit fils_;
  mille an -- ges di -- vins,
  mil -- le sé -- ra -- phins
  vo -- lent à l’en -- tour
  de ce grand Dieu d’a -- mour.
  Dors_!
}

verseTwoSoprano = \strophemode 2 \lyricmode {
  En -- tre les pas -- tou -- reaux jo -- lis,
}

verseThreeSoprano = \strophemode 3 \lyricmode {
  En -- tre les ro -- ses et les lys,
}

verseFourSoprano = \strophemode 4 \lyricmode {
  En -- tre les deux bras de Ma -- rie,
}

verseAlto = \lyricmode {
  Dors, dors, dors, dors_!
  En -- fant di -- vin_!
  Dors, dors, dors,
  Roi des an -- ges, dors_!
}

verseBass = \lyricmode {
  Dors, dors, dors_!
  En -- fant di -- vin_!
  Dors, dors, dors, dors, dors_!
}

\tocItemComposer "Entre le bœuf et l'âne gris" "Gevaert"
\score {
  \header {
    title = "ENTRE LE BŒUF ET L'ÂNE GRIS"
    arranger = "Harmonisation : François-Auguste Gevaert (1828-1908)"
    composer = "Mélodie du XIIIe siècle"
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseOneSoprano
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseTwoSoprano
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseThreeSoprano
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseFourSoprano
      
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "A."
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verseAlto
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "T."
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \verseAlto
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "B."
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \verseBass
  >>
  \layout {}
  \midi {\tempo 4=80 }
}
