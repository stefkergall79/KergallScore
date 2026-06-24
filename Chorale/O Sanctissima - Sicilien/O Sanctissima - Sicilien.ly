\version "2.26.0"
\include "../../settings.ily"
global = {
  \key d \major
  \time 4/4
  \autoBeamOff
  \tempo "Moderato"
  \dynamicUp
}

soprano = \fixed c' {
  \global
  a2\mf b a4. g8 fis4(g)
  a2 b a4. g8 fis4(g)
  a2\< a\! b cis'4 d' cis'2(b) a1\>
  e4.\cresc(fis8)e4 fis g4.(a8) g2
  fis4.(g8)fis4 g a4.(b8)a2
  d'4\f(cis')b(a)d'(b)a g fis2\>(e)d1\!\bar"|."
}

alto = \fixed c' {
  \global
  fis2 g fis4. e8 d2 fis g fis4. e8 d2
  fis2 4(e) gis2 e4 fis e2 d cis1
  cis4.(d8)e4 dis e4.(fis8)e2
  d4.(e8)d4 e fis4.(g8)fis2
  d4(e)d(e)d2 fis4 e e(d2 cis4) s1
}

tenor = \fixed c {
  \global
  d'2 4 cis' d' cis' d'2
  d'2 4 e' e' d'8[cis'] a2
  d'2 4 e'4 2 a4 4 4 gis fis gis a1
  2 b4 4 2 4 cis' b2 4 4 a g a g
  a ais b cis' a! b c' b a2 g fis1
}

bass = \fixed c {
  \global
  d'2 4 cis' d' cis' b a8[g]
  fis2 g a4. g8 fis4(e)
  d e d cis b, b a d e1 a,
  a2 g4 fis e dis e2 b a4 g fis g fis e
  fis2 g fis4 g dis e a2 a, d1
}

verseOne = \lyricmode {
  O sanc -- tís -- si -- ma,
  o pi -- ís -- si -- ma,
  dúl -- cis Vír -- go Ma -- rí -- a_!
  Má -- ter a -- má -- ta in -- te -- me -- rá -- ta,
  ó -- ra, ó -- ra pro nó -- bis.
}

\tocItemComposer "O Sanctissima" "Mélodie sicilienne"
\score {
  \header {
    title = "O SANCTISSIMA"
    poet = "Mélodie sicilienne"
    composer = "Charles Gounod (1818-1893)"
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
      
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \layout {\context{\Staff \RemoveAllEmptyStaves}}
    \midi {\tempo 4=70 }
}