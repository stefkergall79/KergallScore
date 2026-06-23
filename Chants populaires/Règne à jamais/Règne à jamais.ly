\version "2.26.0"
\include "../../settings.ily"
global = {
  \key es \major
  \time 3/4
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  \markChanson "Couplets"
  es4 2 g4 bes2 c'4 bes(g) as bes2
  es'4 d'(c') d' es'2 bes4 2 as4 g2
  4 f4(g) as g(f) g es(c) d es2 \bar "||"\break
  \markChanson "Refrain"
  es4 2 g4 bes2 c'4 bes(g) as bes2
  es'4 d'(c') d' es'2 bes4 2 as4 g2
  4 f4(g) as g(f) g es(c) d es2 \bar "|."
}

alto = \fixed c' {
  \global
  s2.*12
  bes,4 2 es4 d4(es) 4 2 c4 d2
  g4 4(es) g4 2 4 f2 4 es2 4 d2 es4
  4(f) es bes,(c) bes,4 2
}

tenor = \fixed c {
  \global
  s2.*12
  g4 2 c'4 bes2 as4 g(bes) as f2
  es4 bes(c') bes c'2 g8[as] bes4(d') c'4 2
  bes4 2 c'4 bes2 g4 4(f) f g2
}

bass = \fixed c {
  \global
  s2.*12
  es4 2 c4 g2 as4 es2 f4 bes,2
  c4 g(as) g c2 es4 d(bes,) f c2
  es4 bes,2 as4 es4(d) c g,(as,)bes, es2
}

verseOne = \strophemode 1 \lyricmode {
  Règne à ja -- mais, Cœur glo -- ri -- eux,
  dans tous les temps, dans tous les lieux,
  sur ter -- re com -- me dans les cieux.
  Ô Cœur sa -- cré, sois not -- re Roi_!
  Nous vou -- lons vi -- vre sous Ta loi_!
  Nous n'ai -- me -- rons ja -- mais que Toi_!
}

verseTwo = \strophemode 2 \lyricmode {
  Règne à ja -- mais sur nos foy -- ers_;
  sur eux tou -- jours re -- viens veil -- ler_:
  a -- vec foi, nous sau -- rons pri -- er.
}

verseThree = \strophemode 3 \lyricmode {
  Aux peu -- ples trem -- blants dans leur foi,
  il faut un chef, il faut un Roi_!
  Ce Roi sau -- veur, Jé -- sus, c'est Toi_!
}

verseFour = \strophemode 4 \lyricmode {
  De -- puis qu'à Reims, au temps ja -- dis,
  Tu bap -- ti -- sas le fier Clo -- vis,
  Tu dois ré -- gner sur nous, ses fils_!
}

verseFive = \strophemode 5 \lyricmode {
  Règne, ô Jé -- sus, sur tous les cœurs,
  sur tes a -- mis, sur les pé -- cheurs,
  sur les bre -- bis et les pas -- teurs_!
}

\tocItem \markup "Règne à jamais"
\score {
  \header {
    title = "RÈGNE À JAMAIS"
    composer = "Michael Prætorius (1571-1620)"
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
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseFive
      
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
    \midi { \tempo 2.=65 }
  }
