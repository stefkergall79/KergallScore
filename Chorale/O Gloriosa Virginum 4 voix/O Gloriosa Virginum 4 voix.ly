\version "2.26.0"
\include "settings.ily"

global = {
  \key f \major
  \time 4/4
  \tempo "Andantino"
}

soprano = \fixed c' {
  \global
  a4(g) bes a g2 f4(g) a(c' d') a c'1
  f'4(e') d' c' d'2 c'4(g) a(c'2) b4 c'2 r4
  4 bes(a g) d' c'(bes) a(c') bes(a g) d' c'(bes a) \breathe
  c' f'2. c'4 bes2. a4 g(f2) e4 f1 \bar "||"
  f2 2\fermata \bar "|."
}

alto = \fixed c' {
  \global
  f4(g) f4 4 4(e) f(c) f(g f) f e(g f e)
  f(g) a g a(g8[f]) e4(g) f(a g) g e2 r4
  f4 4(e d) e f(e) f2 4(e d) e f8([c d e] f4)
  4 a2 f2 2. 4 d2 c2 1 d2 c
}

tenor = \fixed c {
  \global
  c'2 f4 a d'(c'8[bes]) a4(c') 2(a4) d' c'2.(bes4)
  c'2 4 4 4(b) a(c') c'4.(d'8 e'4) d' c'2 r4
  a4 d'(c' bes) 4 a(g) f(a) d'(c' bes) 4 a(g f)\breathe
  a c'2 a bes2. c'4 d'(g2) c'8[bes] a1 bes2 a\fermata
}

bass = \fixed c {
  \global
  f4(e) d c bes,(c) f(e) f(e d) d a(bes a g)
  a(g) f e f(g) a(e) f2 g c2 r4
  a4 d'(c' bes) 4 a(g) f(a) d'(c' bes) bes a(g f)
  f es2 2 d2. c4 bes,2 c f1 bes,2 f
}

verseOne = \strophemode #1 ##f \lyricmode {
  O Glo -- ri -- ó -- sa Vír -- gi -- num, su -- blí -- mis in -- ter sí -- de -- ra_:
  qui te cre -- á -- vit pár -- vu -- lum lac -- tén -- te nú -- tris ú -- be -- ra.
  A -- men.
}

verseTwo = \strophemode #2 ##t \lyricmode {
  Jé -- su tí -- bi sit gló -- ri -- a, qui ná -- tus est de Vír -- gi -- ne,
  cum \markup {\concat{ Pátr(\italic e )}} et ál -- mo Spí -- ri -- tu,
  in sem -- pi -- tér -- na sǽ -- cu -- la.
}


\tocItem \markup "O Gloriosa Virginum"
\score {
  \header {
    title = "O GLORIOSA VIRGINUM"
    poet = "Paroles : Saint Venance Fortunat (~530-609)"
    composer = "Anonyme"
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
      instrumentName = \markup \center-column { "S." "A." }
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
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
      instrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {\tempo 4=100 }
}