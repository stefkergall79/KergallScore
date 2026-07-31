\version "2.26.0"
\include "settings.ily"

\layout {
  \context {
    \Staff
    printKeyCancellation = ##f
  }
  \context {
    \Score
    doubleRepeatBarType = ":|.|:"
    autoBeaming = ##f
  }
}

soprano = \relative bes' {
  \clef "treble" \numericTimeSignature \time 4/4 \key bes \major R1 | % 1
  R1 | % 2
  R1 | % 3
  \break R1 | % 4
  R1 | % 5
  R1 | % 6
  R1 | % 7
  \break \tweak direction #UP \tempo \markup \normal-text \concat { \normal-text
    \smaller { \fontsize #-2 \rhythm { 4 } \char ##x2009 = \char ##x2009 150 } }
   bes4  bes4  c8 [  bes8  a8  g8 ] | % 8
   f2.  f4 | % 9

  \barNumberCheck #10
   g4  bes4  bes4  a4 | % 10
   bes2  bes2  | % 11
   bes4  bes4  c8 [  bes8  a8  g8 ] | % 12
   f2.  f4 | % 13
   g4  bes4  bes4  a4 | % 14
   bes2  bes2  \repeat volta 2 {
    | % 15
     f'4.  es8  d8 [  es8  f8  d8 ] | % 16
     es4.  d8  c8 [  d8  es8  c8 ] | % 17
     d4.  c8  bes8 [  c8  d8  bes8 ] | % 18
     c4.  bes8  a8 [  bes8  c8  a8 ] \break | % 19

    \barNumberCheck #20
     bes4.  a8  g8 [  a8  bes8  g8 ] | % 20
     a4.  g8  f4  f4 | % 21
     g4  bes4  bes4  a4 | % 22
     bes2  bes2 }
}

alto = \relative f' {
  \clef "treble" \numericTimeSignature \time 4/4 \key bes \major R1 | % 1
  R1 | % 2
  R1 | % 3
  \break R1 | % 4
  R1 | % 5
  R1 | % 6
  R1 | % 7
  \break  f4  f4  g8 [  g8  es8  es8 ] | % 8
   c2.  f4 | % 9

  \barNumberCheck #10
   es4  es4  f4.  es8 | % 10
   d2  d2  | % 11
   f4  f4  g8 [  g8  es8  es8 ] | % 12
   c2.  f4 | % 13
   es4  es4  f4.  es8 | % 14
   d2  d2  \repeat volta 2 {
    | % 15
     bes'8 [  c8  d8  c8 ]  bes8 [  c8  d8  bes8 ] | % 16
     g2  a8 [  bes8  c8  a8 ] | % 17
     f2  g8 [  a8  bes8  g8 ] | % 18
     es8 [  f8 ]  g4  f8 [  g8  a8  f8 ] \break | % 19

    \barNumberCheck #20
     d8 [  es8  f8  d8 ]  es8 [  f8  g8  es8 ] | % 20
     f4.  c8  f4  d4 | % 21
     es4  es4  f4.  es8 | % 22
     d2  d2 }
}

tenor = \relative d' {
  \clef "treble_8" \numericTimeSignature \time 4/4 \key bes \major R1 | % 1
  R1 | % 2
  R1 | % 3
  \break R1 | % 4
  R1 | % 5
  R1 | % 6
  R1 | % 7
  \break  d4  d4  es8 [  d8  c8  bes8 ] | % 8
   a2.  bes4 | % 9

  \barNumberCheck #10
   bes4  c4  c4  c4 | % 10
   d2  d2  | % 11
   d4  d4  es8 [  d8  c8  bes8 ] | % 12
   a2.  bes4 | % 13
   bes4  c4  c4  c4 | % 14
   d2  d2  \repeat volta 2 {
    | % 15
     d8 [  es8 ]  f4  g4  d4 | % 16
     c8 [  d8 ]  es4  f4  c4 | % 17
     bes8 [  c8 ]  d4  d4  bes4 | % 18
     c8 [  d8 ]  es4  f4  c4 \break | % 19

    \barNumberCheck #20
     d8 [  c8 ]  d4  bes4  c4 | % 20
     c4.  bes8  a4  bes4 | % 21
     bes4  c4  c4.  c8 | % 22
     d2  d2 }
}

bass = \relative bes {
  \clef "bass" \numericTimeSignature \time 4/4 \key bes \major R1 | % 1
  R1 | % 2
  R1 | % 3
  \break R1 | % 4
  R1 | % 5
  R1 | % 6
  R1 | % 7
  \break  bes4  bes4  es,8 [  es8  es8  es8 ] | % 8
   f2.  d4 | % 9

  \barNumberCheck #10
   es4  c4  f4  f4 | % 10
   bes,2  bes2  | % 11
   bes'4  bes4  es,8 [  es8  es8  es8 ] | % 12
   f2.  d4 | % 13
   es4  c4  f4  f4 | % 14
   bes,2  bes2  \repeat volta 2 {
    | % 15
     bes'2  g2 | % 16
     c,2  f2 | % 17
     d2  g2 | % 18
     c2  f,2 \break | % 19

    \barNumberCheck #20
     bes,2  es4  c4 | % 20
     f4.  g8  a4  f4 | % 21
     es4  c4  f4  f4 | % 22
     bes,2  bes2 }
}

LyricsOne = \lyricmode {
  \set ignoreMelismata = ##t
  \set includeGraceNotes = ##t
  "1-Ding!" "Dong!" "Là" -- haut dans le "ciel," le ca -- ril -- lon des an --
  "ges," "1-en" cet -- te nuit de No -- "ël," chante "à" Dieu sa lou -- an --
  "ge:" Glo __ _ _ _ _ _ _ _ _ _ _ _ ri -- a Ho -- san -- na in ex -- cel -- "sis!"
}

LyricsTwo = \lyricmode {
  \set ignoreMelismata = ##t
  \set includeGraceNotes = ##t
  "2-Ber" -- "gers," quit -- tez vos trou -- "peaux," cou -- rez vite "à" "l'é"
  -- ta -- "ble!" "2-Of" -- frez vos plus beaux a -- gneaux "à" "l'En" -- fant
  tout ai -- ma -- "ble!"
}

LyricsThree = \lyricmode {
  \set ignoreMelismata = ##t
  \set includeGraceNotes = ##t
  "3-Il" est pauvre et si pe -- tit dans les bras de sa "mè" -- "re:" "3-Cest"
  le si -- gne que choi -- sit le Sei -- gneur de la ter -- "re!"
}

LyricsFour = \lyricmode {
  \set ignoreMelismata = ##t
  \set includeGraceNotes = ##t
  "4-Mê" -- lez fi -- fres et pi -- peaux au ca -- ril -- lon des an -- "ges!"
  "4-Ou" -- li -- ou -- li -- ou -- li -- "ho!" A Dieur tou -- te lou -- an --
  "ge!"
}

trompette = \relative bes' {
  \clef "treble" \numericTimeSignature \time 4/4 \key bes \major  bes4  bes4
   a2 | % 1
   bes4  bes4  a8 [  f'16  f16 ]  f8 [  f8 ] | % 2
   f8 [  f16  f16 ]  f8 [  f8 ]  es8 [  es16  es16 ]  es8 [ 
  es8 ] \break | % 3
   c8 [  c16  c16 ]  c8 [  c8 ]  f8 [  es8  d8  c8 ] | % 4
   g'8 [  f8  es8  d8 ]  c8 [  d8  es8  f8 ] | % 5
   d8 [  c8 ]  bes4  bes16 [  bes16  bes16  bes16 ]  bes4 ~ | % 6
  bes1 \break | % 7
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
     es4.  d8  c8 [  d8  es8  c8 ] \break | % 19

    \barNumberCheck #20
     d4.  c8  bes8 [  c8  d8  bes8 ] | % 20
     c4  bes4  a4  d8 [  c8 ] | % 21
     bes4  es8 [  d8 ]  c4  f8 [  es8 ] | % 22
     d8 [  d16  d16 ]  d8 [  d8 ]  d2 }
}

\score {
  \header {
    title = "LE CARILLON DES ANGES"
  }
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>

      \new Lyrics \lyricsto "soprano" {
        \LyricsOne
      }
      \new Lyrics \lyricsto "soprano" {
        \LyricsTwo
      }
      \new Lyrics \lyricsto "soprano" {
        \LyricsThree
      }
      \new Lyrics \lyricsto "soprano" {
        \LyricsFour
      }
        
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \new Staff \with {
      midiInstrument = "trumpet"
    } \trompette
  >>    
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4 = 120 }
}

