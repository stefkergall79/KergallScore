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
  \markChanson "Refrain 1"
  R2. | % 1
  R2*8
  \break \markChanson "Verset 1 tutti"
  R1*4
  \break \markChanson "Refrain 2"
  R2. | % 14
  R2*8
  \break \markChanson "Verset 2 solo"
  a8 [ 
  a8  a8  b8 ]  c8 [  b8 ]  a4 | % 23
   f8 [  f8  e8  f8 ]  d4  d4 | % 24
   d8 [  d8  f8  e8 ]  f8 [  g8 ]  a4 | % 25
   c8 [  c8  b8  c8 ]  a4  a4
  \break \markChanson "Refrain 3"
  R2. | % 27
 R2*8
  \break \markChanson "Verset 4 solo"  d8 [
  d8  d8  e8 ]  f8 ( [  e8 ) ]  d4 | 
   bes8 [  bes8  a8  bes8 ]  g4  g4 | 
   g8 [  g8  bes!8  a8 ]  bes8 ( [  c8 ) ]  d4 | 
   f8 [  f8  e8  f8 ]  d4  d4
  \break \markChanson "Refrain 4" R2. | % 40
  R2*8
  \break \markChanson "Verset 5 solo" a8 [
  a8  a8  b8 ]  c8 [  b8 ]  a4 | % 49

   f8 [  f8  e8  f8 ]  d4  d4 | % 50
   d8 [  d8  f8  e8 ]  f8 [  g8 ]  a4 | % 51
   c8 [  c8  b8  c8 ]  a4  a4
   \break \markChanson "Refrain 5" R2. | % 53
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
  a4  a4  a4 | % 1
  \time 2/4
  a8 [  c8 ]  c4 | % 2
   c8  c4  a8 | % 3
   a4  a4 | % 4
   a4  a4 | % 5
   c4.  a8 | % 6
   a4  a8 [  c8 ~ ] | % 7
   8 [  a8 ]  a4 | % 8
   a4 \oneVoice r4
  \bar "|." \numericTimeSignature \time 4/4
  d8 [  d8  d8  e8 ]  f8 [  e8 ] 
  d4 | bes8 [  bes8  a8  bes8 ]  g4  g4 | % 11
   g8 [  g8  bes8  a8 ]  bes8 [  c8 ]  d4 | % 12
   f8 [  f8  e8  f8 ]  d4  d4\bar "|." 
   \time 3/4
   \voiceOne  a4  a4  a4 |\time 2/4
  a8 [  c8 ]  c4 | % 15
   c8  c4 a8 | % 16
   a4  a4 | % 17
   a4  a4 | % 18
   c4.  a8 | % 19

   a4  a8 [  c8~  ] | % 20
   c8 [  a8 ]  a4 | % 21
   a4 \oneVoice r4
  \voiceOne  
  \bar "|." \numericTimeSignature \time 4/4
  a2  g2 | % 23
   a2  b2 | % 24
   b2  a2 | % 25
   g2  a2 
  \bar "|."  \time 3/4
   a4  a4  a4 | % 27
  \time 2/4
  a8 [  c8 ]  c4 | % 28
   c8  c4  a8 | % 29

   a4  a4 | % 30
   a4  a4 | % 31
   c4.  a8 | % 32
   a4  a8 [  c8~ ] | % 33
   c8 [  a8 ]  a4 | % 34
   a4 \oneVoice r4 
  \bar "|."  \numericTimeSignature \time 4/4
   r2 \voiceOne  a8 [  a8  a8  a8 ] | % 36
  \oneVoice r2 \voiceOne  b8 [  b8  b8  b8 ] | % 37
  \oneVoice r2 \voiceOne  bes!8 [  bes8  bes8  bes8 ] | % 38
  \oneVoice r2 \voiceOne  a8 [  a8  a8  a8 ]
  \bar "|."  \time 3/4
  a4  a4  a4 | % 40
  \time 2/4
  a8 [  c8 ]  c4 | % 41
   c8  c4  a8 | % 42
   a4  a4 | % 43
   a4  a4 | % 44
   c4.  a8 | % 45
   a4  a8 [  c8 ( ] | % 46
   c8 ) [  a8 ]  a4 | % 47
   a4 \oneVoice r4
   \voiceOne  
   \bar "|."  \numericTimeSignature \time 4/4
   a2  g2 | % 49

   a2  b2 | % 50
   b2  a2 | % 51
   g2  a2 
   \bar "|."  \time 3/4
   a4  a4  a4 | % 53
   \time 2/4
   a8 [  c8 ]  c4 | % 54
   c8  c4  a8 | % 55
   a4  a4 | % 56
   a4  a4 | % 57
   c4.  a8 | % 58
   a4  a8 [  c8~ ] | % 59

   c8 [  a8 ]  a4 | % 60
   a4 \oneVoice r4
   \voiceOne \bar "||"  \time 3/4 a4  a4  a4 | % 62
   \time 2/4
   a8 [  c8 ]  c4 | % 63
   c8  c4  a8 | % 64
   a4  a4 | % 65
   a4  a4 | % 66
   c4.  a8 | % 67
   a4  a8 [  c8~ ] | % 68
   c8 [  a8 ]  a4 | % 69

   a4 \oneVoice r4 \bar "|." 
}

PartPTwoVoiceOneLyricsOne = \lyricmode {
  \set ignoreMelismata = ##t
  \set includeGraceNotes = ##t
  Gau -- de -- "te," gau -- de -- "te," Chris -- tus est na -- tus ex Ma -- ri
  -- a Vir -- gi -- ne \skip1 gau -- de -- "te." Tem -- pus ad est gra -- ti
  -- ae hoc quod op -- ta -- ba -- "mus," Car -- mi -- na lae -- ti -- ti -- ae
  de -- vo -- te re -- da -- "mus." Gau -- de -- "te," gau -- de -- "te," Chris
  -- tus est na -- "tus," ex Ma -- ri -- a Vir -- gi -- ne \skip1 gau
  -- de -- "te." Ah __ _ _ _ Ah __ _ _ _ Gau -- de
  -- "te," gau -- de -- "te," Chris -- tus est na -- "tus," ex Ma -- ri -- a Vir
  -- gi -- ne \skip1 gau -- de -- "te." E -- ze -- ke -- lis per tran -- si
  -- "tur." Lux est or -- ta in -- ve -- ni -- tur. Gau -- de -- "te," gau --
  de -- "te," Chris -- tus est na -- "tus," ex Ma -- ri -- a Vir -- gi -- ne
  \skip1 gau -- de -- "te." Ah __ _ _ _ Ah __ _ _ _
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
   f4 s4
  s1*4
  f4  f4  e4 | % 14
  f8 [  g8 ]  a4 | % 15
   a8 g4 f8 | % 16
   e4  e4 | % 17
   e4  f4 | % 18
   g4.  f8 | % 19

   e4  f8 [  g8~ ] | % 20
   g8 [  f8 ]  e4 | % 21
   f4 s4
  f1 | % 23
  f1 | % 24
   g2  f2 | % 25
  e1 % 26
  f4  f4  e4 | % 27
  f8 [  g8 ]  a4 | % 28
   a8  g4  f8 | % 29

   e4  e4 | % 30
   e4  f4 | % 31
   g4.  f8 | % 32
   e4  f8 [  g8~ ] | % 33
   g8 [  f8 ]  e4 | % 34
   f4 s4 % 35
  s2  f8 [  f8  f8  f8 ] s2  g8 [  a8
   g8  g8 ] s2  d8 [  e8  f8  f8 ] s2  f8 [  f8  f8  e8 ]
  

  f4  f4  e4 | % 40
  f8 [  g8 ]  a4 | % 41
   a8  g4  f8 | % 42
   e4  e4 | % 43
   e4  f4 | % 44
   g4.  f8 | % 45
   e4  f8 [  g8 \=2( ] | % 46
   g8 \=2) [  f8 ]  e4 | % 47
   f4 s4 
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
   f4 s4
  f4  f4  e4 | % 62
  f8 [  g8 ]  a4 | % 63
   a8  g4  f8 | % 64
   e4  e4 | % 65
   e4  f4 | % 66
   g4.  f8 | % 67
   e4  f8 [  g8~ ] | % 68
   g8 [  f8 ]  e4 | % 69

   f4 s4
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
   d4 \oneVoice r4

  d8 [  d8  d8  e8 ]  f8 [  e8 ] 
  d4  % 10
   bes8 [  bes8  a8  bes8 ]  g4  g4 | % 11
   g8 [  g8  bes8  a8 ]  bes8 [  c8 ]  d4 | % 12
   f8 [  f8  e8  f8 ]  d4  d4
  \voiceOne  d4  d4  c4 | % 14
  d8 [  e8 ]  f4 | % 15
   f8 e4 d8 | % 16
   c4  c4 | % 17
   c4  d4 | % 18
   e4.  d8 | % 19

   c4  d8 [  e8~ ] | % 20
   e8 [  d8 ]  c4 | % 21
   d4 \oneVoice r4
  \voiceOne d1 | % 23
  d1 | % 24
  d1 | % 25
   d2.  c4
  d4  d4  c4 | % 27
  d8 [  e8 ]  f4 | % 28
   f8  e4  d8 | % 29

   c4  c4 | % 30
   c4  d4 | % 31
   e4.  d8 | % 32
   c4  d8 [  e8~ ] | % 33
   e8 [  d8 ]  c4 | % 34
   d4 \oneVoice r4
  r2 \voiceOne  d8 [  d8  d8  d8 ] | % 36
  \oneVoice r2 \voiceOne  d8 [  d8  d8  d8 ] | % 37
  \oneVoice r2 \voiceOne  f,8 [  g8  d'8  d8 ] | % 38
  \oneVoice r2 \voiceOne  a8 [  b8  a8  b8 ]

  d4  d4  c4 | % 40
  d8 [  e8 ]  f4 | % 41
   f8  e4  d8 | % 42
   c4  c4 | % 43
   c4  d4 | % 44
   e4.  d8 | % 45
   c4  d8 [  e8 ( ] | % 46
   e8 ) [  d8 ]  c4 | % 47
   d4 \oneVoice r4
  \voiceOne d1 | % 49

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
   d4 \oneVoice r4
  \voiceOne  d4  d4  c4 | % 62
  d8 [  e8 ]  f4 | % 63
   f8  e4  d8 | % 64
   c4  c4 | % 65
   c4  d4 | % 66
   e4.  d8 | % 67
   c4  d8 [  e8~ ] | % 68
   e8 [  d8 ]  c4 | % 69

   d4 \oneVoice r4
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
   d4 s4
  s1*4
  d4  d4  a4 | % 14
  d8 [  c8 ]  f4 | % 15
   f8 c4 d8 | % 16
   a4  a4 | % 17
   a4  d4 | % 18
   c4.  d8 | % 19

   a4  d8 [  c8~ ] | % 20
   c8 [  d8 ]  a4 | % 21
   d4 s4
  d1 | % 23
   d2  g,2 | % 24
   g2  d'2 | % 25
   e2  a,2
  d4  d4  a4 | % 27
  d8 [  c8 ]  f4 | % 28
   f8  c4  d8 | % 29

   a4  a4 | % 30
   a4  d4 | % 31
   c4.  d8 | % 32
   a4  d8 [  c8~ ] | % 33
   c8 [  d8 ]  a4 | % 34
   d4 s4 
  s2  d8 [  d8  d8  d8 ] s2  g,8 [ 
  g8  g8  g8 ] s2  bes8 [  bes8  bes8  bes8 ] s2  d8 [  d8  d8
   d8 ]

  d4  d4  a4 | % 40
  d8 [  c8 ]  f4 | % 41
   f8  c4  d8 | % 42
   a4  a4 | % 43
   a4  d4 | % 44
   c4.  d8 | % 45
   a4  d8 [  c8 \=2( ] | % 46
   c8 \=2) [  d8 ]  a4 | % 47
   d4 s4 d1 | % 49

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
   d4 s4
  d4  d4  a4 | % 62
  d8 [  c8 ]  f4 | % 63
   f8  c4  d8 | % 64
   a4  a4 | % 65
   a4  d4 | % 66
   c4.  d8 | % 67
   a4  d8 [  c8~ ] | % 68
   c8 [  d8 ]  a4 | % 69

   d4 s4
}

\paper {
  system-count = 12
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

\markup \column {
  \line {
    \bold "R."
    "Réjouissez-vous, le Christ est né. "
  }
  \vspace #0.5
  \line {
    \bold "1."
    \column {
      "Le temps de la grâce est venue que nous avions espéré."
      "Nous chantons sans cesse dévotement des chants de joie."
  }}
  \vspace #0.5
  \line {
    \bold "2."
    \column{
      "Dieu s'est fait homme, la nature s'émerveille."
      "Le monde se renouvelle par le règne du Christ."
  }}  
  \vspace #0.5
  \line {
    \bold "3."
    \column{
      "La porte fermée d'Ezéchiel a été traversée."
      "D'où la lumière est apparue se trouve le Salut."
  }}  
  \vspace #0.5
  \line {
    \bold "4."
    \column{
      "Que notre assemblée chante donc avec éclat."
      "Louons le Seigneur, saluons notre Roi."
  }}  
}