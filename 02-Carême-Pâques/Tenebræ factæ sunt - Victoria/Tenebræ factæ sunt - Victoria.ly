\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \autoBeamOff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

soprano = \relative a' {
  \global
  r2  a2 ~ | % 1
  a4  d,4  d4  bes'4 ~ | % 2
  bes8 [  a16  g16 ]  f4  g2 | % 3
  e2 r4  a4 | % 4
  a2  b4  b4 | % 5
  c2.  a4 | % 6
  g2  e4  e4 |
  f2.  e8 [  d8 ] | % 8
  e4  d2  cis4 | % 9

  d4  a'4  a4  a4 | % 10
  c4.  b16 [  a16 ]  g4  a4 | % 11
  bes4  a2  g4 | % 12
  a1 ~ | % 13
  a2 r4  a4 |
  d4  d2  cis4 | % 15
  d4  a4  c4  c4 | % 16
  b8 [  c8 ]  d2  cis4 | % 17
  d2 r2 | % 18
  r2  f,2 ~ | % 19

  f4  e4  e2 | % 20
  d2 r4  d'4 ~ | % 21
  d4  cis4  cis2 |
  d2 r2 | % 23
  R1 | % 24
  r4  a4  d2 | % 25
  c4  a4  b4  cis4 | % 26
  d4  c8 [  bes8 ]  a4  bes4 | % 27
  a4  f4  g4  a4 |
  a2.  g4 | 
  a1 | \bar "||"
  \repeat segno 2 {
    r2  a2 ~ | % 31
    a2  c2 ~ | % 32
    c4  b4  b2 | % 33
    a2  c4.  b8 | % 34
    a2  g2 | % 35
    a2 r2 | % 36
    r2 r4  f4 | % 37
    g4  a4  bes4  a4 | % 38
    a1 \fine |\bar "|."\break
    
    a1 | % 40
    d2.  b4 | % 41
    b2  g4  c4 ~ | % 42
    c8 [  b8  a8  g8 ]  f2 | % 43
    d4  d'2  cis4 | % 44
    d4  a2  g4 | % 45
    f4  e4  d2 ~ | % 46
    d4  cis8 [  b8 ]  cis2 | % 47
    d2 r2 | % 48
    f1 ( |
    
    g1 ) | % 50
    f1 | % 51
    r4  f4  bes4  a4 | % 52
    bes2  a2 ~ | % 53
    a2 r4  d,4 | % 54
    a'4  a4  bes2 | % 55
    a4  f4  g4  a4 ~ | % 56
    a4  g8 [  f8 ]  g2 | % 57
    a1 \bar "||"
  }
}

sopranoVerse = \lyricmode {
  Te -- né -- bræ fá -- _ ctæ sunt, 
  dum cru -- ci -- fi -- xís -- sent
  Jé -- sum Ju -- dǽ -- _ _ _ _ i_:
  et cír -- ca hó -- _ _ ram nó -- _ _ nam
  ex -- cla -- má -- vit Jé -- sus
  vó -- ce má -- _ _ gna_:
  Dé -- us mé -- us,
  Dé -- us mé -- us,
  ut quid me de -- re -- li -- quís -- _ _ _ ti,
  de -- re -- li -- quís -- _ ti_?
  Et in -- cli -- ná -- to cá -- _ _ pi -- te,
  e -- mí -- sit spí -- ri -- tum.
  Ex -- clá -- mans Jé -- sus
  vó -- _ ce má -- _ gna, á -- _ _ _ _ _ _ it_:
  Pá -- ter, in má -- nus tú -- as
  com -- mén -- do spí -- ri -- tum mé -- _ _ _ um.
}

alto = \relative f' {
  \global
  R1 
  f2.  d4 | % 2
  d4  bes'2  bes4 | % 3
  a4  e4  e2 | % 4
  fis4  fis4  g2 ~ | % 5
  g2  a2 | % 6
  bes2  a2 ~ | % 7
  a2 r4  e4 | % 8
  g1 | % 9

  f1 | % 10
  r4  e4  e4  e4 | % 11
  g4  c,4  d2 | % 12
  e2 r2 | % 13
  r4  e4  a4  a4 ~ | % 14
  a4  g4  a4  e4 | % 15
  f4  f4  e4.  f8 | % 16
  g4.  f8  e2 | % 17
  d2 r2 | % 18
  R1 | % 19

  r2  a'2 ~ | % 20
  a4  g4  g2 | % 21
  a1 ~ | % 22
  a1 | % 23
  R1 | % 24
  r2 r4  d,4 | % 25
  a'2  g4  e4 | % 26
  d4  e4  f4  d4 | % 27
  r4  d4  d4  f4 | % 28
  f2  e4  d4 | % 29

  e1 | % 30
  R1*4
  r2 r4  d4 | % 35
  e4  fis4  g4.  a8 | % 36
  bes4  a8 [  g8 ]  a2 |
  g4  f4  e4  e4 | % 38
  fis1 | % 39

  r2  d2 ~ | % 40
  d2  g2 ~ | % 41
  g4  e4  e2 | % 42
  c4  c'4 ~  c8 [  b8  a8  g8 ] | % 43
  f4  d4  e2 | % 44
  d2 r2 | % 45
  r4  a'2  g4 | % 46
  f4  e8 [  d8 ]  e2 | % 47
  d2 r2 | % 48
  r2  f2 ~ | % 49

  f4  e8 [  d8 ]  e2 | % 50
  f4  c4  d4  c4 | % 51
  d4.  c8  d8 [  e8 ]  f4 ~ | % 52
  f4  e4  f4  f4 | % 53
  e2  d2 | % 54
  r4  a4  d4  d4 | % 55
  f2  e4  c4 | % 56
  d1 | % 57
  e1 |
}

altoVerse = \lyricmode {
  Te -- né -- bræ fá -- ctæ sunt, 
  dum cru -- ci -- fi -- xís -- sent
  Jé -- sum Ju -- dǽ -- i_:
  et cír -- ca hó -- ram nó -- nam
  ex -- cla -- má -- vit Jé -- sus
  vó -- ce má -- _ _ _ _ gna_:
  Dé -- us mé -- us,
  ut quid me de -- re -- li -- quís -- ti,
  de -- re -- li -- quís -- _ _ ti_?
  e -- mí -- sit spí -- _ _ _ _ _ _ _ ri -- tum.
  Ex -- clá -- mans Jé -- sus
  vó -- _ ce má -- gna, á -- _ _ _ _ it_:
  Pá -- _ _ ter, in má -- nus tú -- _ _ _ _ as
  com -- mén -- do,
  com -- mén -- do spí -- ri -- tum mé -- um.
}

tenor = \relative d' {
  \global
  R1
  d2.  g,4 | % 2
  g4  d'2  d4 | % 3
  cis1 | % 4
  r4  d4  d2 | % 5
  e4  e4  f2 | % 6
  e4  d2  cis4 | % 7
  d4  a4  c2 ~ | % 8
  c4  b8 [  a8 ]  g2 | % 9

  a2 r4  a4 | % 10
  a4  a4  c4.  b16 [  a16 ] | % 11
  g4  a4  bes2 | % 12
  a4  e'4  f4  f4 ~ | % 13
  f4  e4  f4  e4 | % 14
  d4  d4  e2 | % 15
  d2 r2 | % 16
  R1*2
  r2  d2 ~ | % 19

  d4  cis4  cis2 | % 20
  d4  g,4  d'2 | % 21
  e2  a,4  e'4 | % 22
  f2  e4  c4 | % 23
  d4  e4  f4  e8 [  d8 ] | % 24
  e2  d2 | % 25
  R1 | % 26
  r4  a4  d2 | % 27
  c4  a4  b4  c4 | % 28
  d4  c8 [  b8 ]  c8 [  a8 ]  d4 ~ | % 29

  d4  cis4  cis2 | % 30
  d1 | % 31
  f2.  e4 | % 32
  e2  d2 | % 33
  f2.  e8 [  d8 ] | % 34
  e4  f4  d2 | % 35
  r4  a4  b4  c4 | % 36
  d4.  e8  f2 | % 37
  e4  d2  cis4 | % 38
  d1 | % 39

  R1*5 | % 40
  r2  d2 ~ | % 45
  d4  c4  bes2 | % 46
  a1 | % 47
  R1 | % 48
  d1 | % 49

  c1 | % 50
  r4  f,4  bes4  a4 | % 51
  bes4.  a8  g4  f4 | % 52
  g2  f4  d4 | % 53
  a'4  a4  bes2 | % 54
  a4  f4  g2 | % 55
  d4  d'4  c4  a4 | % 56
  bes1 | % 57
  a1 |
}

tenorVerse = \lyricmode {
  Te -- né -- bræ fá -- ctæ sunt, 
  dum cru -- ci -- fi -- xís -- sent
  Jé -- _ sum Ju -- dǽ -- _ _ i_:
  et cír -- ca hó -- _ _ ram nó -- nam
  ex -- cla -- má -- vit Jé -- sus
  vó -- ce má -- gna_:
  Dé -- us mé -- us,
  Dé -- us mé -- us,
  ut quid me de -- re -- li -- quís -- _ _ ti,
  ut quid me de -- re -- li -- quís -- _ _ _ _ ti_?
  Et in -- cli -- ná -- to cá -- _ _ pi -- te,
  e -- mí -- sit spí -- _ _ _ _ ri -- tum.
  á -- _ _ it_:
  Pá -- ter, in má -- nus tú -- _ _ _ _ as
  com -- mén -- do spí -- ri -- tum mé -- um,
  spí -- ri -- tum mé -- um.
}

bass = \relative a {
  \global
  a2.  d,4 | % 1
  d2  bes'2 ~ | % 2
  bes2  g2 | % 3
  a1 | % 4
  r4  d4  g,2 | % 5
  c4  c4  f,2 | % 6
  g2  a2 | % 7
  d,2  a'2 | % 8
  g4.  f8  e2 | % 9

  d1 | % 10
  R1*2
  r4  a'4  d4  d4 ~ | % 13
  d4  cis4  d4  a4 | % 14
  bes4  bes4  a2 | % 15
  d,2 r4  a'4 | % 16
  g2  a2 | % 17
  d,2 r2 | % 18
  d1 | % 19

  a'1 | % 20
  bes1 | % 21
  a2 r4  a4 | % 22
  d2  c4  a4 | % 23
  b4  c4  d4  c8 [  b8 ] | % 24
  a8 [  b8  c8  a8 ]  bes2 | % 25
  a4  f4  g4  a4 | % 26
  bes4  a8 [  g8 ]  f4  g4 | % 27
  a4  d,4  g4  f4 | % 28
  d8 [  e8  f8  g8 ]  a4  bes4 | % 29

  a1 | % 30
  r2  d,2 ~ | % 31
  d2  a'2 ~ | % 32
  a4  g4  g2 | % 33
  f2  a2 ~ | % 34
  a2  bes2 | % 35
  a2 r2 | % 36
  r2 r4  d,4 | % 37
  e4  f4  g4  a4 | % 38
  d,1 | % 39

  R1*19
}

bassVerse = \lyricmode {
  Te -- né -- bræ fá -- ctæ sunt, 
  dum cru -- ci -- fi -- xís -- sent
  Jé -- sum Ju -- dǽ -- _ _ i_:
  ex -- cla -- má -- vit Jé -- sus
  vó -- ce má -- gna,
  vó -- ce má -- gna_:
  Dé -- us mé -- us,
  ut quid me de -- re -- li -- quís -- _ _ _ ti,
  de -- re -- li -- quís -- _ _ _ ti;
  de -- re -- li -- quís -- _ _ ti_?
  Et in -- cli -- ná -- to cá -- pi -- te,
  e -- mí -- sit spí -- ri -- tum.
}

\tocItemComposer "Tenebræ factæ sunt" "Victoria"
\score {
  \header {
    title = "TENEBRÆ FACTÆ SUNT"
    composer = \victoria
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
    } \lyricsto "soprano" \sopranoVerse
    
    \new Staff \with {
      instrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto"\alto
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \altoVerse
    
    \new Staff \with {
      instrumentName = "T."
      \consists "Ambitus_engraver"
      \clef "treble_8"
    } \new Voice = "tenor" \tenor
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \tenorVerse
    
    \new Staff \with {
      instrumentName = "B."
      \consists "Ambitus_engraver"
      \clef bass
    } \new Voice = "bass" \bass
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \bassVerse
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4 = 100 }
}
