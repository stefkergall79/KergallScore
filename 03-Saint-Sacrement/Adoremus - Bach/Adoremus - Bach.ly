\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \time 2/4
  \key f \major
  \partial 4
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \autoBeamOff
}

PartPOneVoiceOne = \relative f' {
   \global
   f8   a8  | % 1
   c8 [  bes8   a8   g8 ] | % 2
   f4  c'8   c8  | % 3
   d2 | % 4
   c2 | % 5
   c4  d8   e8  | % 6
   f4  e8   e8  | % 7
   d8 [  f8   e8   d8 ] | % 8
   c2 | % 9

   a4  d8   d8  | % 10
   c4  bes8   a8  | % 11
   g2 | % 12
   f2 \bar "|." \break
   
  \oneVoice \cadenzaOn
  \markChanson "Psaume"
  f8  g8 [  a8  ] \bar "|" 
   a2  g8  a8  f4 \bar "||"
   a2 f8  g8 [  a8 ]  g8  f4
   \bar "|." \break \voiceOne
   a\breve \bar "|"
   c4 (  f,4 )  g2 \bar "||"
  bes\breve \bar "|"
   d4 (  g,4 )  a2 \bar "|."
}

PartPOneVoiceOneLyricsOne = \lyricmode {
  A -- do -- re -- mus in ae -- ter -- num
  sanc -- tis -- si -- mum sa -- cra -- men -- tum,
  sanc -- tis -- si -- mum sa -- cra -- men -- tum.
  \set stanza = "1."
  Lau -- da -- "te Dominum om" -- nes gen -- tes_:
  "laudate eum" om -- nes po -- puli.
  "Quoniam confirmata est super nos misericordia          " e -- jus_:
  "et veritas Domini manet in æ    -     " -- ter -- num.
}

PartPOneVoiceOneLyricsTwo = \strophemode 2 ##t 24 \lyricmode {
  Glo -- ri -- "a Patri," et Fi -- lio_:
  "et Spiri" -- tu -- i Sanc -- to.
  "Sicut erat in principio, et nunc et" sem -- per_:
  "et in saecula saeculorum." A --  men.
}

PartPOneVoiceTwo = \relative f' {
  \global
   \markChanson "Refrain"
   f8   f8  | % 1
   g4 ( c,4 ) | % 2
   d4  f8   f8  | % 3
   f2 | % 4
   f2 | % 5
   g4  a8   g8  | % 6
   f8 [  g8 ]  g8   g8  | % 7
   a4 ( g8 [  f8 ] ) | % 8
   e2 | % 9

   f4  f8   f8  | % 10
   f4  e8   f8  | % 11
   d4 ( e4 ) | % 12
   c2
  s8*21
  f\breve
   c4 (  d4 )  e2

  d\breve

  f4 (  e4 )  f2
}

PartPOneVoiceFive = \relative a {
  \global
  a8   c8  | % 1
   c4 ( f,8 [  g8 ] ) | % 2
   a4  c8   c8  | % 3
   bes2 | % 4
   a2 | % 5
   c4  a8   bes8  | % 6
   c8 [  d8 ]  c8   c8  | % 7
   c4 ( b4 ) | % 8
   c2 | % 9

   c4  bes8   bes8  | % 10
   c4  c8   c8  | % 11
   bes8 ( [  a8 ]  g4 ) | % 12
   a2
  \oneVoice  r4. 
  r1*2 r4
  \voiceOne c\breve 
   g4 (  a4 )  c2
   
  bes\breve

   a4 (  c4 )  c2
}

PartPOneVoiceSix = \relative f {
  \global
  f8   f8  | % 1
   e4 ( f8 [  e8 ] ) | % 2
   d4  a8   a8  | % 3
   bes8 [  c8   d8   e8 ] | % 4
   f2 | % 5
   e4  f8   g8  | % 6
   a8 [  b8 ]  c8   e,8  | % 7
   f8 ( [  e8 ]  g4 ) | % 8
   c,2 | % 9

   f4  bes8   bes8  | % 10
   a4  g8   f8  | % 11
   c2 | % 12
   f,2
  s8*21
  f'\breve
   e4 (  d4 )  c2

  g'\breve

   d4 (  c4 )  f2
}


\score {
  \header {
    title = "ADOREMUS"
    composer = \bach
  }
  <<
    \new ChoirStaff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Staff <<
        \new Voice = "PartPOneVoiceOne" {
          \voiceOne \PartPOneVoiceOne
        }
        \new Voice = "PartPOneVoiceTwo" {
          \voiceTwo \PartPOneVoiceTwo
        }
      >>
      \new Lyrics \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
          \override LyricText.self-alignment-X = #LEFT
        } \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        
        \new Lyrics \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
          \override LyricText.self-alignment-X = #LEFT
        } \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
      
      \new Staff \with {
        \clef bass
      } <<
        \new Voice = "PartPOneVoiceFive" {
          \voiceOne \PartPOneVoiceFive
        }
        \new Voice = "PartPOneVoiceSix" {
          \voiceTwo \PartPOneVoiceSix
        }
      >>
    >>
  >>
  \layout {\context { \Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4 = 80 }
}
