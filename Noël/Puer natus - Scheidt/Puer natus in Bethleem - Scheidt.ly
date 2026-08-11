\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

#(set-global-staff-size 19.4 )

global = {
   \time 6/4
   \key f \major
   \autoBeamOff
   \mergeDifferentlyDottedOn
   \mergeDifferentlyHeadedOn
}

PartPOneVoiceOne = \relative g' {
  \global r2  g4  bes2  c4 | % 1
   d2  e!4  f2  e4 | % 2
   d2  d4  c8( [  d8 ]  es4 ) d4 | % 3
   c2  g4  g8 ( [  a8 ]  bes4 ) a4 | \break
   g2 r4 r2. | % 5
  R1. | % 6
  R1. | % 7
  r2. r2  fis4 | % 8
   g8 ( [  a8 ]  bes4 ) a4  g2 r4 | % 9

  r2. r2  g4 | % 10
   d'2  c4  bes2  d4 | % 11
   c2  bes4  a2  f4 | % 12
   g8 ( [  a8 ]  bes4 ) a4  bes2 r4 | % 13
  R1. | % 14
  R1. | 
  r2  f4  g8 ( [  a8 ]  bes4 ) a4 | % 16
   bes2 r4 r2  a4 | % 17
   bes8 ( [  c8 ]  d4 ) cis4  d2 r4 | % 18
  R1. \bar "|."
}

PartPOneVoiceOneLyricsOne = \strophemode 1 ##f \lyricmode {
  Pu -- er na -- tus in Be -- thle -- "em,"
  al -- le -- lu -- ia, al -- le -- lu -- ia. al -- le -- lu -- ia.
  Un -- de gau -- det Je -- ru -- sa -- "lem,"
  al -- le -- lu -- ia, al -- le -- lu -- ia. al -- le -- lu -- ia.
}

PartPOneVoiceOneLyricsTwo = \strophemode 2 ##t \lyricmode {
  Et an -- ge -- lus pas -- to -- ri -- "bus,"
  \repeat unfold 12 \skip1
  Qui re -- gnat si -- ne ter -- mi -- "no,"
}

PartPOneVoiceOneLyricsThree = \strophemode 3 ##f \lyricmode {
  Hic ja -- cet in prae -- se -- pi -- "o,"
  \repeat unfold 12 \skip1
  Re -- ve -- lat quod sit Do -- mi -- "nus,"
}

PartPTwoVoiceOne = \relative g' {
  \global \oneVoice R1. | % 1
  R1. | % 2
  R1. | % 3
  R1. | % 4
  r2  \voiceOne  g4  bes2  c4 | % 5
   d2  e!4  f2  e4 | % 6
   d2  d4  c8 ( [  d8 ]  es4 ) d4 | % 7
   c2  g4  g8 ( [  a8 ]  bes4 ) a4 | % 8
   g2 \oneVoice r4 r2 \voiceOne  bes4 | % 9

  \barNumberCheck #10
   a8 [  bes8  c8  bes8 ]  a4  b2 \oneVoice r4 | % 10
  R1. | % 11
  R1. | % 12
  r2. r2 \voiceOne  bes4 | % 13
   d2  c4  bes2  d4 | % 14
   c2  bes4  a2  f4 |\break
   g8 ( [  a8 ]  bes4 ) a4  bes2 \oneVoice r4 | % 16
  r2 \voiceOne  a4  bes8 ( [  c8 ]  d4 ) cis4 | % 17
   d2 \oneVoice r4 r2 \voiceOne  d4 | % 18
   d2  d4  d2. \bar "|."
}

PartPTwoVoiceOneLyricsOne = \strophemode 1 ##f \lyricmode {
  Pu -- er na -- tus in Be -- thle -- "em,"
  al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
  Un -- de gau -- det Je -- ru -- sa -- lem,
  al -- le -- lu -- ia, al -- le -- lu -- "ia," al -- le -- lu -- ia.
}

PartPTwoVoiceOneLyricsTwo = \strophemode 2 ##t \lyricmode {
  Et an -- ge -- lus pas -- to -- ri -- bus,
  \repeat unfold 12 \skip1
  Qui re -- gnat si -- ne ter -- mi -- no,
}

PartPTwoVoiceOneLyricsThree = \strophemode 3 ##f \lyricmode {
  Hic ja -- cet in prae -- se -- pi -- o,
  \repeat unfold 12 \skip1
  Re -- ve -- lat quod sit Do -- mi -- nus,
}

PartPTwoVoiceTwo = \relative d' {
  \global s2*13  d4  d2  g4 | % 5
   fis2  a4  a2  a4 | % 6
   fis2  g4  g2  g4 | % 7
   es2  es4  g4  d4  d4 | % 8
   d2 s2.  g4 | % 9

  \barNumberCheck #10
   fis8 [  g8  a8  g8 ]  fis4  g2 s2*9  f4 | % 13
   bes2  a4  g2  f4 | % 14
   f2  d4  d2  d4 | % 15
   bes2  c4  d2 s2.  fis4  g2  e4 | % 17
   d2 s2.  g4 | % 18
   fis8 [  g8  a8  g8 ]  fis4  g2. \bar "|."
}

PartPThreeVoiceOne = \relative bes {
  \global \oneVoice R1. | % 1
  R1. | % 2
  R1. | % 3
  R1. | % 4
  r2 \voiceOne  bes4  g2  g4 | % 5
   a2  a4  a2  cis4 | % 6
   d2  bes4  g2  b4 | % 7
   c2  c4  d2  d4 | % 8
   bes2 \oneVoice r4 r2 \voiceOne  d4 | % 9

  \barNumberCheck #10
   d2  d4  d2 \oneVoice r4 | % 10
  R1. | % 11
  R1. | % 12
  r2. r2 \voiceOne  d4 | % 13
   f2  f4  d2  bes4 | % 14
   a2  g4  f2  a4 | % 15
   g4 ( d'4 ) c4  bes2 \oneVoice r4 | % 16
  r2 \voiceOne  d4 d4 ( bes4 ) a4 | % 17
   f!2 \oneVoice r4 r2 \voiceOne  bes4 | % 18
   a8 [  bes8  c8  bes8 ]  a4  bes2. \bar "|."
}

PartPThreeVoiceTwo = \relative g {
  \global s2*13  g4  g2  es4 | % 5
   d2  cis4  d2  a4 | % 6
   d2  g4  es4 ( c4 ) g4 | % 7
   c2  c4  bes4 ( g4 ) d'4 | % 8
   g,2 s2.  g4 | % 9

  \barNumberCheck #10
   d'2  d4  g,2 s2*9  bes4 | % 13
   bes2  f4  g2  bes4 | % 14
   f2  g4  d'2  d4 | % 15
   es4 ( c4 ) f4  bes,2 s2.  d4  g,2  a4 | % 17
   d2 s2.  g,4 | % 18
   d'2  d4  g,2. \bar "|."
}


\tocItemComposer "Puer natus" "Scheidt"
\score {
  \header {
    title = "PUER NATUS IN BETHLEEM"
    composer = \scheidt
  }
  <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Solo"
    } <<
      \new Voice = "PartPOneVoiceOne" {
          \PartPOneVoiceOne
        }
        \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "PartPOneVoiceOne" {
          \PartPOneVoiceOneLyricsOne
        }
        \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "PartPOneVoiceOne" {
          \PartPOneVoiceOneLyricsTwo
        }
        \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "PartPOneVoiceOne" {
          \PartPOneVoiceOneLyricsThree
        }
    >>
    \new ChoirStaff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Staff <<
        \new Voice = "PartPTwoVoiceOne" {
            \voiceOne \PartPTwoVoiceOne
          }
          \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "PartPTwoVoiceOne" {
            \PartPTwoVoiceOneLyricsOne
          }
          \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "PartPTwoVoiceOne" {
            \PartPTwoVoiceOneLyricsTwo
          }
          \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "PartPTwoVoiceOne" {
            \PartPTwoVoiceOneLyricsThree
          }
          \new Voice = "PartPTwoVoiceTwo" {
            \voiceTwo \PartPTwoVoiceTwo
          }
        >>
      \new Staff \with {
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
  \layout {\context{\Staff \RemoveAllEmptyStaves}}
  \midi { \tempo 4 = 180 }
}

\markup \couplets-markup #4 #3 {
  \column {
    "Reges de Saba veniunt..."
    "Aurum, ths, myrrham offerunt..."
  }
  \column {
    "In hoc natali gaudio..."
    "Novum salutant Principem..."
  }
  \column {
    "Laudetur Sancta Trinitas..."
    "Benedicamus Domino..."
  }
}