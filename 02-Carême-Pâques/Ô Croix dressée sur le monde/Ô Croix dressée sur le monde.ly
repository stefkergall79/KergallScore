\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key bes \major
  \numericTimeSignature
  \time 6/8
  \partial 8
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \bar ".|:"
    d8 g4 8 bes g bes d'4(c'8) bes4.
    c'8 d' c' bes4 a8 g4. r4 s8
  \bar ":|."
  \break
  a8 bes c' bes4 a8 g4. f g8 8 8 bes g bes a4. r
  g8 8 8 bes g bes d'4(c'8) bes4. c'8 d' c' bes4 a8 g4. r4 \bar "|."
}

verseOne = \strophemode #1 ##f \lyricmode {
  Ô Croix dres -- sée sur le mon -- de,
  ô Croix de Jé -- sus -_Christ_!
  Fleu -- ve dont l'eau fé -- con -- de
  du cœur ou -- vert a jail -- li_;
  par toi la vie su -- ra -- bon -- de,
  ô Croix de Jé -- sus -_Christ_!
}

verseTwo =  \strophemode #2 ##t \lyricmode {
  Ô Croix, su -- bli -- me fo -- li -- e,
  ô Croix de Jé -- sus -_Christ_!
  Dieu rend par toi la vi -- e
  et nous ra -- chète à grand prix_;
  l'a -- mour de Dieu est fo -- li -- e,
  ô Croix de Jé -- sus -_Christ_!
}

verseThree = \strophemode #3 ##f \lyricmode {
  Ô Croix, sa -- ges -- se su -- prê -- me,
  ô Croix de Jé -- sus -_Christ_!
  Le Fils de Dieu lui -_mê -- me
  jus -- qu'à la mort o -- bé -- it_;
  ton dé -- nue -- ment est ex -- trê -- me,
  ô Croix de Jé -- sus -_Christ_!
}

verseFour = \strophemode #4 ##t \lyricmode {
  Ô Croix, vic -- toire é -- cla -- tan -- te,
  ô Croix de Jé -- sus -_Christ_!
  Tu ju -- ge -- ras le mon -- de
  au jour que Dieu s'est choi -- si_;
  Croix à ja -- mais tri -- om -- phan -- te,
  ô Croix de Jé -- sus -_Christ
}

\tocItem \markup "Ô Coix dressée sur le monde"
\score {
  \header {
    title = "O CROIX DRESSÉE SUR LE MONDE"
    composer = \servel
    poet = \markup \line {"Paroles :" \montfort }
  }
  \new Staff \with {
      midiInstrument = "choir aahs"
  }{ \soprano }
  \addlyrics {\verseOne}
  \addlyrics {\verseTwo}
  \addlyrics {\verseThree}
  \addlyrics {\verseFour}
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4.=60 }
}
