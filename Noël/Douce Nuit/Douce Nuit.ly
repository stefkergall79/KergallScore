\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key c \major
  \time 3/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  g4.(a8) g4 e2. g4.(a8) g4 e2 r4
  d'2 4 b2. c'2 4 g2 r4
  \repeat unfold 2 { a2 4 c'4. b8 a4 g4. a8 g4 e2 r4 }
  d'2 4 f'4. d'8 b4 c'2.(e'2) r4
  c'4.(g8) e4 g4. f8 d4 c2. \bar "|."
}

alto = \fixed c' {
  \global
  e4.(f8) e4 c2. e4.(f8) e4 c2 r4
  f2 4 2. e2 4 2 r4
  f2 4 a4. g8 f4 e4. f8 e4 c2 r4
  c4(f) 4 4. 8 4 e4. f8 e4 c2 r4
  f2 4 d4. f8 4 e2.(g2) r4
  e2 c4 b,4. 8 4 c2.
}

tenor = \fixed c {
  \global
  c'2 4 g2. c'2 4 g2 r4
  b2 8[d'] d'2. c'2 4 2 r4
  c'2 4 4. 8 4 4. 8 4 g2.
  f4(c'4) 4 4. 8 4 4. 8 4 g2 r4
  b2 4 4. 8 d'4 c'2.~2 r4
  2 g4 4. 8 f4 e2.
}

bass = \fixed c {
  \global
  c2 4 2. 2 4 2 r4
  g2 4 2. e2 4 2 r4
  f2 4 4. 8 4 c4. 8 4 2 r4
  f4~4 4 a4. g8 f4 c4. 8 4 2 r4
  g2 4 4. 8 4 c2.~2 r4
  2 4 g,4. 8 4 c2.
}

verseOne = \strophemode 1 ##f \lyricmode {
  Dou -- ce nuit_! Sain -- te nuit_!
  Dans les cieux, l'as -- tre luit.
  Le mys -- tère an -- non -- cé s'ac -- com -- plit_:
  cet En -- fant sur la paille en -- dor -- mi,
  c'est l'A -- mour in -- fi -- ni_!
  C'est l'A -- mour in -- fi -- ni_!
}

verseTwo = \strophemode 2 ##t \lyricmode {
  Saint En -- fant_! Doux A -- gneau_!
  Qu'il est grand_! Qu'il est beau_!
  En -- ten -- dez ré -- son -- ner les pi -- peaux
  des ber -- gers con -- dui -- sant leurs trou -- peaux
  vers son hum -- ble ber -- ceau,
  vers son hum -- ble ber -- ceau.
}

verseThree = \strophemode 3 ##f \lyricmode {
  C'est vers nous qu'il ac -- court,
  en un don sans re -- tour_!
  De ce monde i -- gno -- rant de l'a -- mour
  où com -- mence au -- jour -- d'hui son sé -- jour,
  qu'il soit Roi pour tou -- jours,
  qu'il soit Roi pour tou -- jours_!
}

verseFour = \strophemode 4 ##t \lyricmode {
  Paix à tous_! Gloire au ciel_!
  Gloire au sein ma -- ter -- nel,
  qui pour nous, en ce jour de No -- ël,
  en -- fan -- ta le Sau -- veur é -- ter -- nel,
  qu'at -- ten -- dait Is -- ra -- ël,
  qu'at -- ten -- dait Is -- ra -- ël_!
}

\tocItem \markup "Douce nuit"
\score {
  \header {
    title = "DOUCE NUIT"
    composer = \gruber
    poet = \markup{"Paroles :" \mohr}
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
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {}
  \midi {\tempo 4=80 }
}
