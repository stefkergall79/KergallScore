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
\paper {
  systems-per-page = 3
  page-count = 2
}

soprano = \relative f' {
  \global  f2 
  f4  f4 | % 1
   g4.  g8  f4  g4 ~ | % 2
   g8   g8   a4  bes2 | % 3
   a2 r4  a4
   bes4.  a8  g4  g4
   f4  g2  g4 | % 6
  f1 | % 7
  f1 | % 8
  R1 | % 9

  r2 r4  f8 [  g8 ] | % 10
   a8 [  g8  a8  bes8 ]  c8 [  bes8  a8  g8 ]
   f4  g4.  f8  f4 ~ | % 12
   f4  e4  f2 \bar "||"
  \time 3/2 
  f2  f2  f2 | % 14
   g2.  g4  f2 | % 15
   bes2.  bes4  a2 | % 16
   g2.  f4  g2 
  a1 r2
   f2  f2  f2 | % 19

   g2.  g4  f2 | % 20
  g1  g2  d2 f1 \bar "||"
   
   \time 2/2 f2 r2 
  r4  f4  g4.  bes8 | % 23
   a4  bes8  bes8  bes4.  a8 | % 24
   g2  a4  f4 | % 25
   g2  g4  g4 | % 26
   fis2  g2 | % 27
   a4  a4  bes8 [  a8  g8  f8 ]
   e4  g2  f4 ~ | % 29

   f8 [  e16  d16 ]  e4  f2 | % 30
  r2 r4  f4 | % 31
   g4.  bes8  a4  bes8 bes8 | % 32
   bes4.  a8  g4  g4
   a4  c4  bes2 
   a4  bes4. bes8   a4 | % 35
   g2  f2 | % 36
  r4  bes4  a4.  a8 | % 37
   bes4  c2  bes4
   a4  g4  a4  bes4 ~ | % 39

   bes8   bes8   a4  c2
   a4  f2  f4 | % 41
   g8 [  a8  bes8  g8 ]  a8 [  bes8 ]  c4 ~ | % 42
   c8   bes8  bes2  a4 
   bes2  bes4.  bes8 | % 44
   bes8   bes8  bes4  bes2 | % 45
  bes1 \bar "|."
}

sopranoLyrics = \lyricmode {
  Can -- tá -- te Dó -- mi -- no,
  cán -- ti -- cum nó -- vum,
  can -- tá -- te Dó -- mi -- no
  ó -- mnis tér -- ra.
  
  Can -- _ _ _ tá -- te Dó -- mi -- no,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- _ _ jus,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  de dí -- e in dí -- em,
  sa -- lu -- tá -- _ re é -- _ jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  ín -- ter gén -- tes
  gló -- ri -- am é -- jus,
  in óm -- ni -- bus pó -- pu -- lis
  mi -- ra -- bí -- li -- a é -- jus,
  mi -- ra -- bí -- _ _ li -- a é -- jus,
  mi -- ra -- bí -- li -- a é -- jus.
}

alto = \relative g {
  \global
  \transpose g d' {
   g2  f4  g4 | % 1
   as4.  as8  g4  as4 ~ | % 2
   as8   as8   bes2  a4 | % 3
   bes4  f4  bes4.  as8
   g2 (  as4. )  as8 | % 5
   g4  as2  as4 | % 6
   g2 ( f2 ) | % 7
   g4  es8 [  f8 ]  g8 [  f8  g8  as8 ] | % 8
   bes8 [  as8 ]  g4  f4  bes4

   as4  f4  g4.  as8 | % 10
   bes4  bes4  as8 [  g8 ]  f4 | % 11
   g2  f2 ~ | % 12
   f4  f4  f2
  g2  g2  g2 | % 14
   as2.  as4  g2 | % 15
   bes2.  bes4  bes2 | % 16
   a2.  g4  a2 | % 17
  bes1 r2
   g2  g2  f2 | % 19

   as2.  as4  g2 | % 20
  as1  g2 ~ 4  es4 f1 | % 21
    g2 r2
  r4  g4  as4.  g8 | % 23
   f4  es8   bes8   c'4.  bes8 | % 24
   a2  bes4  g4 | % 25
   as2  as4  g4 | % 26
   g2  a2 | % 27
   bes2.  g4
   f2.  f4 | % 29

   f2  f2 | % 30
  r2 r4  g4 | % 31
   as4.  g8  f4  es8   bes8  | % 32
   c'4.  bes8  g4  a4
   bes4  bes8 bes4 a16 [ g16 ]  a4 | % 34
   bes4  bes4.  bes8  bes4 | % 35
   as4.  g8  f2 | % 36
   g4  bes4  bes4.  bes8 | % 37
   bes4  des'2  bes4
   bes4  a4  bes4  bes4 ~ | % 39

   bes8   bes8  bes2  a4 | % 40
   bes4  g2  g4 | % 41
   as4  g4  bes2 | % 42
  bes1
   g4  bes2  bes4 | % 44
   c'8   c'8   bes4  c'2 | % 45
  bes1
}}

altoLyrics = \lyricmode {
  Can -- tá -- te Dó -- mi -- no,
  cán -- ti -- cum nó -- vum,
  can -- tá -- te Dó -- mi -- no
  ó -- mnis tér -- ra.
  
  Can -- _ _ _ tá -- te Dó -- mi -- no, __ _ _
  can -- tá -- _ te Dó -- mi -- no,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- _ _ jus,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  de dí -- e in dí -- em,
  sa -- lu -- tá -- re é -- jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  ín -- ter gén -- _ _ tes
  gló -- ri -- am é -- _ _ jus,
  in óm -- ni -- bus pó -- pu -- lis
  mi -- ra -- bí -- li -- a é -- jus,
  mi -- ra -- bí -- li -- a é -- jus,
  mi -- ra -- bí -- li -- a é -- jus.
}

tenor = \relative bes {
  \global
  bes2  a4  bes4 | % 1
   bes4.  bes8  bes4  bes4 ~ | % 2
   bes8   bes8  d4  bes2 | % 3
   c4  a4  d4.  c8
   bes2.  bes4 | % 5
   bes4  bes4  g4  c4 ~ | % 6
   c8 [  bes8 ]  bes2  a4 | % 7
  bes1 | % 8
  r4  f8 [  g8 ]  a8 [  g8  a8  bes8 ]

   c8 [  bes8 ]  a4  bes2 | % 10
   c4  a4  g4  a4 ~ | % 11
   a4  bes4.  a8 a8 [ g16  f16 ] | % 12
   g4  g4  a2
  bes2  bes2  bes2 | % 14
   bes2.  bes4  bes2 | % 15
   d2.  d4  c2 | % 16
  c1. | % 17
  c1 r2 
   bes2  bes2  a2 | % 19

   bes2.  bes4  bes2 | % 20
  bes4  g4 c1 |
  bes1  a2 | % 21
    bes4  f'4  es4.  d8
   c4  bes4 r2 | % 23
  r4 r8  d8  es4.  c8 | % 24
   c2  c4  bes4 | % 25
   bes2  c4  bes4 | % 26
   a2  c2 ~ | % 27
   c4  d4. c8 [ bes8  a8 ]
   g4.  g8  a4  a4 | % 29

   g2  a4  f'4 | % 30
   es4.  d8  c4  bes4 | % 31
  r2 r4 r8  d8 | % 32
   es4.  c8  b4  c4
   c4  c4  d8 [  c8 ]  bes4 | % 34
   c4  d4. d8   d4 | % 35
   bes8 [  g8 ]  bes2  a4 | % 36
   bes4  d4  c4.  c8 | % 37
   d4  es2  d4
   c4  c4  c4  d4 ~ | % 39

   d8   d8   d4  g,2 | % 40
   f4  bes2  bes4 | % 41
   bes4.  bes8  c2 | % 42
   d4.  c16 [  bes16 ]  c2
   bes4  d2  d4 | % 44
   es8   es8   d4  es8 [  bes8 ]  es4 | % 45
  d1
}

tenorLyrics = \lyricmode {
  Can -- tá -- te Dó -- mi -- no,
  cán -- ti -- cum nó -- vum,
  can -- tá -- te Dó -- mi -- no
  ó -- mnis tér -- _ _ ra.
  
  Can -- _ _ _ tá -- te, can -- tá -- te
  Dó -- _ _ _ mi -- no,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- _ jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  de dí -- e in dí -- em,
  sa -- _ _ lu -- tá -- re é -- jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  ín -- ter gén -- _ tes
  gló -- ri -- am é -- _ _ jus,
  in óm -- ni -- bus pó -- pu -- lis
  mi -- ra -- bí -- li -- a é -- jus,
  mi -- ra -- bí -- li -- a é -- _ _ jus,
  mi -- ra -- bí -- li -- a é -- _ jus.
}

bass = \relative bes, {
  \global
  bes2  f'4 
  bes,4 | % 1
   es4.  es8  bes4  es4 ~ | % 2
   es8  es8  d4  g2 | % 3
   f2 r4  f4
   g4.  f8  es4  es4 | % 5
   bes4  es2  c4 | % 6
   d4.  es8  f2 | % 7
   bes,2 r4  bes8 [  c8 ] | % 8
   d8 [  c8  d8  es8 ]  f8 [  es8 ]  d4 

   c4  f4  bes,2 | % 10
   f'2  c4  f4 | % 11
   d8 [  c8 ]  bes4  c2 | % 12
   c4.  c8  f2
  bes,2  bes2  bes2 | % 14
   es2.  es4  bes2 | % 15
   bes'2.  bes4  f2 | % 16
  c1. | % 17
  f1 r2
   bes,2  d2  f2 | % 19

   es2.  es4  bes2 | % 20
  es2.  es4 g2 ~ |
  2 f1 | % 21
    bes,4  bes'4  g4.  bes8
   a4  bes4 r2 | % 23
  r4 r8  bes8  es,4.  f8 | % 24
   c2  f4  bes,4 | % 25
   es2  c4  g'4 | % 26
   d2  c2 | % 27
   f8 [  es8  d8  c8 ]  bes4  bes4
   c4  e4  f2 ( | % 29

   c2 ) f4  f4 | % 30
   g4.  bes8  a4  bes4 | % 31
  r2 r4 r8  bes8 | % 32
   es,4.  f8  g4  c,4
   f4  a4  g2 | % 34
   f4  bes,4.  bes8   d4 | % 35
   es2 (  f2 ) | % 36
   bes,4  bes'4  f4.  f8 | % 37
   bes4  as2  bes4
   f4  c4  f4  bes,4 ~ | % 39

   bes8   bes8   d4  c2 | % 40
   f4  bes,2  bes4 | % 41
   es8 [  f8 ]  g4  f8 [  g8 ]  a4 | % 42
   bes2  f2
   bes,4  bes'2  bes4 | % 44
   g8   g8   bes4  es,2 | % 45
  bes1
}

bassLyrics = \lyricmode {
  Can -- tá -- te Dó -- mi -- no,
  cán -- ti -- cum nó -- vum,
  can -- tá -- te Dó -- mi -- no
  ó -- mnis tér -- _ _ ra.
  
  Can -- _ _ _ tá -- te Dó -- mi -- no,
  can -- tá -- _ te Dó -- mi -- no
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  de dí -- e in dí -- em,
  sa -- _ lu -- tá -- re é -- jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  ín -- ter gén -- tes
  gló -- ri -- am é -- jus,
  in óm -- ni -- bus pó -- pu -- lis
  mi -- ra -- bí -- li -- a é -- jus,
  mi -- ra -- bí -- _ _ li -- a é -- jus,
  mi -- ra -- bí -- li -- a é -- jus.
}


\tocItemComposer "Cantate Domino" "Hassler"
\score {
	\header {
		title = "CANTATE DOMINO"
		composer = \hassler
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
    } \lyricsto "soprano" \sopranoLyrics
    
    \new Staff \with {
      instrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \altoLyrics
      
    \new Staff \with {
      instrumentName = "T."
      \consists "Ambitus_engraver"
      \clef "treble_8"
    } \new Voice = "tenor" \tenor
    \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \tenorLyrics
    
    \new Staff \with {
      instrumentName = "B."
      \consists "Ambitus_engraver"
      \clef bass
    } \new Voice = "bass" \bass
    \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \bassLyrics
  >>
  \layout {}
	\midi {\tempo 4=120 }
}
