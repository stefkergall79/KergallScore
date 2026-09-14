\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \autoBeamOff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \key bes \major
  \time 2/2
}

soprano = \relative d'' {
  \global
  d2.  d4 | % 1
  c2  d2 | % 2
  es2  d4  d4 ~ | % 3
  d4  c8 [  bes8 ]  c2 | % 4
  d1 | % 5
  r4  d2  d4 | % 6
  d2  d2 | % 7
  d2  d2 |
  bes4.  a8  bes4  c4 | % 9

  d1 | % 10
  R1 | % 11
  r2 r4  d4 ~ | % 12
  d4  f2  e4 | % 13
  d2  c2 |
  r2 r4  a4 | % 15
  c4  d4  f4.  e8 | % 16
  d2 r2 | % 17
  r4  a4  c4  d4 | % 18
  g4.  g8  f2 | % 19

  e2  d4  f4 ~ | % 20
  f8 [  e8 ]  d4 ~  d8 [  cis16  b16 ]  cis4 | % 21
  d1 | % 22
  r4  d2  d4 | % 23
  f2  d2 | % 24
  r4  bes4. c8   d4 | % 25
  es2.  d8 [  c8 ] | 
  d4  d2  c4 | % 27
  bes4  a4  bes2 | % 28
  g4  c4  es2 | % 29

  d1 | % 30
  r4  c4  c4  c4 | % 31
  g4.  a8  bes4.  c8 | 
  d4  c8 [  bes8 ]  a8 [  bes8 ]  c4 ~ | % 33
  c8 [  bes8  a8  g8 ]  a2 | % 34
  g4  bes4. a8 [ bes8  c8 ] | % 35
  d1 | % 36
  R1 | 
  r2 r4  d4 | % 38
  d4  d4  a4.  bes8 | % 39

  c4  d4  bes2 | % 40
  a4  a4  a4  g8  bes8 ~ |
  bes8  a8  g4. fis16 [ e16 ]  fis4 | % 42
  g2 r4  g'4 | % 43
  g4  g4  d4.  es8 | % 44
  f4  g4  es2 | % 45
  d2 r4  f4 | 
  f4  f4  bes,4.  c8 | % 47
  d4  es4  d2 | % 48
  d2 r2 | % 49

  r4  d4  es4  c4 | % 50
  d4  b4  c2 ~ | % 51
  c4  b8 [  a8 ]  b2 \bar "|."
}

sopranoLyricsOne = \lyricmode {
  Mi -- se -- ré -- re mé -- i, Dé -- _ _ us,
  mi -- se -- ré -- re mé -- i, Dé -- _ _ _ us,
  se -- cún -- dum má -- gnam
  mi -- se -- ri -- cór -- di -- am,
  mi -- se -- ri -- cór -- di -- am tú -- _ _ _ _ am_;
  Et se -- cún -- dum mul -- ti -- _ tú -- di -- nem
  mi -- se -- ra -- ti -- ó -- num tu -- á -- rum
  dé -- le in -- i -- qui -- tá -- tem
  mé -- _ _ _ _ am, mé -- _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  in -- i -- qui -- tá -- tem mé -- _ _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  in -- i -- qui -- tá -- tem mé -- _ am.
}

alto = \relative g' {
  \global
  g2.  g4 | % 1
  g2  g2 | % 2
  g2.  d4 | % 3
  es4.  f8  g2 | % 4
  g1 | % 5
  r4  a2  a4 | % 6
  g2  a2 | % 7
  bes2  a4  bes4 ~ | % 8
  bes8 [  a8  g8  fis8 ]  g2 | % 9

  fis2 r4  a4 ~ | % 10
  a4  bes2  a4 | % 11
  g2  fis2 | % 12
  r4  d4  f4  g4 | % 13
  bes4.  bes8  a4  c4 ~ | % 14
  c8 [  bes8  a8  g8 ]  a2 | % 15
  a4  f4.  g8  a4 ~ | % 16
  a8  a8   d,4  g2 | % 17
  c,2 r2 | % 18
  r4  e4  a4  b4 | % 19

  c4.  c8  bes4  a4 ~ | % 20
  a8 [  g16  f16 ]  g4  a2 | % 21
  fis1 | % 22
  r2 r4  f4 ~ | % 23
  f4  f4  bes2 | % 24
  g4  es2  f4 | % 25
  g2  c,2 | % 26
  f2 r4  f4 ~ | % 27
  f4  f4  g4.  a8 | % 28
  bes4  a4  g2 | % 29

  g1 | % 30
  g1 | % 31
  r4  g4  g4  g4 | % 32
  d4.  e8  f4  g8 a8 ~ | % 33
  a8 [  g8 ]  g2  fis4 | % 34
  r4  g4  g4  g4 | % 35
  d4.  e8  f4.  g8 | % 36
  a4  d,4  f4  g4 ~ | % 37
  g8 [  a8  bes8  g8 ]  a4  a4 | % 38
  d,4.  e8  f8  g8   a4 ~ | % 39

  a4  g8 [  f8 ]  g2 | % 40
  fis2 r2 | % 41
  r2 r4  d'4 | % 42
  d4  d4  g,4.  a8 | % 43
  bes4  g4  bes2 ~ | % 44
  bes2  es,2 | % 45
  r4  bes'4  bes4  bes4 | % 46
  f8.   g16   a4  g4  bes4 ~ | % 47
  bes8 [  a8 ]  g2  fis4 | % 48
  g4. -.  d8  es4  c4 | % 49

  d4  b4  c8 [  d8 ]  es4 | % 50
  d2  g2 ~ | % 51
  g1
}

altoLyricsOne = \lyricmode {
  Mi -- se -- ré -- re mé -- i, Dé -- _ _ us,
  mi -- se -- ré -- re mé -- i, Dé -- _ us,
  se -- cún -- dum má -- gnam
  mi -- se -- ri -- cór -- di -- am tú -- am,
  mi -- se -- ri -- cór -- di -- am tú -- am,
  mi -- se -- ri -- cór -- di -- am tú -- _ _ am_;
  Et se -- cún -- dum mul -- ti -- tú -- di -- nem
  mi -- se -- ra -- ti -- ó -- num tu -- á -- rum
  dé -- le in -- i -- qui -- tá -- tem
  mé -- _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- _ _ _ am,
  in -- i -- qui -- tá -- tem mé -- _ _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  dé -- le in -- i -- qui -- tá -- tem mé -- _ _ am,
  in -- i -- qui -- tá -- tem mé -- _ _ am.
}

tenor = \relative d' {
  \global
  d2.  d4 | % 1
  es2  d2 | % 2
  c2  b2 | % 3
  c4.  d8  es2 | % 4
  d1 | % 5
  r4  fis2  fis4 | % 6
  g4  d4  d4.  c8 | % 7
  bes8 [  a8 ]  g4  fis4. -.  f8 | % 8
  g8 [  a8 ]  bes2  a8 [  g8 ] | % 9

  a4  d2  f4 ~ | % 10
  f4  f4  f2 ( | % 11
  d2 ) d2 | % 12
  f2  d4  e4 | % 13
  f4.  f8  f2 | % 14
  f4.  e8  d2 | % 15
  a4  bes8 [  c8 ]  d2 | % 16
  r4  g,4  d'4  e4 | % 17
  f4.  f8  e4  d4 ~ | % 18
  d8 [  cis16  b16 ]  cis4  d4 r8  d8 | % 19

  e8  f8  g4.  g8   f4 | % 20
  d2 ( e2 ) | % 21
  d1 | % 22
  r4  f2  f4 | % 23
  d2  bes4  d4 | % 24
  es4  g2  f4 | % 25
  es2.  f4 | % 26
  d4  f2  c4 | % 27
  f4.  f8  es4  d4 ~ | % 28
  d8   es8   f4  g4  es8 [  c8 ] | % 29

  d8 [  g,8 ]  g'4.  f8   d4 | % 30
  e2 r4  es4 | % 31
  es4  es4  d8   g,8   g'4 ~ | % 32
  g4  g4  f8 [  d8 ]  es4 | % 33
  c2 r4  d4 | % 34
  d4  d4  g,4.  a8 | % 35
  bes4  g4  a2 | % 36
  d2 r4  g,4 | % 37
  g4  g4  d4  d4 | % 38
  bes'4.  c8  d8 [  e8 ]  f4 | % 39

  e4  d4 r4  d4 | % 40
  d4  d4  a8.  c16  bes8 [ d8 ~ ] | % 41
  d8 [  c16  bes16 ]  c4  d4  d4 | % 42
  bes4.  bes8  es8.   d16  es8 [ f8 ] | % 43
  g4  es4  f4  f4 | % 44
  f4  bes,4  c2 | % 45
  f,4  f'8. [  es16 ]  d8 [  c8 ]  bes4 | % 46
  a2  d2 | % 47
  r2 r4  d4 | % 48
  d4  d4  g,4.  a8 | % 49

  bes4  g4  g'2 ~ | % 50
  g4  d4  es2 ~ | % 51
  es4  d8 [  c8 ]  d2
}

tenorLyricsOne = \lyricmode {
  Mi -- se -- ré -- re mé -- i, Dé -- _ _ us,
  mi -- se -- ré -- re mé -- _ _ _ i, Dé -- _ _ _ us,
  se -- cún -- dum má -- gnam
  mi -- se -- ri -- cór -- di -- am tú -- _ _ _ _ am,
  mi -- se -- ri -- cór -- di -- am tú -- _ am,
  mi -- se -- ri -- cór -- di -- am tú -- am_;
  Et se -- cún -- dum mul -- ti -- tú -- _ _ di -- nem
  mi -- se -- ra -- ti -- ó -- num tu -- _ á -- _ _ _ _ _ rum
  dé -- le in -- i -- qui -- tá -- tem
  mé -- _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  dé -- le in -- i -- qui -- tá -- tem mé -- _ _ am,
  in -- i -- qui -- tá -- tem mé -- _ am,
  in -- i -- qui -- tá -- tem mé -- _ _ am,
  in -- i -- qui -- tá -- tem mé -- _ _ _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- _ _ _ am.
}

bass = \relative b {
  \global
  b2.  b4 | % 1
  c4  g4  g2 | % 2
  g2 r4  g4 ~ | % 3
  g8 [  f8  es8  d8 ]  c4  c'4 ~ | % 4
  c4  b8 [  a8 ]  b2 | % 5
  r4  a2  a4 | % 6
  bes2  a4  d4 ~ | % 7
  d4  bes4  d2 | % 8
  g,1 | % 9

  r2  a2 | % 10
  d2.  c4 | % 11
  bes2  a2 | % 12
  R1 | % 13
  r2 r4  a4 | % 14
  c4  d4  f4.  f8 | % 15
  e4  d2  a4 ~ | % 16
  a4  bes4  g2 | % 17
  f2 r4  a4 | % 18
  g4  g4  a4  d4 | % 19

  g,2  d'2 ( | % 20
  d,2 ) a'2 ~ | % 21
  a1 | % 22
  r4  bes2  bes4 | % 23
  bes2  f4  bes4 ~ | % 24
  bes4  g2  bes4 ~ | % 25
  bes4  a8 [  g8 ]  a4  a4 | % 26
  bes4  bes2  a4 | % 27
  d4.  c8  bes4  g4 ~ | % 28
  g4  a4  bes8 [  g8 ]  c4 ~ | % 29

  c4  b8 [  a8 ]  b2 | % 30
  c2 r4  c4 | % 31
  c4  c4  g4.  a8 | % 32
  bes4  c4  d4  c4 | % 33
  es2  d2 | % 34
  g,2 r2 | % 35
  r4  d'4  d4  d4 | % 36
  a4.  bes8  c4  d4 | % 37
  bes2  a2 | % 38
  r4  d4  d4  d4 | % 39

  a4  bes4  d4  g,4 | % 40
  r4  d'4  d4  d4 | % 41
  g,4.  a8  bes4  a4 | % 42
  g2  g2 | % 43
  r4  bes4  bes4  bes4 | % 44
  f8.   a16  g8 [ bes8 ~ ]  bes8 [  a16  g16 ]  a4 | % 45
  bes2 r4  d4 | % 46
  d4  d4  g,4.  a8 | % 47
  bes4  c4  a2 | % 48
  g2 r4  g4 ~ | % 49

  g4  g2  g4 | % 50
  bes4  g4  g2 | % 51
  g1
}

bassLyricsOne = \lyricmode {
  Mi -- se -- ré -- re mé -- i, Dé -- _ _ _ us,
  mi -- se -- ré -- re mé -- i, Dé -- us,
  se -- cún -- dum má -- gnam
  mi -- se -- ri -- cór -- di -- am tú -- _ _ _ am,
  mi -- se -- ri -- cór -- di -- am tú -- am_;
  Et se -- cún -- dum mul -- ti -- tú -- _ _ di -- nem
  mi -- se -- ra -- ti -- ó -- num tu -- á -- _ _ _ rum
  dé -- le in -- i -- qui -- tá -- tem
  mé -- _ _ _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  dé -- le in -- i -- qui -- tá -- tem,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  in -- i -- qui -- tá -- tem mé -- _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  in -- i -- qui -- tá -- tem mé -- am.
}

bassTwo = \relative g {
  \global
  g2.  g4 | % 1
  c,2  b2 | % 2
  c2  g'2 | % 3
  c,1 | % 4
  g'1 | % 5
  r4  d2  d4 | % 6
  g2  fis2 | % 7
  g2  d2 | % 8
  es1 | % 9

  d1 | % 10
  d2  f4  f4 | % 11
  g2  d4  d4 | % 12
  d'2.  c4 | % 13
  bes2  f2 ~ | % 14
  f2 r2 | % 15
  r2 r4  d4 | % 16
  f4  g4  bes4.  bes8 | % 17
  a4  a4.  g8   f4 | % 18
  e2  d4  d4 | % 19

  c4  c4  d4.  c8 | % 20
  bes2  a2 | % 21
  d1 | % 22
  r4  bes2  bes4 | % 23
  bes2  bes2 | % 24
  es2.  d4 | % 25
  c2.  f4 | % 26
  bes,2  f'4.  f8 | % 27
  d4  d4  g2 ~ | % 28
  g4  f4  es4  c4 | % 29

  g'1 | % 30
  c,1 | % 31
  R1 | % 32
  R1 | % 33
  R1 | % 34
  r2 r4  g'4 | % 35
  g4  g4  d4.  e8 | % 36
  f4  g4  a4  bes4 ~ | % 37
  bes8 [  a8 ]  g4.  fis16 [ e16 ]  fis4 | % 38
  g2 r2 | % 39

  r4 g4  g4  g4 | % 40
  d4.  es8  f4  g4 | % 41
  es2  d2 | % 42
  r2 r4  es4 | % 43
  es4  es4  bes4.  c8 | % 44
  d4  es4  c2 | % 45
  bes1 | % 46
  d2 r2 | % 47
  r2  d2 | % 48
  b4  b4  c4  c4 | % 49

  g'2  c,2 | % 50
  g'4.  f8  es4  c4 | % 51
  g'1 
}

bassTwoLyricsOne = \lyricmode {
  Mi -- se -- ré -- re mé -- i, Dé -- us,
  mi -- se -- ré -- re mé -- i, Dé -- us,
  se -- cún -- dum má -- gnam,
  se -- cún -- dum má -- gnam
  mi -- se -- ri -- cór -- di -- am tú -- _ _ _ am,
  mi -- se -- ri -- cór -- di -- am tú -- am_;
  Et se -- cún -- dum mul -- ti -- tú -- di -- nem
  mi -- se -- ra -- ti -- ó -- num tu -- á -- _ rum
  dé -- le in -- i -- qui -- tá -- tem
  mé -- _ _ _ _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- am,
  dé -- le in -- i -- qui -- tá -- tem mé -- _ am,
  dé -- le in -- i -- qui -- tá -- tem mé -- _ _ _ am.
}

\tocItemComposer "Miserere mei" "Byrd"
\score {
  \header {
    title = "MISERERE MEI"
    composer = \byrd
    poet = "Ps. 50"
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
      instrumentName = "T1."
      \consists "Ambitus_engraver"
      \clef "treble_8"
    } \new Voice = "tenor" \tenor
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \tenorLyricsOne
   
    \new Staff \with {
      instrumentName = "T2."
      \consists "Ambitus_engraver"
      \clef "treble_8"
    } \new Voice = "bass" \bass
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \bassLyricsOne
    
    \new Staff \with {
      instrumentName = "B."
      \consists "Ambitus_engraver"
      \clef bass
    } \new Voice = "bassTwo" \bassTwo
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bassTwo" \bassTwoLyricsOne
  
  >>
  \layout {}
  \midi { \tempo 4 = 80 }
}
