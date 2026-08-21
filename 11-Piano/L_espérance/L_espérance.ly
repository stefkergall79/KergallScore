\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key f \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = 1,1,1,1
}

right = \fixed c' {
  \global
  % En avant la musique.
  d4\mp g8 a bes4 a8 g a( f)
  d4 8 8 g4 4 f8 8 g2
  d4 g8 a bes4 a8 g a( f)
  d4 8 8 g4 4 f8 8 g2
  bes8 c' d'4 4 c'8 bes c'4 4 bes8 a bes4 4 a8 g a2 
  \repeat unfold 2 {d4 g8 a bes4 a8 g a( f)
  d4 8 8 g4 4 f8 8 g2}
}

left = \fixed c {
  \global
  % En avant la musique.
  d16\sustainOn\mp bes g bes d bes g bes d bes g bes d bes g bes
  c a f a c a f a c a f a
  d bes g bes d bes g bes d a f a
  d bes g bes d bes g bes
  d bes g bes d bes g bes d bes g bes d bes g bes
  c a f a c a f a c a f a
  d bes g bes d bes g bes d a f a
  d bes g bes d bes g bes
  g d' f a
  f d' bes d' f d' bes d' f d' bes d' f c' a c' f c' a c' f c' a c'
  g d' bes d' g d' bes d' g d' bes d' d a fis a d a fis a
  \repeat unfold 2 {d16\mp bes g bes d16 bes g bes d16 bes g bes d16 bes g bes
  c a f a d a f a d a f a 
  d bes g bes d bes g bes d a f a
  d bes g bes <d bes g>4}
}

verse = \lyricmode {
  Le front pen -- ché sur la Ter -- re,
j'al -- lais seul et sou -- ci -- eux,
quand ré -- son -- na la voix clai -- re
d'un pe -- tit oi -- seau joy -- eux.
Il me dit: ''Re -- prends cou -- ra -- ge,
l'es -- pé -- rance est un tré -- sor.
Mê -- me le plus noir nu -- a -- ge
a tou -- jours sa fran -- ge d'or,
mê -- me le plus noir nu -- a -- ge
a tou -- jours sa fran -- ge d'or.''
}

\score {
  \header {
    title = "L'ESPÉRANCE"
  }
  \new PianoStaff \with {
      midiInstrument = "acoustic grand"
    } <<
    \new Staff \right
    \addlyrics { \verse }
    \new Staff \with {
      \clef bass 
    } \left
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 4 = 80 }
}
