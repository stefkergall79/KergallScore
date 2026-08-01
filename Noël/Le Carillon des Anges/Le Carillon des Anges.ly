\version "2.26.0"
\include "settings.ily"

global = {
  \time 4/4
  \key bes \major
  \autoBeamOff
}

#(set-global-staff-size 19.4 )

soprano = \relative bes' {
  \global
  R1*7 \break
  bes4  bes4  c8  bes8  a8  g8 | % 8
  f2.  f4 | % 9

  g4  bes4  bes4  a4 | % 10
  bes2  bes2  | % 11
  bes4  bes4  c8  bes8  a8  g8 | % 12
  f2.  f4 | % 13
  g4  bes4  bes4  a4 | % 14
  bes2  bes2  \bar "||" \break
  \repeat volta 2 {
    f'4.  es8  d8 [  es8  f8  d8 ] | % 16
    es4.  d8  c8 [  d8  es8  c8 ] | % 17
    d4.  c8  bes8 [  c8  d8  bes8 ] | % 18
    c4.  bes8  a8 [  bes8  c8  a8 ]  | % 19
  
    bes4.  a8  g8 [  a8  bes8  g8 ] | % 20
    a4.  g8  f4  f4 | % 21
    g4  bes4  bes4  a4 | % 22
    bes2  bes2
   }
}

alto = \relative f' {
  \global
  R1*7
    f4  f4  g8 g8  es8  es8 | % 8
   c2.  f4 | % 9

   es4  es4  f4.  es8 | % 10
   d2  d2  | % 11
   f4  f4  g8 g8  es8  es8 | % 12
   c2.  f4 | % 13
   es4  es4  f4.  es8 | % 14
   d2  d2  \repeat volta 2 {
    | % 15
     bes'8 [  c8  d8  c8 ]  bes8 [  c8  d8  bes8 ] | % 16
     g2  a8 [  bes8  c8  a8 ] | % 17
     f2  g8 [  a8  bes8  g8 ] | % 18
     es8 [  f8 ]  g4  f8 [  g8  a8  f8 ]  | % 19

    d8 [  es8  f8  d8 ]  es8 [  f8  g8  es8 ] | % 20
     f4.  c8  f4  d4 | % 21
     es4  es4  f4.  es8 | % 22
     d2  d2 }
}

tenor = \relative d' {
  \global
  R1*7
    d4  d4  es8 d8  c8  bes8 | % 8
   a2.  bes4 | % 9

   bes4  c4  c4  c4 | % 10
   d2  d2  | % 11
   d4  d4  es8 d8  c8  bes8 | % 12
   a2.  bes4 | % 13
   bes4  c4  c4  c4 | % 14
   d2  d2  \repeat volta 2 {
    | % 15
     d8 [  es8 ]  f4  g4  d4 | % 16
     c8 [  d8 ]  es4  f4  c4 | % 17
     bes8 [  c8 ]  d4  d4  bes4 | % 18
     c8 [  d8 ]  es4  f4  c4  | % 19

     d8 [  c8 ]  d4  bes4  c4 | % 20
     c4.  bes8  a4  bes4 | % 21
     bes4  c4  c4.  c8 | % 22
     d2  d2 }
}

bass = \relative bes {
 \global
 R1*7
    bes4  bes4  es,8 es8  es8  es8 | % 8
   f2.  d4 | % 9

  es4  c4  f4  f4 | % 10
   bes,2  bes2  | % 11
   bes'4  bes4  es,8 es8  es8  es8 | % 12
   f2.  d4 | % 13
   es4  c4  f4  f4 | % 14
   bes,2  bes2  \repeat volta 2 {
    | % 15
     bes'2  g2 | % 16
     c,2  f2 | % 17
     d2  g2 | % 18
     c2  f,2  | % 19

    bes,2  es4  c4 | % 20
     f4.  g8  a4  f4 | % 21
     es4  c4  f4  f4 | % 22
     bes,2  bes2 }
}

LyricsOne = \strophemode 1 ##f \lyricmode {
  Ding_! Dong_! Là -- haut dans le ciel,
  le ca -- ril -- lon des an -- ges,
  en cet -- te nuit de No -- ël,
  chante à Dieu sa lou -- an -- ge_:
  Glo __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a
  Ho -- san -- na in ex -- cel -- sis_!
}

LyricsTwo = \strophemode 2 ##t \lyricmode {
  Ber -- gers, quit -- tez vos trou -- peaux,
  cou -- rez vite à l'é -- ta -- ble_!
  Of -- frez vos plus beaux a -- gneaux
  à l'En -- fant tout ai -- ma -- ble_!
}

LyricsThree = \strophemode 3 ##f \lyricmode {
  Il est pauvre et si pe -- tit
  dans les bras de sa mè -- re_:
  C'est le si -- gne que choi -- sit
  le Sei -- gneur de la ter -- re_!
}

LyricsFour = \strophemode 4 ##t \lyricmode {
  Mê -- lez fi -- fres et pi -- peaux
  au ca -- ril -- lon des an -- ges_!
  Ou -- li -- ou -- li -- ou -- li -- ho_!
  À Dieu tou -- te lou -- an -- ge_!
}

trompette = \relative bes' {
  \key bes \major
  bes4  bes4
   a2 | % 1
   bes4  bes4  a8 [  f'16  f16 ]  f8 [  f8 ] | % 2
   f8 [  f16  f16 ]  f8 [  f8 ]  es8 [  es16  es16 ]  es8 [ 
  es8 ]  | % 3
   c8 [  c16  c16 ]  c8 [  c8 ]  f8 [  es8  d8  c8 ] | % 4
   g'8 [  f8  es8  d8 ]  c8 [  d8  es8  f8 ] | % 5
   d8 [  c8 ]  bes4  bes16 [  bes16  bes16  bes16 ]  bes4 ~ | % 6
  bes1  \bar "||" | % 7
  R1 | % 8
  R1 | % 9

  \barNumberCheck #10
  R1 | % 10
  R1 | % 11
   R1 | % 12
  R1 | % 13
  R1 | % 14
  R1 | % 15
   \repeat volta 2 {
    R1 | % 16
    R1 | % 17
     f'4.  es8  d8 [  es8  f8  d8 ] | % 18
     es4.  d8  c8 [  d8  es8  c8 ]  | % 19

    \barNumberCheck #20
     d4.  c8  bes8 [  c8  d8  bes8 ] | % 20
     c4  bes4  a4  d8 [  c8 ] | % 21
     bes4  es8 [  d8 ]  c4  f8 [  es8 ] | % 22
     d8 [  d16  d16 ]  d8 [  d8 ]  d2 }
}

\tocItem \markup "Le Carillon des Anges"
\score {
  \header {
    title = "LE CARILLON DES ANGES"
    poet = "Paroles : Marie-Antoinette Noury"
    composer = "Charles Wood (1866-926)"
    
  }
  <<
    \new Staff \with {
      midiInstrument = "trumpet"
      instrumentName = "Trompette"
      shortInstrumentName = "Tpte"
    } \trompette
    
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
      } \lyricsto "soprano"  \LyricsOne
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \LyricsTwo
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \LyricsThree
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \LyricsFour
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
        \clef bass
      } <<
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
  >>    
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4 = 120 }
}

