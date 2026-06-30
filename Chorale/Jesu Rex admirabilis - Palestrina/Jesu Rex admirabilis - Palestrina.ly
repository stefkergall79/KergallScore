\version "2.26.0"
\include "../../settings.ily"
globalo = {
  \key f \major
  \time 4/4
  \autoBeamOff
}

soprane = \fixed c' {
  \globalo
  d'2 4 c' f' e' d'4. 8 4 4 c' d' c' bes a4. 8 2 r2
  d' e' e' f'4 d' c'4. 8 2~2 r4 f' f' e' d'4. 8 4 c' bes bes d' c' bes4. 8 4 a g2
  \bar "|."
}

alti = \fixed c' {
  \globalo
  bes2 a4 g a a bes4. 8 4 4 a bes a g fis4. 8 2 r2
  a cis' cis' d'4 bes a4. 8 4 4 4 g a4. 8 4 4 bes2 r d' bes4 a g4. 8 4 fis g2
}

tenors = \fixed c {
  \globalo
  g2 f4 e d c bes,4. 8 4 4 f bes, c c d4. 8 2 r
  d a, a, d4 4 f4. f,8 4 f f e d4. 8 4 c bes,4 4 4 a, g,2 f, g,8([ a, bes, c] d4.) 8 g,2
}

verso = \strophemode #1 ##f \lyricmode {
  Jé -- su, Rex Ad -- mi -- rá -- bi -- lis,
  et Tri -- um -- phá -- tor nó -- bi -- lis,
  Dul -- cé -- do in -- ef -- fá -- bi -- lis
  tó -- tus de -- si -- de -- rá -- bi -- lis,
  tó -- tus de -- si -- de -- rá -- bi -- lis.
}

versa = \lyricmode {
  \repeat unfold 24 {\skip1}
  tó -- tus de -- si -- de -- rá -- bi -- lis,
  tó -- tus
}

verst = \lyricmode {
  \repeat unfold 32 {\skip1}
  tó -- tus de -- si -- de -- rá -- bi -- lis.
}

\paper {
  system-system-spacing.basic-distance = #15
}
\tocItemComposer "Jesu Rex admirabilis" "Palestrina"
\score {
  \header {
    title = "JESU, REX ADMIRABILIS"
    composer = "Giovanni da Palestrina (1525-1594)"
  }
  \new ChoirStaff <<
    \new Staff = "upStaff" \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
      instrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" { \voiceOne \soprane }
      \new Voice = "alto" { \voiceTwo \alti } >>

    \new Lyrics \with { 
      \override VerticalAxisGroup.staff-affinity = #DOWN
      alignAboveContext = #"upStaff"
    } \lyricsto "soprano" \versa
    \new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verso

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "H."
    } << \clef bass \new Voice = "tenor" \tenors >>
    \new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \verst
  >>
  \layout { }
  \midi { \tempo 4=85 }
}

\markup \couplets-markup #2 #2 {
  \column {
    "Quándo cor nóstrum vísita,"
    "Tunc lúcet et véritas,"
    "Múndi viléscit vánitas,"
    "Et íntus férvet cáritas."
  }
  \column {
    "Jésu, dulcédo córdium,"
    "Fons vívus, lúmen méntium,"
    "Excédens ómne gáudium,"
    "Et ómne desidérium."
  }
  \column {
    "Jésum ómnes agnóscite,"
    "Amórem éjus póscite :"
    "Jésum ardénter quǽrite,"
    "Quǽrendo inardéscite."
    }
  \column {
    "Te nóstra, Jésu, vox sónet,"
    "Nóstri te móres éxprimant,"
    "Te córda nóstra díligant,"
    "Et nunc et in perpétuum."
  }
}
