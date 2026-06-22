\version "2.26.0"
\include "../../settings.ily"
global = {
  \key bes \major
  \time 4/4
  \autoBeamOff
}

sopranoOne = \fixed c'' {
  \global
  \repeat segno 2 {d2 4 4 4. 8 4(c) d2 r r4
    bes,4 es2 c4 d c2 bes,2
    d c4 4 es4 8 8 d4 4 4. 8 4 e f2
    d4 4 cis(d d cis) d2
    a,4 8 8 bes,4 4 c c d2 4 4 bes,2 c4 bes, a,2 2
    b, c4 d es8[d] c4 4(bes, a,2) g,1
  } \bar ":|."
}

sopranoTwo = \fixed c' {
  \global
  bes2 a4 4 bes a g2 fis4 a d'2 bes c' a4(bes2 a4) bes2
  2 a4 4 c'4 8 8 b4 4 4. 8 4 cis' d' a(4) g g(f e2) d
  fis4 8 8 g4 bes4 4 a bes2
  4 4 g2 a4 g fis2 2 g2 4 4 4 a8(g) fis4(g2 fis4) g1
}

alto = \fixed c' {
  \global
  g2 fis4 4 g d es2 d r4 d g2 es4 4 f1 bes,2
  2 f4 4 c4 8 8 g4 4 4. 8 4 e d2
  bes,4 4 a,2~2 d2 4 8 8 g4 4 es f bes,2
  4 4 es2 c4 4 d2 2 g es4 b, c c d1 g,
}

verse = \lyricmode {
  In món -- te O -- li -- vé -- ti o -- rá -- vit ad Pá -- trem_:
  Pá -- ter, si fí -- e -- ri pó -- test,
  trán -- se -- at a me cá -- lix ís -- te_;
  spí -- ri -- tus quí -- dem prómp -- tus est,
  cá -- ro áu -- tem in -- fír -- ma.
  Fí -- at vo -- lún -- tas tú -- a.
}

\tocItemComposer "In monte Oliveti" "Martini"
\score {
  \header {
    title = "IN MONTE OLIVETI"
    composer = "Giambattista Martini (1706-1784)"
  }
  \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Soprano"
        \consists "Ambitus_engraver"
      } \new Voice = "soprano1" \sopranoOne
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano1" \verse
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Mezzo"
        \consists "Ambitus_engraver"
      } \new Voice = "soprano2" \sopranoTwo
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano2" \verse
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Alto"
        \consists "Ambitus_engraver"
      } \new Voice = "alto" \alto
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "alto" \verse
    >>
    \layout { }
    \midi { \tempo 4=100 }
  }
\markup \column {
  "Sur le mont des Oliviers, Il pria son Père :"
  "« Mon Père, s'il est possible que ce calice s'éloigne de moi ;"
  "   Car l'esprit est prompt, mais la chair est faible."
  "   Mais que Votre volonté soit faite. »"
}