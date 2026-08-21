\version "2.26.0"
\include "settings.ily"

global = {
  \key f \major
  \time 2/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  a8 a a a8~8 g8 f[bes] 4 4~2
  a8 a a a8~8 g8 f g g a g8. f16 e8 d c4
  a8 a a a8~8 g8[f]bes8 4 4~4
  r4 a8 8 a g8~8 f8 e4 f8 8 8 8~2\bar"||"\break
  
  a8 a a a8~8 g8 f[bes] 4 4~4 r4
  a8 a a a8~8 g8 f g g a g8. f16 e8 d c4
  a8 a a a8~8 g8[f]bes8 4 4~4
  r4 a8 8 4 g8 f e4 f2 R2
}

alto = \fixed c' {
  \global
  
}

tenor = \fixed c' {
  \global
  c8 8 8 8~8 8 8[d]4 8. e16 f8 d
  c4 c8 8 8 8~8 8 8 8 8 c c8. 16 bes,8 a, g,4
  c8 8 8 8~8 8~8 d8 4 8. bes,16 d8 bes,
  r4 c8 8 8 bes,8~8 8 4 a,8 8 8 8~2
  
  f8 8 8 8~8 8 \repeat unfold 5 \tuplet 3/2 {4 g8 }
  f8 8 8 8~8 8 8 e8 8 f e8. f16 e8 d c4
  f8 8 8 8~8 8 8 d8 4 4~4 r
  f8 8 4 e8 8 4 f2 R2
  
}

mains = \drummode {
  R2*16
  \repeat unfold 16 { sn4 hc }
}

verse = \lyricmode {
  Dans no -- tre vil -- lage au -- tre -- fois,
  un ours é -- nor -- me dé -- vas -- tait le bois, la la la la.
  Il fai -- sait peur aux bû -- che -- rons,
  et des ber -- gers man -- geaient tous les mou -- tons.
  \repeat unfold 37 "la"
}

\score {
  \header {
    title = "L'OURS"
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Ténor"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Mains"
    } \mains
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves} }
  \midi {\tempo 4=130}
}
