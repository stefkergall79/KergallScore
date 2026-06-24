\version "2.26.0"
\include "../../settings.ily"
global = {
  \key g \major
  \time 4/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \repeat segno 2 {
  \tempo \markup "Lento, con anima" b2 2 r4 b4 4 4 4(a) b2 4 d' e'8. 16 4 a4. 8 b2
  c'4 8 8 cis'4 4 d'4. 8 2 4 8 8 dis'4 4 e'8. b16 4 c'4 4 fis( g fis2) e1}
  \fine
}

alto = \fixed c' {
  \global
  \repeat segno 2 {
  g2^\p^\> fis2\! r4 b4 a4 g4 e2 fis2 g4^\< 4\! 8. 16 4 4^\>(fis8) 8 d2\!
  e4^\cresc 8 8 4 4 fis4. 8 2 4 8 8 4 4 g8.\!^\f 16 4 a^\decresc e dis(e2 dis4) s1\!}
  \fine
}

tenor = \fixed c {
  \global
  \repeat segno 2 {
  e2 dis r4 g fis e c2 b, g,4 b, c8. 16 4 d4. 8 g,2
  c4 8 8 a,4 4 d4. 8 2 4 8 8 b,4 4 e8. 16 4 c a, b,1 e}
  \fine
}

verse = \lyricmode {
  Jé -- su, Sal -- vá -- tor Mún -- di,
  tú -- is fá -- mu -- lis súb -- ve -- ni,
  quos pre -- ti -- ó -- so sán -- gui -- ne, quos pre -- ti -- ó -- so sán -- gui -- ne
  re -- de -- mís -- ti.
}

\tocItemComposer "Jesu Salvator Mundi" "Menegali"
\score {
  \header {
    title = "JESU, SALVATOR MUNDI"
    composer = "Menegali (XVIIIe)"
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
      instrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto } >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "H."
    } << \clef bass \new Voice = "tenor" \tenor >>
  >>
  \layout { }
  \midi { \tempo 4=75}
}
