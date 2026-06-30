\version "2.26.0"
\include "../../settings.ily"
global = {
  \key d \major
  \time 4/4
  \autoBeamOff
  \tempo "Andante"
}

soprano = \fixed c' {
  \global
  fis4^\f(a)a(g) fis4. e8 d4(e)
  fis4(a)a(g) fis4. e8 d4(e)
  fis^\<(g)\!a(d')2 e'4 fis' e'1 1\breathe
  a2^\mf 4 4 b2 4(cis') d'2^\< 4\! b cis'4.(d'8)e'2
  fis'4(e')d'(cis')fis'(d')4 4 b2(cis')d'1\fermata\bar"|."
}

alto = \fixed c' {
  \global
  d2 4(e)d4. cis8 d4(cis)
  d2 4(e)d4. cis8 b,4(cis)
  d2 4(fis)g2 4 a a(b a gis) a1
  cis4(d)cis c d(dis) e2
  d4 a8[b] a4 g8[fis]e4 a4 2
  2 fis a4(g)fis e d2(e)fis1
}

tenor = \fixed c {
  \global
  a2 b a4~8 g8 fis4(g)
  a2 b a4~8 g8 fis4(g)
  a2 2 b cis'4 d' cis'2(b) cis'1 \breathe
  e4.(fis8)e4 fis g4.(a8)g2
  fis4.(g8)fis4 g a4.(b8) cis'2
  d'4(cis')b(a) d'(b)a g fis2(<a e>) <a d>1\fermata
}

bass = \fixed c {
  \global
  d4(fis)g(e)a a, d2
  4(fis)g(e)a a, b,(a,)
  d(e)fis(d)g(fis)e d e1 <a, a>
  a,2 4 d g,(b,)e(a,)
  d2 4 e a,(a)2
  d4(a)b(fis)d2 4 4 a,1 d,
}

verseOne = \strophemode #1 ##f \lyricmode {
  O sanc -- tís -- si -- ma,
  o pi -- ís -- si -- ma,
  dúl -- cis Vír -- go Ma -- rí -- a_!
  Má -- ter a -- má -- ta in -- te -- me -- rá -- ta,
  ó -- ra, ó -- ra pro nó -- bis.
}

verseTwo = \strophemode #2 ##t \lyricmode {
  Tu so -- lá -- ti -- um
  et re -- fú -- gi -- um
  Vír -- go Má -- ter, Ma -- rí -- a_!
  Quid -- quid op -- tá -- mus
  per Te spe -- rá -- mus
  ó -- ra, ó -- ra pro nó -- bis.
}

verseThree = \strophemode #3 ##f \lyricmode {
  Tu -- a gáu -- di -- a
  et sus -- pí -- ri -- a
  jú -- vent nos, o Ma -- rí -- a_!
  In Te spe -- rá -- mus
  ad Te cla -- má -- mus,
  ó -- ra, ó -- ra pro nó -- bis.
}

\tocItemComposer "O Sanctissima" "Roussel"
\score {
  \header {
    title = "O SANCTISSIMA"
    composer = "Chanoine Gaston Roussel (1913-1985)"
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
    \midi {\tempo 4=80 }
  }
