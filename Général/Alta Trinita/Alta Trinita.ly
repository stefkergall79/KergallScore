\version "2.26.0"
\include "settings.ily"
global = {
  \key f \major
  \time 2/2
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \bar ".|:"f2 4(g) a2 g4(f) bes2 a4(g) a2 2
  g a4(bes) a2 g4(f) g(bes) a(g) f2 2
  c'2 4(d') bes1 c'4(bes) a(g) a2 2
  g4(f) bes(g) f2 bes4(a)g(f)bes(g)f2 2 \bar ":|.|:"
  c'2 4(d') bes2 c'4(d') es'(d')c'(a) bes2 g
  f g4(a) bes2 a g4(f) bes4(g) f2 2 \bar":|."
}

alto = \fixed c' {
  \global
  c2 4(e)f2 e4(f)2 4(e)f2 2 e f f e4(f)e(f)f(e)c2 2
  a2 2 g1 2 f4(e)f2 2 e4(d)d(e)f2 2 e4(d)d(e)c2 2
  a2 4(f)g2 4(bes)c'4(bes)g(f)2 e c e4(f)2 2 e4(d)d(e) c2 2
}

tenor = \fixed c {
  \global
  a2 4(c')2 2 d' c'2 2 2 2 4(d') c'2 4(a) c'4(d') c'2 a a
  f'2 2 d'1 e'2 c'2 2 2 4(a)bes(c')2 d'4(c')4(a)bes(c') a2 2
  f'2 2 d' es'4(f')g'(f')es'(c')d'2 c' a c' d' c'2 4(a)bes(c') a2 2
}

bass = \fixed c {
  \global
  f2 4(c)f2 c4(f)bes,2 f4(c)f2 2 c f4(bes,)f2 c4(d)c(bes,)f(c)f,2 2
  f2 4(d)g1 c2 f4(c)f2 2 c4(d)g,(c)f2 bes,4(f)c(d)g,(c) f2 2
  f2 4(d)g2 es4(d) c(d)es(f)bes,2 c f c4(f) bes,2 f c4(d)g,(c) f,2 2
}

verse = \lyricmode {
  Al -- ta Tri -- ni -- tà be -- a -- ta
  da noi sem -- pre a -- do -- ra -- ta.
  Tri -- ni -- tà glo -- ri -- o -- sa.
  U -- ni -- tà ma -- ra -- vi -- glio -- sa.
  Tu sei man -- na sa -- po -- ro -- sa
  e tut -- ta di -- si -- de -- ro -- sa.

}

\tocItem \markup "Alta Trinita Beata"
\score {
  \header {
    title = "ALTA TRINITA BEATA"
    composer = "Anonyme (XVe)"
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
      } \lyricsto "soprano" \verse
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \layout {}
    \midi {\tempo 2=80}
}
\markup \column {
  "Haute et bienheureuse Trinité,"
  "Que nous adorons sans cesse."
  "Trinité glorieuse."
  "Unité merveilleuse."
  "Tu es une manne savoureuse"
  "Et tant désirée."
}
