\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \time 4/4
  \key g \major
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \autoBeamOff
}

PartPOneVoiceOne = \relative b' {
  \oneVoice
   R1*2 b4. ^\mp  a8  d4  b4 | % 3
   g2  fis2 | % 4
   e4.  fis8  g4  e4 | % 5
  d1 | % 6
   g4.  g8  b4  g4 | % 7
   e'2  d2 | % 8
   b4  a4  d4.  g,8 | % 9

  c1 | % 10
   b4.  a8  d4  g,4 | % 11
   f4.  e8  e2 | % 12
   g2 (  c4 )  e,4 | % 13
  d1 | % 14
   g4.  a8  b4  g4 | % 15
   g4 (  a4 )  b4 (  c4 ) | % 16
  d1 ( | % 17
   d2. )  b4 | % 18
   g2. \bar "||"\break
  
  \voiceOne
  b4| % 20
   b4.  a8  d4  b4 | % 21
   g2  fis2 | % 22
   e4. (  fis8 )  g4  e4 | % 23
  d1 | % 24
   g4. ^\<  g8  b4  g4 <>\! | % 25
   e'4. ^\f  e8  d2 | % 26
   b4  a4  d4.  g,8 | % 27
  c1 | % 28
   b4.  a8  d4  g,4 | % 29

  
   f4. (  e8 )  e4  e4 | % 30
   g4.  g8  c4  e,4 | % 31
   d2.  d4 | % 32
   g4. (  a8 )  b4  g4 | % 33
   g4 (  a4 )  b4 (  c4 ) | % 34
  d1 ( ^\> | % 35
   d2. )  b4 | % 36
  g1 <>\!
  
  R1*19 \bar "||" \break
  \voiceOne  b2^\mp  d4  b4 | % 57
   g2  fis2 | % 58
   e2  g4  e4 | % 59

  d1 | % 60
   g4. ^\<  g8  b4  g4 <>\! | % 61
   e'2  d2 | % 62
   b4  a4  d4.  g,8 | % 63
  c1 | % 64
   b4.  a8  d4  g,4 | % 65
   f2  e2 | % 66
   g4.  g8  c4  e,4 | % 67
   d2.  d4 ^\mf | % 68
   g4.  a8  b4  g4 | % 69

   g4 (  a4 )  b4 (  c4 ) | % 70
   d2. ^\f ^\<  d4 <>\! | % 71
   g2 ( ^\>  d2 ) <>\! | % 72
  d1 ( ^\mp ^\> | % 73
   d2. )  b4 \! | % 74
  g1 ^\pp | % 75
  \oneVoice R1 | % 76
  R1 | % 77
  R1 \bar "|."
}

PartPOneVoiceOneLyricsOne = \lyricmode {
  In the bleak mid -- win -- ter fros -- ty wind made moan,
  earth stood hard as i -- ron, wa -- ter like a stone.
  Snow had fal -- len snow on snow snow on snow.
  In the bleak mid -- win -- ter long __ a -- go.
  Our God, Heav'n can -- not hold Him nor -- earth sus -- tain.
  Heav'n and earth shall flee a -- way when He comes to reign.
  In the bleak mid -- win -- ter a sta -- ble place suf -- ficed.
  The Lord God Al -- might -- y Je __ sus Christ.
  What can I give Him, poor as I am_?
  If I were a she -- pherd I would bring a lamb.
  If I were a wise man I would do my part.
  Yet what I can I give Him
  give my heart give __ my heart.
}

PartPOneVoiceTwo = \relative g' {
  \global
  s4*75
   g4| % 20
   g4.  g8  g4  fis4 | % 21
   e2  d2 | % 22
   c2  c4  a4 | % 23
   d2 (  c2 ) | % 24
   b4  d4  f4  g4 | % 25
   g4  a4  g4 (  fis4 ) | % 26
   g4  g4  g4.  d8 | % 27
   e2. (  d4 ) | % 28
   d4  c4  d4  c4 | % 29

   c4 (  d4 )  c4  c4 | % 30
   e4  d4  c4  c4 | % 31
   c2  a2 | % 32
   d4 (  e8 [  fis8 ) ]  g4  f4 | % 33
   e4 (  g4 )  g2 | % 34
   g4 ( fis4  g4  a4 | % 35
   b2. ) d,4 | % 36
  d1
  R1*19 % 56
   g2  b4  g4 | % 57
   e2  d2 | % 58
   c2  e4  c4 | % 59

   d2 (  c2 ) | % 60
   b4  d4  f4  g4 | % 61
   g4 (  a4 )  g4 (  fis!4 ) | % 62
   g4  g4  g4.  d8 | % 63
   e2. (  d4 ) | % 64
   d4  c4  d4  d4 | % 65
   c4 (  d4 )  c2 | % 66
   e4  d4  c4  c4 | % 67
   c2  a2 | % 68
   d4 (  e8 )  fis8  g4  f4 | % 69

   e4 (  g4 )  g2 | % 70
   g4 (  fis4  g4 )  a4 | % 71
   c4 (  b4  a4  g4 ) | % 72
   fis2 \=2(  g4  a4 | % 73
   b2. \=2)  d,4 | % 74
  d1 s1*3
}

PartPTwoVoiceOne = \relative b {
  \global \oneVoice R1*18
  r2 r4 
  
  \voiceOne  b4 | % 20
   b4.  c8  d4  c4 | % 21
   b2  b2 | % 22
   g2  g4  fis4 | % 23
   g2 (  fis2 ) | % 24
   g4  b4  d4  f4 | % 25
   e4  fis4  g4 (  d4 ) | % 26
   d4  c4  b4.  d8 | % 27
   c2 (  b4  a4 ) | % 28
   g4  g4  g4  b4 | % 29

   a4 (  g4 )  g4  g4 | % 30
   g4.  g8  e4  b'4 | % 31
   a2  fis2 | % 32
   g4 (  c4 )  b4  d4 | % 33
   c4 (  e4 )  d4 (  c4 ) | % 34
   b4 ( a4  b4  c4 | % 35
   d2. ) c4 | % 36
  b1
  \oneVoice \bar "||" \break
  R1 
  r2 r4 r8  b8 ^\mp | % 39

   b4.  a8  d4  b4 | % 40
   g4.  fis8  fis2 | % 41
   e4.  fis8  g4  e4 | % 42
   d2.  d4 | % 43
   g2 ^\<  b4  g4 <>\! | % 44
   e'2 ^\mf  d4  d4 | % 45
   b4  a4  d4.  g,8 | % 46
   c2. r8  b8 ^\p | % 47
   b4.  a8  d4  g,4 | % 48
   f2  e2 | % 49

   g2 ^\>  c4  e,4 <>\! | % 50
   d2.  d4 | % 51
   g4. ^\<  a8  b4  g4 <>\! | % 52
   g4  a4  b4  c4 | % 53
  d1 ( | % 54
   d4 ) r4 r2 | % 55
  R1 % 56
  \voiceOne  d2  d4  d4 | % 57
   b2  b2 | % 58
   g2  g4  g4 | % 59

   g2 (  fis2 ) | % 60
   g4  b4  d4  f4 | % 61
   e4 (  fis!4 )  g4 (  d4 ) | % 62
   d4  c4  b4.  d8 | % 63
   c2 (  b4  a4 ) | % 64
   g4  g4  g4  b4 | % 65
   a4 (  g4 )  g2 | % 66
   g4.  g8  e4  b'4 | % 67
   a2  fis2 | % 68
   g4  c4  b4  d4 | % 69

   c4 (  e4 )  d4 (  c4 ) | % 70
   b4 (  a4  b4 )  c4 | % 71
   e4 (  d4  c4  b4 ) | % 72
   a2 (  b4  c4 | % 73
   d2. )  c4 | % 74
  b1 | % 75
  \oneVoice R1*3
}

PartPTwoVoiceOneLyricsOne = \lyricmode {
  \repeat unfold 44 \skip1
  E -- nough for Him, whom che -- ru -- bim Wor -- ship night and day.
  A heart full of mirth and a man -- ger full of hay. E -- nough for
  Him, whom an -- gels fall down be -- fore.
  The ox and ass and ca -- mel which a -- dore. __
}

PartPTwoVoiceTwo = \relative e {
  \global
  s4*75
  e4 | % 20
   e4.  e8  b4  d4 | % 21
   e2  b2 | % 22
   c4. (  d8 )  e4  c4 | % 23
   b2 (  a2 ) | % 24
   g4.  g8  g'4  g4 | % 25
   c4.  c8  b4 (  a4 ) | % 26
   g4  e4  b4.  b'8 | % 27
   a2 (  g4  fis4 ) | % 28
   g4  e4  b4  g4 | % 29

   a4 (  b4 )  c4  c4 | % 30
   c4  b4  a4  g4 | % 31
   fis2  c'2 | % 32
   b4 (  a4 )  g4  g'4 | % 33
   c,4 (  c'4 )  b4 (  a4 ) | % 34
  d,1 ( | % 35
   d2 )  e4  fis4 | % 36
  g1
  s1*19 % 56
   g2  g4  g4 | % 57
   e2  b2 | % 58
   c2  c4  c4 | % 59

   b2 (  a2 ) | % 60
   g4.  g8  g'4  g4 | % 61
   c2  b4 (  a4 ) | % 62
   g4  e4  b4.  b'8 | % 63
   a2 (  g4  fis4 ) | % 64
   g4  e4  b4  g4 | % 65
   a4 (  b4 )  c2 | % 66
   c4  b4  a4  g4 | % 67
   fis2  c'2 | % 68
   b4  a4  g4  g'4 | % 69

   c,4 (  c'4 )  b4 (  a4 ) | % 70
   d,2.  d4 | % 71
  d1 | % 72
  d1 \=2( | % 73
   d2 \=2)  e4  fis4 | % 74
  g1 s1*3
}

PartPThreeVoiceOne = \relative d' {
  \global
  \oneVoice  <d
    b'>4 _\p  <e g>4  <fis d'>4  <d fis b>4 | % 1
   <b g'>4  <c e>4  <a fis'>4  <c d>4 | % 2
   <b g'>4  <c e>4  <a fis'>4  <c d>4 | % 3
  \voiceOne  g'2 \oneVoice  <d fis d'>2 | % 4
  \voiceOne  d'4  c2 \oneVoice  <fis, e'>4 | % 5
  \voiceOne  d'2  c2 | % 6
   <d, b'>4 _\<  <c a'>4 \oneVoice  <d g d'>4  <f b>4 <>\! | % 7
   <g e'>4 _\>  <a fis'>4  <g g'>4  <fis d'>4 <>\! | % 8
   <g b>4  <g a>4  <g d'>4.  <d g>8 ^( | % 9

  \voiceOne  g4 )  fis4  e4  d4 | % 10
  \oneVoice  <b d>4  <c e>4  <a c fis>4  <b d g>4 | % 11
   <c f c'>4  <d f d'>4  <g, c e>2 | % 12
  \voiceOne  e'4  d4  c4  <c e>4 | % 13
   <d c'>2  <d b'>4 _( \oneVoice  <d fis a>4 ) | % 14
  \voiceOne  d'4. _\<  c8 \oneVoice  <d, g b>4  <f g d'>4 <>\! | % 15
   <fis g'>4  <g e'>4 \voiceOne  d'4  c4 | % 16
  \oneVoice  <d, b'>4  <c a'>4  <d b'>4  <e c'>4 _\> | % 17
   <fis d'>4  <e c'>4  <c a'>4  <d b'>4 | % 18
   <b g'>2. <>\!
  
  r4 | % 20
  R1*17
   <d b'>4 _\p  <e g>4  <fis d'>4  <d fis b>4 | % 38
   <b g'>4  <c e>4  <a fis'>4  <c d>4 | % 39

   <b g'>4  <c e>4  <a fis'>4  <c d>4 | % 40
  \voiceOne  g'2 \oneVoice  <d fis d'>2 | % 41
  \voiceOne  d'4  c2 \oneVoice  <fis, e'>4 | % 42
  \voiceOne  d'2  c2 | % 43
   <d, b'>4 _\<  <c a'>4 \oneVoice  <d g d'>4  <f b>4 <>\! | % 44
   <g e'>4 _\>  <a fis'>4  <g g'>4  <fis d'>4 <>\! | % 45
   <g b>4  <g a>4  <g d'>4.  <d g>8 ^( | % 46
  \voiceOne  g4 )  fis4  e4  d4 | % 47
  \oneVoice  <b d>4  <c e>4  <a c fis>4  <b d g>4 | % 48
   <c f c'>4  <d f d'>4  <g, c e>2 | % 49

  \voiceOne  e'4  d4 \oneVoice  c4  <c e>4 | % 50
  \voiceOne  c'2  b4 <fis a>4 | % 51
   d'4. _\<  c8 \oneVoice  <d, g b>4  <f g d'>4 <>\! | % 52
   <e g'>4  <g e'>4 \voiceOne  d'4  c4 | % 53
  \oneVoice  <d, b'>4  <c a'>4  <d b'>4  <e c'>4 | % 54
   <fis d'>4 _\>  <e c'>4  <c a'>4  <d b'>4 <>\! | % 55
  <b g'>1 % 56
  R1*18
   <d b'>4 _\pp  <e g>4  <c fis d'>4  <d fis b>4 | % 75
   <b g'>4  <c e>4  <a fis'>4 _\>  <c d>4 | % 76
  <c e g>1 ( | % 77
  <b d g>1 )<>\!
}

PartPThreeVoiceTwo = \relative b {
  \global
   s1*3 | % 3
   b4  c4 s2 | % 4
   e4.  fis8  g4 s4 | % 5
   g4  d4  e4  fis4 | % 6
   g2 s2*5 | % 9

  c,1 s1*2 | % 12
   g2 r2 | % 13
   a'4  g2 s4 | % 14
   <d g>4  <d fis>4 s1  g2 s4*11
  s4*73
  s1*2 | % 40
   b,4  c4 s2 | % 41
   e4.  fis8  g4 s4 | % 42
   g4  d4  e4  fis4 | % 43
   g2 s2*5 | % 46
  c,1 s1*2 | % 49

   g2 s2 | % 50
  d'1 | % 51
   <d g>4  <d fis>4 s1  g2 s1*3
  s1*21
}

PartPThreeVoiceThree = \relative a' {
  \global
  s1*49
  \voiceTwo a4  g2
}

PartPThreeVoiceFive = \relative b {
  \global  b4  c4  a4 r4
  | % 1
  d,1 | % 2
  d1 ( | % 3
   d2 )  g2 | % 4
   g2. \oneVoice  <a c>4 | % 5
   b2  a2 | % 6
  \voiceOne r2  b4  d4 | % 7
   c4  d2 \oneVoice  <a c>4 | % 8
   <g d'>4  <e c'>4  <b b'>4.  b'8 \=2( | % 9

   b4 \=2)  a4  g4  fis4 | % 10
   <g, d'>2.  <g, g'>4 | % 11
  \voiceOne  a'4  b4 \oneVoice  <c, c'>2 | % 12
   c'4  b4 \voiceOne  e2 | % 13
  \oneVoice  fis,4  e'4  d4  c4 | % 14
   b4  a4  g4  <g' b>4 | % 15
   <c, c'>4  <c a'>4  <d b'>4  <e c'>4 | % 16
  d1 _( | % 17
  \voiceOne  d2 )  e4  fis4 | % 18
  \oneVoice  <g, d' g>2.
  r4| % 20
  R1*17
  \voiceOne  b'4  c4  a4 r4 | % 38
  s1 | % 39

  d,1 ( | % 40
   d2 )  g2 | % 41
   g2.  c4 | % 42
  \oneVoice  b2  a2 | % 43
  \voiceOne r2  b4  d4 | % 44
   c4  d2  c4 | % 45
  \oneVoice  <g d'>4  <e c'>4  <b b'>4.  b'8~ | % 46
   4  a4  g4  fis4 | % 47
   <g, d'>2.  <g, g'>4 | % 48
  \voiceOne  a'4  b4 \oneVoice  <c, c'>2 | % 49

   c'4  b4 \voiceOne  e2 | % 50
  \oneVoice  g,4  e'4  d4  c4 | % 51
   b4  a4  g4  <g' b>4 | % 52
   <c, c'>4  <c a'>4  <d b'>4  <e c'>4 | % 53
  d1~ | % 54
  \voiceOne  2  e4  fis4 | % 55
  \oneVoice <g, d' g>1 % 56
  R1*18
  d'1~1 | % 76
  g~1
}

PartPThreeVoiceSix = \relative g, {
  \global
  <g d'>1 | % 1
  g1 | % 2
  g1 | % 3
   g4  a4  b2 | % 4
   c4.  d8  e4 s4*5 | % 6
   g2.  g4 | % 7
   c2  b4 s4*13 | % 11
   g,,2 s1  a'4  g4 s1*4 | % 17
  d'1 s2.
  s4*69 % 37
  <g, d'>1 ( | % 38
  <g d'>1 ) | % 39

  g1 \=2( | % 40
   g4 \=2)  a4  b2 | % 41
   c4.  d8  e4  a4 s1 | % 43
   g2.  g4 | % 44
   c2  b4  a4 s1*3 | % 48
   g,,2 s1  a'4  g4 s1*4 d' |
  R1*16 g,1~1 1~1
}

\tocItemComposer "In the bleak mid-winter" "Darke"
\score {
  \header {
    title = "IN THE BLEAK MID-WINTER"
    composer = \darke
  }
  <<
    \new ChoirStaff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Staff \with{
        \consists Merge_rests_engraver
        shortInstrumentName = \markup \center-column { "S." "A." }
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "PartPOneVoiceOne" {
          \voiceOne \PartPOneVoiceOne
        }
        \new Lyrics \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
        } \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        \new Voice = "PartPOneVoiceTwo" {
          \voiceTwo \PartPOneVoiceTwo
        }
      >>
      \new Staff \with{
        \consists Merge_rests_engraver
        shortInstrumentName = \markup \center-column { "T." "B." }
        instrumentName = \markup \center-column { "T." "B." }
        \clef bass
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
    >>
    \new PianoStaff \with {
      instrumentName = "Org."
      shortInstrumentName = "Org."
      midiInstrument = "church organ"
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.3
    } <<
      \new Staff \with{
        \consists Merge_rests_engraver
      } <<
         \new Voice = "PartPThreeVoiceOne" {
          \voiceOne \PartPThreeVoiceOne
        }
        \new Voice = "PartPThreeVoiceTwo" {
          \voiceTwo \PartPThreeVoiceTwo
        }
        \new Voice = "PartPThreeVoiceThree" {
          \voiceThree \PartPThreeVoiceThree
        }
      >>
      \new Staff \with{
        \consists Merge_rests_engraver
        \clef bass
      } <<
        \new Voice = "PartPThreeVoiceFive" {
          \voiceOne \PartPThreeVoiceFive
        }
        \new Voice = "PartPThreeVoiceSix" {
          \voiceTwo \PartPThreeVoiceSix
        }
      >>
    >>
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4 = 80 }
}

