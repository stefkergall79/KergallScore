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
  bes1 | % 4
  a1 | % 3
  fis4.  fis8  fis4  g4 | % 8
  a2  a4  a4 |
  a4  g8 [ f!8 ] g4.  g8 |  
  a1 | % 7
  r4 bes2  a4 | % 8
  g2 f2 | % 9

  e2 d2 | % 20
  bes'2 a2 ~ | % 22
  a4  g4  fis4  g4 ~ |
  g4  fis8  e8 fis2 | % 23
  g1 | % 28
  g2  a4  bes4 ~ | % 25
  bes4  a4 bes2 ~ | % 26
  bes4 bes2  f4 | % 27
  g1 | % 28
  g1 |\bar "||" 

  \time 3/4 r4  g4  g4 | % 40
  a2  a4 | % 42
  bes2  c4 | % 44
  r4 d4  c4 | % 43
  d8 [ c8 ] bes8 [ a8 ] bes8 [ c8 ] | % 48
  a2 a4 | % 45
  bes4.  a8 g4 |
  a4 a4  b4 | % 47
  c2  c4 | % 48
  es2 d4 ~4  d4 c4 |\bar "||"

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
  o -- bé -- _ _ di -- ens ús -- que ad mór -- _ tem,
  ús -- que ad mór -- _ _ _ _ tem, mór -- _ _ _ tem áu -- tem crú -- cis.
  Pró -- pter quod et Dé -- us
  ex -- al -- tá -- _ _ _ vit il -- _ _ lum
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
  f8 [ e8 ] d8 [ c8 ] d4.  d8 | % 6
  e1 | % 7
  f2 e2 | % 8
  d2  cis4  d4 ~ | % 9

  d4  cis4 d2 | % 20
  r4  bes4  c!4  d4 | % 22
  g,2  d'4  es4 | % 24
  d1 | % 23
  d1 | % 28
  es2 f2 | % 25
  g8 [ f8 ]  es4 f2 ~ | % 26
  f2  es4  f4 ~ | % 27
  f4  es4 d2 | % 28
  e1 | % 29

  r4  e4  e4 | % 40
  f4  f4  f4 | % 42
  d4  d4  c4 | % 44
  d4 f2 ~ | % 43
  f4  f4  f4 | % 48
  f2  f4 | % 45
  f2  e4 | % 46
  f2  f4 | % 47
  g2  g4 | % 48
  g2 a4~4 g2 | % 49

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
  o -- bé -- _ _ di -- ens ús -- que ad mór -- _ _ tem,
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

  r4  c4  c4 | % 40
  c2. | % 42
  r4  bes4  a4 | % 44
  bes4  bes4 r4 | % 43
  r4  d4  d4 | % 48
  c8 [ bes8 ] a8 [ bes16 c ]  d4 ~ | % 45
  d8  c8 bes2 | % 46
  c4  c4  d4 | % 47
  es2  es4 | % 48
  bes2 a4~4  bes4  g4 | % 49

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
  ex -- al -- tá -- _ _ vit íl -- lum
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

  r4  c4  c4 | % 40
  f2  f4 | % 42
  bes,2  f'4 | % 44
  r4  bes4  a4 | % 43
  bes4  bes,8 [ c ] d [ e ] | % 48
  f2  d4 | % 45
  g2. | % 46
  f2  d4 | % 47
  c2  c4 | % 48
  g'2 f4~4 es2 | % 49

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
  ex -- al -- tá -- _ _ _ vit íl -- lum
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
    } \new Voice = "soprano" \soprano
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne
    
    \new Staff \with {
      instrumentName = "A."
    } \new Voice = "alto" \alto
    \new Lyrics \lyricsto "alto" \altoLyricsOne
    
    \new Staff \with {
      instrumentName = "T."
      \clef "treble_8"
    } \new Voice = "tenor" \tenor
    \new Lyrics \lyricsto "tenor" \tenorLyricsOne

    \new Staff \with {
      instrumentName = "B."
      \clef bass
    } \new Voice = "bass"\bass
    \new Lyrics \lyricsto "bass" \bassLyricsOne
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 4=90 }
}
