\version "2.26.0"
\include "settings.ily"
global = {
  \key e \major
  \time 4/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global \bar ".|:"
  \repeat volta 2 {
    fis2 4 4 2 gis a2 4 gis fis4 4 eis2
    fis gis4 4 2 4 4 b2(a4) gis4 2 fis eis1
    fis4 4 eis fis gis1 fis2 r4 a4~4 b cis' b a2
    gis4(a) 8[gis] fis4 4 eis fis1
  }
  \alternative{
    { \bar "||"
      cis'4. 8 4 4 4 4 fis'4 4 e'(cis' e'4.) 8 dis'4
      b2 8 8 4 4 cis'2 b8 8 cis'2 a4 gis1
    }
    {
      fis1 1\bar "|."
    }
  }
}

alto = \fixed c' {
  \global
  cis2 4 4 2 e2 2 4 4 cis4 4 2
  dis2 e4 4 2 4 4 4(dis fis) e e(cis2) b,4 cis1
  4 4 4 4 e1 dis2 r4 fis4~4 4 a4 gis fis2
  e a,4 8[b,] cis4 4 1
  a4. 8 4 4 gis a b b cis'(a gis) ais b
  gis2 8 8 fis4 gis a2 gis8 8 a2 fis4 cis1
  d1 cis
}

tenor = \fixed c {
  \global
  a2 4 4 2 b cis'2 4 b a a gis2
  b2 4 4 2 cis'4 4 b2(cis'4) 4 b(e) fis2 gis1
  a4 4 gis a b1 2 r4
  cis'4~4 dis' e' e' cis'2 2 fis4 4 gis4 4 a1
  fis4. 8 4 4 eis fis d d cis(fis e) cis b,
  e2 8 8 dis4 e a,8[b, cis dis] e e cis4 fis2 cis1
  b ais
}

bass = \fixed c {
  \global
  fis2 4 4 2 e a,2 4 e fis4 4 cis2
  b, e4 4 2 4 4 gis2(fis4) cis e2 dis cis1
  fis4 4 cis fis e1 b,2 r4 fis4~4 b a e fis2
  cis d4 4 cis4 4 fis1
  R1*7 b,1 fis
}

verseOne = \lyricmode {
  O me -- mo -- ri -- á -- le mór -- tis Dó -- mi -- ni,
  Pá -- nis ví -- vus ví -- tam prǽs -- tans hó -- mi -- ni.
  Prǽs -- ta mé -- æ mén -- ti de te ví -- ve -- re
  Te dúl -- ce sa -- pé -- re.
  Pí -- e pel -- li -- cá -- ne Jé -- su Dó -- mi -- ne,
  me im -- mún -- dum mún -- da tú -- o sán -- gui -- ne.
  A -- men.
}

\tocItemComposer "O Memoriále" "Palestrina"
\score {
  \header {
    title = "O MEMORIALE"
    composer = "Giovanni da Palestrina (1525-1594)"
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
        \consists Merge_rests_engraver
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \layout {\context{\Staff \RemoveAllEmptyStaves}}
    \midi {\tempo 4=90 }
}

\markup \column {
  "O mémorial de la mort du Seigneur,"
  "Pain vivant qui donnez la vie à l'homme,"
  "Donnez à mon âme de ne vivre que de Vous"
  "Et de trouver toujours en Vous"
  "Sa joie et ses délices."
  "Pieux Pélican, Seigneur Jésus,"
  "Que Votre Sang me purifie de mes souillures."
  "Amen."
}