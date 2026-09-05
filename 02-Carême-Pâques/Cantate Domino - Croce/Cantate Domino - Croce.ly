\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

#(set-global-staff-size 19.6 )

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key d \major
	\time 4/4
	\tempo 4=120
}

soprano = \relative e' {
  \global
  e2  g8 [ 
  fis8  g8  a8 ]  % 1
   b4.  a16 [  g16 ]  fis8 [  e8  fis8  g8 ]  % 2
   a4  b4  a4  fis4  % 3
   g8 [  fis8  g8  a8 ]  b2 
  r2 r4  fis4  % 5
   g8 [  fis8  g8  a8 ]  b4.  a16 [  g16 ]  % 6
   fis4  e4  fis4.  fis8  % 7
   g4  g4  a2 ~  % 8
   a4 fis4  g4  fis4 

   fis4  g4. g8  e4  % 10
   fis4.  e8  fis4  g4 ~  % 11
   g8 [  fis8 ]  e2  dis4  % 12
   e4  g4  g8 [  fis8  g8  e8 ]  % 13
   fis4  fis4 r2 
  r4  b4  b8 [  a8  b8  g8 ]  % 15
   a4  fis4  g4  e4  % 16
   fis4  fis4  fis4  g4 ~  % 17
   g8 [  fis8 ]  e2  dis4 \bar "||" \break
  
  \tempo 2 = 120
   e1 r2 

   b'2  b2  b2  % 20
   a1  g2  % 21
  fis1 r2  % 22
   b2  b2  b2  % 23
   a2.  a4  a2  % 24
   g2  g4  g4
   fis2 \break
   \time 4/4   \bar ".|:"
   \tempo 4=60
   fis2 r2
  r4  b4  % 27
   ais8 b8 g4  fis2  % 28
  r4  b4  ais8 b8  g4  % 29

   fis8 fis8 g4
   a8 a8  a4  % 30
   fis4  a4 ~  a8 g8  fis8  e8  % 31
   fis4  fis8 fis8 ~|
   fis8  a8  a8  e8
   fis2\bar ":|."
   fis4  gis4  % 40
   gis4  a4~4  a4  % 41
   b2  gis1\bar "|."
}

sopranoLyrics = \lyricmode {
  Can -- tá -- _ -- _ -- _ -- _ te Dó -- mi -- no -- _
  can -- tá -- _ -- _ -- _ -- te Dó -- mi -- no,
  can -- tá -- te Dó -- mi -- no,
  cán -- ti -- cum nó -- _ -- _ -- _ -- _ -- _ -- vum,
  can -- tá -- _ -- te,
  can -- tá -- _ -- te Dó -- mi -- no
  ó -- mnis tér -- _ -- _ -- ra.
  
  Can -- tá -- te Dó -- mi -- no,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus.
  
  An -- nún -- ti -- á -- te,
  an -- nún -- ti -- á -- te
  de dí -- e in dí -- em,
  sa -- lu -- tá -- re é -- jus,
  sa -- lu -- tá -- re é -- jus,
  sa -- lu -- tá -- re é -- jus.
}

alto = \relative e' {
  \global \transpose e b {
  R1  % 1
   e2  g8 [  fis8  g8  a8 ]  % 2
   b4  e4  fis4  g4  % 3
   a4  a4  g4.  g8  % 4
   a4  fis4  gis4  gis4  % 5
   a8 [  g8  a8  b8 ]  c'4.  b16 [  a16 ]  % 6
   gis4  a4  a4  gis4  % 7
   a4  a4  b2  % 8
   a4  gis4  a4  fis4  % 9

   gis4  a2  e4  % 10
   g4  g4. g8  g4  % 11
   c4.  d8  e2  % 12
   e4  a4  a8 [  g8  a8  fis8 ]  % 13
   g4  e4 r2  % 14
  r4  g4  g8 [  fis8  g8  e8 ]  % 15
   fis4  g4  a4  fis4  % 16
   g4  g2  g4  % 17
   c4.  d8  e2  % 18
  \time 3/2 e1 r2  % 19

   c'2  c'2  c'2  % 20
  b1  a2  % 21
  gis1 r2  % 22
   b2  b2  c'2  % 23
   a2.  a4  b2  % 24
  g2  g4  a4 fis2
  gis2
  r2 r8  e8  g8  a8  % 27
   b4  a8 a8 g4  g4  % 28
  r8  e8 g8  a8 b4  a8 a8  % 29

   d8  g4  a8  b4  a4  % 30
   g4  b4 ~  b8 a8  fis8  e8
   fis4  e4  b4  a8  a4  g8  fis4
   
   gis4  a4  % 40
   a4  b4  b4  a4. gis16 [ fis16 ] gis4  a1
}}

altoLyrics = \lyricmode {
  Can -- tá -- _ -- te Dó -- mi -- no,
  can -- tá -- te Dó -- mi -- no,
  can -- tá -- _ -- _ -- _ -- te Dó -- mi -- no,
  can -- tá -- _ -- te Dó -- mi -- no,
  cán -- ti -- cum, cán -- ti -- cum
  nó -- _ -- _ -- vum,
  can -- tá -- _ -- te,
  can -- tá -- _ -- te Dó -- mi -- no
  ó -- mnis tér -- _ -- _ -- ra.
  
  Can -- tá -- te Dó -- mi -- no,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus.
  
  An -- nún -- ti -- á -- te de dí -- e,
  an -- nún -- ti -- á -- te
  de dí -- e in dí -- _ -- em,
  sa -- lu -- tá -- re é -- jus,
  sa -- lu -- tá -- re é -- jus,
  sa -- lu -- tá -- re é -- _ -- _ -- jus.
}

tenor = \relative e {
  \global
  r2  e2  % 1
   g8 [  fis8  g8  a8 ]  b4.  a16 [  g16 ]  % 2
   fis4  g4  a4  b4  % 3
   b2 r4  b4 ~  % 4
   b8 b8 ais4  b2  % 5
   b2 r4  b4  % 6
   b4  c4  a4  b4  % 7
   e,4  b'4  d4  cis8 [  b8 ]  % 8
   cis4  b4  b4  ais4  % 9

   b4  b4. b8 g4  % 10
   a2.  b4  % 11
   e,2  fis2  % 12
   e2 r2  % 13
  r4  d'4  d8 [  cis8  d8  b8 ]  % 14
   cis4  b4  b4  b4  % 15
   fis'2  b,4  a8 [  g8 ]  % 16
   a2.  b4  % 17
   e,2  fis2  % 18
  \time 3/2 e1 r2  % 19

   e'2  e2  d2  % 20
  d1  b2  % 21
  b1 r2  % 22
   dis2  dis2  e2  % 23
   cis2.  cis4  d2  % 24
  b2  b4  b4  % 25
   ais2  b2  % 26
  r4  b4  cis8 d8  b4  % 27
   cis8 d8 b4  b4. b8  % 28
   cis8 d8 b4  cis8 d8 b4  % 29

   d8 a8 b4  cis16 [  a16 ]  d4  cis8  % 30
   d4  d4 ~  d8 b8  ais8  b8
   ais4  b8 d8 ~  d8 cis8  cis8  b8
   ais8  b4  ais8
   
   b4  b2  d4  a4  e4  % 41
   fis2  e1
}

tenorLyrics = \lyricmode {
  Can -- tá -- _ -- _ -- _ -- te Dó -- mi -- no,
  cán -- ti -- cum nó -- vum,
  can -- tá -- te Dó -- mi -- no,
  can -- tá -- _ -- _ -- te Dó -- mi -- no
  cán -- ti -- cum
  nó -- _ -- _ -- _ -- vum,
  can -- tá -- _ -- te Dó -- mi -- no
  ó -- _ -- _ -- mnis tér -- _ -- ra.
  
  Can -- tá -- te Dó -- mi -- no,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus.
  
  An -- nún -- ti -- á -- te de dí -- e,
  an -- nún -- ti -- á -- te
  de dí -- e in dí -- _ -- _ -- _ -- em,
  sa -- lu -- tá -- re é -- jus,
  sa -- lu -- tá -- re é -- _ -- _ -- jus,
  sa -- lu -- tá -- re é -- jus.
}

bass = \relative b, {
  \global
  R1  % 1
  R1  % 2
  r2 r4  b4  % 3
   e8 [  d8  e8  fis8 ]  g4  g4  % 4
   e4  fis4  b,4  b4  % 5
   e2  e2  % 6
  r2 r4  b4  % 7
   e4  e4  d8 [  e8  fis8  g8 ]  % 8
   a4  b4  e,4  fis4  % 9

   b,4  e4. e8 e4  % 10
   d2.  b4  % 11
   c2  b2  % 12
   e2 r2  % 13
  r4  b'4  b8 [  a8  b8  g8 ]  % 14
   a4  b4  g4  g4  % 15
   fis2  e2  % 16
   d2.  b4  % 17
   c2  b2  % 18
  \time 3/2 e1 r2  % 19

   e2  e2  g2  % 20
  d1  e2  % 21
  b1 r2  % 22
   b'2  b2  e,2  % 23
   a2.  a4  fis2  % 24
  g2  g4  e4  % 25
   fis2  b,2  % 26
  r4  b'4  ais8 b8 g4  % 27
   fis8 b,8  e4  b4  b'4  % 28
   ais8 b8 g4  fis8 b,8  e4  % 29

   d8 d8 g4  fis8. g16  a4  % 30
   d,4  d4 ~  d8 e8  fis8  g8
   fis4  b,8 b'8 ~ b8 a8  a8  g8
   fis2
   
   b,4  e2  d4  d4  c4  % 41
   b2  e1
}
bassLyrics = \lyricmode {
  Can -- tá -- _ -- te Dó -- mi -- no,
  can -- tá -- te,
  can -- tá -- te Dó -- _ -- _ -- _ -- mi -- no
  cán -- ti -- cum nó -- _ -- _ -- _ -- vum,
  can -- tá -- _ -- te Dó -- mi -- no
  ó -- _ -- mnis tér -- _ -- ra.
  
  Can -- tá -- te Dó -- mi -- no,
  et be -- ne -- dí -- ci -- te
  nó -- mi -- ni é -- jus.
  
  An -- nún -- ti -- á -- te de dí -- e,
  an -- nún -- ti -- á -- te
  de dí -- e, de dí -- e
  in dí -- em,
  sa -- lu -- tá -- re é -- jus,
  sa -- lu -- tá -- re é -- jus,
  sa -- lu -- tá -- re é -- jus.
}

\tocItemComposer "Cantate Domino" "\croce"
\score {
	\header {
		title = "CANTATE DOMINO"
		composer = \croce
	}
	\new ChoirStaff \with {
		midiInstrument = "choir aahs"
	} <<
	  \new Staff  \with {
	    instrumentName = "S."
    \consists "Ambitus_engraver"
	  } \new Voice = "soprano" \soprano
	  \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \sopranoLyrics
    
    \new Staff  \with {
	    instrumentName = "A."
    \consists "Ambitus_engraver"
	  } \new Voice = "alto" \alto
	  \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \altoLyrics
    
    \new Staff  \with {
	    instrumentName = "T."
    \consists "Ambitus_engraver"
	    \clef "treble_8"
	  } \new Voice = "tenor" \tenor
	  \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \tenorLyrics
    
    \new Staff  \with {
	    instrumentName = "B."
    \consists "Ambitus_engraver"
	    \clef bass
	  } \new Voice = "bass" \bass
	  \new Lyrics \with {
	    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \bassLyrics
	>>
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {}
}
