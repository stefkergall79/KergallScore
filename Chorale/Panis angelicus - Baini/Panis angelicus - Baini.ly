\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key c \major
  \time 4/4
  \autoBeamOff
}

soprano = \fixed c'' {
  \tempo "Adagio"
  \global
  c2 b,4 c d4. 8 4 e4 c2 2 4 b, c
  d e2 d c4. 8 d2
  r4 4 4 e c4. 8 4 4 4 d b,4. 8 4
  c4 4 e d4. 8 e2
  r4 4 d e d4. 8 2
  r4 c4 b, c b,4. 8 4 4 c d e4. 8 d4 4 e e
  \time 3/4 c4. 8 4
  e2 4 d2 4 f2 4
  \time 4/4 e4.(d8) c4 d b,4. 8 c4
  e e d e2 2 d4.(c8 b,4.) 8 cis2\bar "|."
}

alto = \fixed c' {
  \global
  a2 gis4 a b4. 8 4 c'4 a2 g f4. 8 g4
  b4 c'2 g2 a4. 8 b2
  r4 4 4 c' a4. 8 4 c'4 a b gis4. 8 4
  a a c'4 4b c'2
  r4 4 g c' b4. 8 2 r4 a4 e a gis4. 8 4
  4 a b c'4. 8 b4 4 c'4 4 a4. 8 g4
  c'2 4 b2 4 d'2 4 c'4.(b8) a4 4 4 gis a
  c' a4. 8 gis2 a f8([g!] a4 4) gis a2
}

bass = \fixed c {
  \global
  a2 e4 a g4. 8 4 e f2 e d4. 8 c4
  g c'2 b a4. 8 g2
  r4 4 4 e f4. 8 4 4 4 d e4. 8 4 a f c g4. 8 c2
  r4 c' b c' g4. 8 2
  r4 a4 gis a e4. 8 4 4 a g c'4. 8 g4
  4 e e f4. 8 c4 c4.(d8)e[f] g2 4
  d4.(e8) f[g]a2 4 d e4. 8 a,4 a f4. 8 e2
  c d(e4.) 8 a,2
}

verse = \lyricmode {
  Pan -- is an -- gé -- li -- cus
  fit pan -- is hó -- mi -- num.
  Fit pan -- is hó -- mi -- num.
  Dat pan -- is cœ -- li -- cus
  fi -- gú -- ris tér -- mi -- num,
  fi -- gú -- ris tér -- mi -- num.
  O res mi -- rá -- bi -- lis_!
  O res mi -- rá -- bi -- lis_!
  Man -- dú -- cat Dó -- mi -- num,
  man -- dú -- cat Dó -- mi -- num
  pau -- per, ser -- vus,
  pau -- per, ser -- vus,
  et hú -- mi -- lis,
  et hú -- mi -- lis,
  et hú -- mi -- lis.
}

\tocItemComposer "Panis angelicus" "Casciolini"
\score {
  \header {
    title = "PANIS ANGELICUS"
    composer = \casciolini
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
      } \lyricsto "alto" \verse
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "H."
      } << \clef bass \bass  >>
    >>
    \layout {\context{\Staff \RemoveAllEmptyStaves}}
    \midi {\tempo 4=85 }
}

\markup \column {
  "Le pain des anges devient le pain des hommes."
  "Le pain céleste met fin aux apparences."
  "Ô merveille !"
  "Le pauvre, le serviteur et l'humble"
  "Mange le Seigneur."
}