\version "2.26.0"
\include "composers.ily"
\include "settings.ily"

global = {
  \time 3/4
  \key f \major
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \autoBeamOff
}

PartPOneVoiceOne = \relative a {
  \global
  \markChanson "Refrain"
  R2. | % 1
  R2*8
  \break \markChanson "I. Tutti"
  R1*4
  \break \markChanson "II. Solo"
  a8 [ 
  a8  a8  b8 ]  c8 [  b8 ]  a4 | % 23
   f8 [  f8  e8  f8 ]  d4  d4 |
   d8 [  d8  f8  e8 ]  f8 [  g8 ]  a4 | % 25
   c8 [  c8  b8  c8 ]  a4  a4
  \break \markChanson "III. Solo"  d8 [
  d8  d8  e8 ]  f8 ( [  e8 ) ]  d4 |
   bes8 [  bes8  a8  bes8 ]  g4  g4 |\break
   g8 [  g8  bes!8  a8 ]  bes8 ( [  c8 ) ]  d4 |
   f8 [  f8  e8  f8 ]  d4  d4
  \break \markChanson "IV. Solo" a8 [
  a8  a8  b8 ]  c8 [  b8 ]  a4 | % 49

   f8 [  f8  e8  f8 ]  d4  d4 | % 50
   d8 [  d8  f8  e8 ]  f8 [  g8 ]  a4 | % 51
   c8 [  c8  b8  c8 ]  a4  a4
   \break \markChanson "Dernier refrain" R2. | % 53
  R2*8
  \break \clef treble
  d'4  d4  c4 | % 62
  d8 [  e8 ]  f4 | % 63
   f8  e4  d8 | % 64
   c4  c4 | % 65
   c4  d4 | % 66
   e4.  d8 | % 67
   c4  d8 [  e8~ ] | % 68
   e8 [  d8 ]  c4 | % 69

   d4 r4
}

PartPOneVoiceOneLyricsOne = \lyricmode {
  \set ignoreMelismata = ##t
  De -- us ho -- mo fac -- tus est na -- tu -- ra mi -- ran -- "te," Mun -- dus
  re -- no -- va -- tus est a Chris -- to re -- gnan -- "te." E -- ze -- ke --
  lis por -- \skip1 ta clau -- sa per -- tran -- si -- "tur," Un -- de lux est
  or -- \skip1 "ta," sa -- lus in -- ve -- ni -- tur. Er -- go nos -- tra con
  -- ti -- o psa -- lat jam in lus -- "tro," Be -- ne -- di -- cat Do -- mi --
  "no," sa -- lus re -- gi nos -- "tro." Gau -- de -- "te," Gau -- de -- "te,"
  Chris -- tus est na -- "tus," ex Ma -- ri -- a Vir -- gi -- ne __ \skip1 Gau
  -- de -- "te."
}

PartPTwoVoiceOne = \relative a' {
  \global
  \bar".|:" a4  a4  a4 | % 1
  \time 2/4
  a8 [  c8 ]  c4 | % 2
   c8  c4  a8 | % 3
   a4  a4 | % 4
   a4  a4 | % 5
   c4.  a8 | % 6
   a4  a8 [  c8 ~ ] | % 7
   8 [  a8 ]  a4 | % 8
   a4 r4
  \bar "||"
  
   \oneVoice \numericTimeSignature \time 4/4
  d8 [  d8  d8  e8 ]  f8 [  e8 ] 
  d4 | bes8 [  bes8  a8  bes8 ]  g4  g4 | % 11
   g8 [  g8  bes8  a8 ]  bes8 [  c8 ]  d4 | % 12
   f8 [  f8  e8  f8 ]  d4  d4\bar ":|." 
   
   \numericTimeSignature \time 4/4
  a2  g2 |  \noBreak
   a2  b2 | \noBreak
   b2  a2 |  \noBreak
   g2  a2 
  \bar ":|."  
  
  \numericTimeSignature \time 4/4
  \voiceOne r2 a8 [  a8  a8  a8 ] | % 36
  r2  b8 [  b8  b8  b8 ] | % 37
  r2  bes!8 [  bes8  bes8  bes8 ] | % 38
  r2  a8 [  a8  a8  a8 ]
  \bar ":|."
  
  \numericTimeSignature \time 4/4
   a2  g2 | % 49

   a2  b2 | % 50
   b2  a2 | % 51
   g2  a2 
   \bar ":|."  \time 3/4
   a4  a4  a4 | % 53
   \time 2/4
   a8 [  c8 ]  c4 | % 54
   c8  c4  a8 | % 55
   a4  a4 | % 56
   a4  a4 | % 57
   c4.  a8 | % 58
   a4  a8 [  c8~ ] | % 59

   c8 [  a8 ]  a4 | % 60
   a4 r4
   \bar "||"  \time 3/4 a4  a4  a4 | % 62
   \time 2/4
   a8 [  c8 ]  c4 | % 63
   c8  c4  a8 | % 64
   a4  a4 | % 65
   a4  a4 | % 66
   c4.  a8 | % 67
   a4  a8 [  c8~ ] | % 68
   c8 [  a8 ]  a4 | % 69

   a4 r4 \bar "|." 
}

PartPTwoVoiceOneLyricsOne = \lyricmode {
  \set ignoreMelismata = ##t
  \set includeGraceNotes = ##t
  Gau -- de -- "te," gau -- de -- "te," Chris -- tus est na -- tus ex Ma -- ri
  -- a Vir -- gi -- ne \skip1 gau -- de -- "te." Tem -- pus ad est gra -- ti
  -- ae hoc quod op -- ta -- ba -- "mus," Car -- mi -- na lae -- ti -- ti -- ae
  de -- vo -- te re -- da -- "mus."
  
  Ah __ _ _ _ Ah __ _ _ _
  
  E -- ze -- ke -- lis per tran -- si
  -- "tur." Lux est or -- ta in -- ve -- ni -- tur.
  
  Ah __ _ _ _ Ah __ _ _ _
  Gau -- de -- "te," gau -- de -- "te," Chris -- tus est na -- "tus," ex
  Ma -- ri -- a Vir -- gi -- ne \skip1 gau -- de -- "te." Gau -- de -- "te,"
  gau -- de -- "te," Chris -- tus est na -- "tus," ex Ma -- ri -- a Vir -- gi --
  ne \skip1 gau -- de -- "te."
}

PartPTwoVoiceTwo = \relative f' {
  \global  f4  f4  e4 | % 1
  f8 [  g8 ]  a4 | % 2
   a8  g4  f8 | % 3
   e4  e4 | % 4
   e4  f4 | % 5
   g4.  f8 | % 6
   e4  f8 [  g8~ ] | % 7
   8 [  f8 ]  e4 | % 8
   f4 r4
  s1*4
  
  
  f1 | % 23
  f1 | % 24
   g2  f2 | % 25
  e1 % 26
  
  
  r2  f8 [  f8  f8  f8 ] r2  g8 [  a8
   g8  g8 ] r2  d8 [  e8  f8  f8 ] r2  f8 [  f8  f8  e8 ]
  

  f1 | % 49
  f1 | % 50
   g2  f2 | % 51
  e1 
  f4  f4  e4 | % 53
   f8 [  g8 ]  a4 | % 54
   a8  g4  f8 | % 55
   e4  e4 | % 56
   e4  f4 | % 57
   g4.  f8 | % 58
   e4  f8 [  g8~ ] | % 59

   g8 [  f8 ]  e4 | % 60
   f4 r4
  f4  f4  e4 | % 62
  f8 [  g8 ]  a4 | % 63
   a8  g4  f8 | % 64
   e4  e4 | % 65
   e4  f4 | % 66
   g4.  f8 | % 67
   e4  f8 [  g8~ ] | % 68
   g8 [  f8 ]  e4 | % 69

   f4 r4
}

PartPThreeVoiceOne = \relative d' {
  \global d4  d4  c4 | % 1
  d8 [  e8 ]  f4 | % 2
   f8  e4  d8 | % 3
   c4  c4 | % 4
   c4  d4 | % 5
   e4.  d8 | % 6
   c4  d8 [  e8~ ] | % 7
   8 [  d8 ]  c4 | % 8
   d4 r4

  \oneVoice d8 [  d8  d8  e8 ]  f8 [  e8 ] 
  d4  % 10
   bes8 [  bes8  a8  bes8 ]  g4  g4 | % 11
   g8 [  g8  bes8  a8 ]  bes8 [  c8 ]  d4 | % 12
   f8 [  f8  e8  f8 ]  d4  d4
  
  \voiceOne d1 | % 23
  d1 | % 24
  d1 | % 25
   d2.  c4
  
  r2  d8 [  d8  d8  d8 ] | % 36
  r2   d8 [  d8  d8  d8 ] | % 37
  r2 f,8 [  g8  d'8  d8 ] | % 38
  r2  a8 [  b8  a8  b8 ]

  d1 | % 49
  d1 | % 50
  d1 | % 51
   d2.  c4
  d4  d4  c4 | % 53
  d8 [  e8 ]  f4 | % 54
   f8  e4  d8 | % 55
   c4  c4 | % 56
   c4  d4 | % 57
   e4.  d8 | % 58
   c4  d8 [  e8~ ] | % 59

   e8 [  d8 ]  c4 | % 60
   d4 r4
  d4  d4  c4 | % 62
  d8 [  e8 ]  f4 | % 63
   f8  e4  d8 | % 64
   c4  c4 | % 65
   c4  d4 | % 66
   e4.  d8 | % 67
   c4  d8 [  e8~ ] | % 68
   e8 [  d8 ]  c4 | % 69

   d4 r4
}

PartPThreeVoiceTwo = \relative d {
  \global  d4  d4  a4 | % 1
  d8 [  c8 ]  f4 | % 2
   f8  c4  d8 | % 3
   a4  a4 | % 4
   a4  d4 | % 5
   c4.  d8 | % 6
   a4  d8 [  c8~ ] | % 7
   8 [  d8 ]  a4 | % 8
   d4 r4
  s1*4
  
  d1 | % 23
   d2  g,2 | % 24
   g2  d'2 | % 25
   e2  a,2
  
  r2  d8 [  d8  d8  d8 ] r2  g,8 [ 
  g8  g8  g8 ] r2  bes8 [  bes8  bes8  bes8 ] r2  d8 [  d8  d8
   d8 ]

  
  d1 | % 49
   d2  g,2 | % 50
   g2  d'2 | % 51
   e2  a,2 d4  d4  a4 | % 53
  d8 [  c8 ]  f4 | % 54
   f8  c4  d8 | % 55
   a4  a4 | % 56
   a4  d4 | % 57
   c4.  d8 | % 58
   a4  d8 [  c8~ ] | % 59

   c8 [  d8 ]  a4 | % 60
   d4 r4
  d4  d4  a4 | % 62
  d8 [  c8 ]  f4 | % 63
   f8  c4  d8 | % 64
   a4  a4 | % 65
   a4  d4 | % 66
   c4.  d8 | % 67
   a4  d8 [  c8~ ] | % 68
   c8 [  d8 ]  a4 | % 69

   d4 r4
}

\tocItem \markup "Gaudete"
\score {
  \header {
    title = "GAUDETE"
    arranger = \markup{"Arrangement par" \kingsingers}
  }
  <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sl."
      shortInstrumentName = "Sl."
      \clef "treble_8"
    } <<
      \new Voice = "PartPOneVoiceOne" {
        \PartPOneVoiceOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "PartPOneVoiceOne"  \PartPOneVoiceOneLyricsOne
    >>
    \new ChoirStaff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Staff \with {
        \consists Merge_rests_engraver
        shortInstrumentName = \markup \center-column { "S." "A." }
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "PartPTwoVoiceOne" {
          \voiceOne \PartPTwoVoiceOne
        }
        \new Lyrics \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
        } \lyricsto "PartPTwoVoiceOne" \PartPTwoVoiceOneLyricsOne
        \new Voice = "PartPTwoVoiceTwo" {
          \voiceTwo \PartPTwoVoiceTwo
        }
        >>
      
      \new Staff \with {
        \consists Merge_rests_engraver
        shortInstrumentName = \markup \center-column { "T." "B." }
        instrumentName = \markup \center-column { "T." "B." }
        \clef bass
      } <<
        \new Voice = "PartPThreeVoiceOne" {
          \voiceOne \PartPThreeVoiceOne
        }
        \new Voice = "PartPThreeVoiceTwo" {
          \voiceTwo \PartPThreeVoiceTwo
        }
        >>
      >>
    >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4 = 120 }
}
