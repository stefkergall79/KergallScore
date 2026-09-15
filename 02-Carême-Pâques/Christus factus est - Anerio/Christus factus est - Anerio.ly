\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \autoBeamOff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \time 4/4
  \key bes \major 
}

soprano = \relative g' {
  \global
  g2.  f4 | % 2
  bes1 
  a1 | % 3
  fis4.  fis8  fis4  g4 | % 8
  a2  a4  a4 |
  a4  g8 [ f!8 ] g4.  g8 |  
  a1 | % 7
  r4 bes2  a4 | % 8
  g2 f2 (

  e2 ) d2 | % 20
  bes'2 a2 ~ | % 22
  a4  g4  fis4  g4 ~ |
  g4  fis8  e8 fis2 | % 23
  g1 | % 28
  g2  a4  bes4 ~ | % 25
  bes4  a4 bes2 ~ | % 26
  bes4 bes2  f4 | % 27
  g1 | % 28
  g1 |\bar "||" 

  \time 3/2 r2  g2  g2 | % 20
  a1  a2 | % 21
  bes1  c2 | % 22
  r2 d2  c2 | % 23
  d4  c4  bes4  a4  bes4  c4  | % 24
  a1 a2 | % 25
  bes2.  a4 g2 |
  a2 a2  b2 | % 27
  c1  c2 | % 24
  es1 d2 ~2  d2 c2 |\bar "||"

  \time 4/4 d1 | % 30
  g,4  g4  c4.  bes8 | % 32
  a8 bes c2  b4 | % 34
  c2.  c4 | % 33
  d2  bes4  bes4 | % 38
  c4.  d8  es4  es4 | % 35
  d1 | % 36
  d1 \bar "|."
}

sopranoLyricsOne = \lyricmode {
  Chrí -- _ _ stus fác -- tus est pro nó -- bis
  o -- bé -- _ _ di -- ens ús -- que ad mór -- tem,
  ús -- que ad mór -- _ _ _ _ tem, mór -- _ _ _ tem áu -- tem crú -- cis.
  Pró -- pter quod et Dé -- us
  ex -- al -- tá -- _ _ _ _ _ _ vit il -- _ _ lum
  et __ _ dé -- dit íl -- li nó -- _ men,
  quod -- est sú -- per ó -- mne nó -- _ men,
  quod -- est sú -- per ó -- _ _ mne nó -- men.
}

alto = \relative a' {
  \global
  r2 a2 ~ | % 2
  a4  g8 [ fis8 ] g2 ~ | % 4
  g4  fis8 [  e8 ] fis2 | % 3
  d4.  d8  d4  e4 | % 8
  f2  f4  f4 | % 5
  f8 [ e8  d8  c8 ] d4.  d8 | % 6
  e1 | % 7
  f2 e2 | % 8
  d2  cis4  d4 ~ | % 9

  d4  cis4 d2 | % 20
  r4  bes4  c!4  d4 | % 22
  g,2  d'4  es4 | % 24
  d1 
  d1 | % 28
  es2 f2 | % 25
  g8 [ f8 ]  es4 f2 ~ | % 26
  f2  es4  f4 ~ | % 27
  f4  es4 d2 | % 28
  e1 | % 29

  r2  e2  e2 | % 20
  f2  f2  f2 | % 21
  d2  d2  c2 | % 22
  d2 f1 ~ | % 23
  f2  f2  f2 | % 24
  f1  f2 | % 25
  f1  e2 | % 26
  f1  f2 | % 27
  g1  g2 | % 24
  g1 a2~2 g1 | % 29

  fis4  fis4 g2 | % 30
  R1 | % 32
  r2 r4  g4 | % 34
  e2  f4.  f8 | % 33
  f4  f4  g4.  f8 | % 38
  es4.  f8  g4  as4 | % 35
  fis4 g2  fis4 | % 36
  g1
}

altoLyricsOne = \lyricmode {
  Chrí -- _ _ _ stus fác -- tus est -- pro nó -- bis
  o -- bé -- _ di -- ens ús -- que ad mór -- _ _ tem,
  ús -- que ad mór -- _ _ _ tem,
  mór -- _ _ _ tem áu -- _ tem crú -- cis.
  Pró -- pter quod et Dé -- us ex -- al -- tá -- vit,
  ex -- al -- tá -- vit íl -- _ lum
  et dé -- dit íl -- li nó -- men,
  quod -- est, quod -- est sú -- per ó -- mne,
  sú -- per ó -- _ _ mne nó -- _ _ men.
}

tenor = \relative d' {
  \global R1 | % 2
  d1 | % 4
  d1 | % 3
  a4.  a8  a4  bes4 | % 8
  c2 d2 | % 5
  d2 d2 ~ | % 6
  d4  cis8 [ b8 ] cis2 | % 7
  d2 c2 | % 8
  bes2  a4  g4 | % 9

  a2  d,4  d'4 ~ | % 20
  d4 es2  d4 | % 22
  c2 bes2 | % 24
  a1 | % 23
  b1 | % 28
  bes!2  c4  d4 | % 25
  es2.  d8 [ c8 ] | % 26
  d2  c4  c4 | % 27
  b4 c2  b4 | % 28
  c1 | % 29

  r2  c2  c2 | % 20
  c1. | % 21
  r2  bes2  a2 | % 22
  bes2  bes2 r2 | % 23
  r2  d2  d2 | % 24
  c4  bes4 a4  bes8 [ c ]  d2 ~ | % 25
  d4  c4 bes1 | % 26
  c2  c2  d2 | % 27
  es1  es2 | % 24
  bes1 a2~2  bes2  g2 | % 29

  a4  d4 b2 | % 30
  c4.  d8  es4.  d8 | % 32
  c4  c4 d2 | % 34
  c4  c4 a2 | % 33
  bes4.  a8 g2 | % 38
  g2.  c4 ~ | % 35
  c4  bes4 a2 | % 36
  b1
}

tenorLyricsOne = \lyricmode {
  Chrí -- stus fác -- tus est pro nó -- bis
  o -- bé -- di -- ens ús -- que ad mór -- _ _ tem,
  ús -- que -- ad mór -- _ _ tem,
  mór -- _ _ _ _ tem, áu -- tem crú -- _ _ cis.
  Pró -- pter quod ex -- al -- tá -- vit,
  ex -- al -- tá -- _ _ _ _ vit íl -- lum
  et __ _ dé -- dit íl -- li nó -- _ men,
  quod est sú -- per ó -- _ _ mne nó -- men,
  quod est sú -- per ó -- mne nó -- _ _ men.
}

bass = \relative g {
  \global
  R1 | % 2
  g1 | % 4
  d1 | % 3
  d4.  d8  d4  g4 | % 8
  f2  f4  d4 | % 5
  bes'2.  bes4 | % 6
  a1 | % 7
  R1 | % 8
  R1 | % 9

  R1 | % 20
  g2 f2 | % 22
  es2  d4  c4 | % 24
  d1 | % 23
  g,1 | % 28
  es'2.  d4 | % 25
  c2  bes4  bes'4 ~ | % 26
  bes4  bes4  bes4  as4 | % 27
  g1 | % 28
  c,1 | % 29

  r2  c2  c2 | % 20
  f1  f2 | % 21
  bes,1  f'2 | % 22
  r2  bes2  a2 | % 23
  bes2  bes,4  c  d  e  | % 24
  f1  d2 | % 25
  g1. | % 26
  f1  d2 | % 27
  c1  c2 | % 24
  g'1 f2~2 es1 | % 29

  d2 r4  g4 | % 30
  es2  c4  c4 | % 32
  f4  as4 g2 | % 34
  c,2 r4  f4 | % 33
  d2  es4.  d8 | % 38
  c2.  c4 | % 35
  d1 | % 36
  g,1
}

bassLyricsOne = \lyricmode {
  Chrí -- stus fác -- tus -- est pro nó -- bis
  o -- bé -- di -- end ús -- que ad mór -- _ _ tem,
  mór -- _ _ tem, mór -- tem áu -- tem crú -- cis.
  Pró -- pter  quod et Dé -- us
  ex -- al -- tá -- _ _ _ _ _ vit íl -- lum
  et dé -- dit íl -- li nó -- men,
  quod est sú -- per ó -- mne nó -- men,
  quod -- est sú -- per ó -- mne nó -- men.
}


\tocItemComposer "Christus factus est" "Anerio"
\score {
  \header {
    title = "CHRISTUS FACTUS EST"
    composer = \anerio
  }
  \new ChoirStaff \with {
    midiInstrument = "choir aahs"
  } <<
    \new Staff \with {
      instrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \sopranoLyricsOne
    
    \new Staff \with {
      instrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \altoLyricsOne
    
    \new Staff \with {
      instrumentName = "T."
      \consists "Ambitus_engraver"
      \clef "treble_8"
    } \new Voice = "tenor" \tenor
    \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \tenorLyricsOne

    \new Staff \with {
      instrumentName = "B."
      \consists "Ambitus_engraver"
      \clef bass
    } \new Voice = "bass"\bass
    \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \bassLyricsOne
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 4=90 }
}
