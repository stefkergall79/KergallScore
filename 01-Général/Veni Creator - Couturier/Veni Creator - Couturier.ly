\version "2.26.0"
\include "composers.ily"
\include "settings.ily"

global = {
  \key bes \major
  \autoBeamOff
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
}

PartPOneVoiceOne = \relative f' {
  \global
  \cadenzaOn
  f8  g8   f8 [  es8 ]  f8 
  g8 [  f8 ]   bes8  c8  bes4 \bar "|"
   bes8  f8   g8  bes8  c8 [  bes8 ]   c8  d8 
  c4\bar "|"
   bes8  c8 [  d8 ]   bes8 [  a8 ]  g8 [  f8 ]  bes8 [
   c8 ]   f,8  g8  bes4\bar "|"
   a8 [  bes8 ]   g8  f8 [  es8 ]  g8  g8 [  a8  g8 ]
    f8  es8  f4 \bar "||" \break
  \cadenzaOff
  \time 3/4  f4  g4  f4 | % 5
   bes2  bes4 | % 6
   c2  bes8 [  a8 ] | % 7
   bes2. | % 8
   bes4  a4  bes4 | % 9

   c2  c4 | % 10
   d4 (  bes4 )  c4 | % 11
   c2. | % 12
   bes4  c4  d4 | % 13
   es2  d4 | % 14
   c2  c4 | % 15
   bes2. | % 16
   c4  g4  a4 | % 17
   bes2  a4 | % 18
   g2  g4 | % 19

   f2. \bar "||" % 20
   f2 (  e4 ) | % 21
   f2. \bar "|."
}

PartPOneVoiceOneLyricsOne = \strophemode 1 ##f \lyricmode {
  Ve -- ni Cre -- á -- tor Spí -- ri -- tus,
  Men -- tes tu -- ó -- rum ví -- si -- ta_:
  Im -- ple su -- pér -- na grá -- ti -- a,
  Quæ tu cre -- á -- sti péc -- to -- ra.
  
  \set stanza = "2."
  Qui dí -- ce -- ris Pa -- rá -- cli -- tus,
  Al -- tís -- si -- mi do -- num De -- i, 
  Fons vi -- vus, i -- gnis, cá -- ri -- tas,
  Et spi -- ri -- tá -- lis ún -- cti -- o.
}

PartPOneVoiceOneLyricsTwo = \strophemode 3 ##t \lyricmode {
  Tu se -- pti --  fór -- mis  mú --  ne -- re,
  Dí -- gitus pa -- tér -- næ  déx -- te -- ræ,
  Tu ri --  te pro --  mís -- sum Pa -- tris,
  Ser --  mó -- ne  di -- tans   gút -- tu -- ra.
  
  \set stanza = \markup \italic "4."
  Ac -- cén -- de lu -- men sén -- si --  bus, 
  In -- fund(e) a -- mó -- rem cór --  di -- bus,
  In -- fír -- ma no -- stri cór -- po -- ris
  Vir -- tú -- te fir -- mans pér -- pe -- ti.   
}

PartPOneVoiceOneLyricsThree = \strophemode 5 ##f \lyricmode {
  Hos -- tem re -- pél -- las lón -- gi -- us,
  Pa -- cém -- que do -- nes pró -- ti -- nus_:
  Duc -- tó -- re sic te praé -- vi -- o,
  Vi -- té -- mus om -- ne nó -- xi -- um.
  
  \set stanza = "6."
  Per te sci -- á -- mus da Pa -- trem,
  No -- scá -- mus at -- que Fí -- li -- um,
  Tequ(e) u -- tri -- us -- que Spí -- ri -- tum
  Cre -- dá -- mus om -- ni tém -- po -- re.
}

PartPOneVoiceOneLyricsFour = \strophemode 7 ##t 32 \lyricmode {
  De -- o Pa -- tri sit gló -- ri -- a,
  Et Fí -- li -- o qu(i)_a mór --  tu -- is,
  Sur -- ré -- xit ac Pa -- rá -- cli -- to,
  In sæ -- cu -- ló -- rum saé -- cu -- la.
  \markup \bold A -- \markup \bold men.
}

PartPTwoVoiceOne = \relative d' {
  \global
  s1
  s4 s8 % 1
  s1 % 1
  s4 % 2
  s1 % 2
  s2 s8 % 3
  s1 % 3
  s2 s8 
  d4  es4  es4 | % 5
   d2  g4 | % 6
   g2  f4 | % 7
   f2. | % 8
   f4  f4  f4 | % 9

   f2  f4 | % 10
   f4 (  g4 )  g4 | % 11
   f2. | % 12
   f4  f4  f4 | % 13
   es4 ( f4 ) g4 | % 14
   g4. (  bes8 )  a4 | % 15
   g2. | % 16
   es4  es4  es4 | % 17
   f4 ( e4 ) f4 | % 18
   f2  e4 | % 19

   c2. 
   d4 (  c2 ) | % 21
   c2. 
}

PartPThreeVoiceOne = \relative bes {
  \global
  r1 r4 r8
  r1 % 1
  r4 % 2
  r1 % 2
  r2 r8 % 3
  r1 % 3
  r2 r8
  bes4  bes4  bes4 | % 5
   bes2  d4 | % 6
   es4. (  d8 )  c4 | % 7
   d2. | % 8
   d4  es4  d4 | % 9

   c4 (  bes4 )  a4 | % 10
   bes4 (  d4 )  c8 [  bes8 ] | % 11
   a2. | % 12
   d4  c4  bes4 | % 13
   bes2  b4 | % 14
   c8 ( [  d8 ]  es4 )  es4 | % 15
   d2. | % 16
   c4  c4  c4 | % 17
   bes2  c4 | % 18
   d2  c8 [  bes8 ] | % 19

   a2.
   bes8 ( [  a8 ]  g2 ) | % 21
   a2.
}

PartPFourVoiceOne = \relative bes {
  \global
  r1
  r4 r8 % 1
  r1 % 1
  r4 % 2
  r1 % 2
  r2 r8 % 3
  r1 % 3
  r2 r8
  bes4  bes4  bes4 | % 5
   bes4. (  a8 )  g8 [  f8 ] | % 6
   es2  f4 | % 7
   bes,2. | % 8
   bes'4  c4  bes4 | % 9

   a4 (  g4 )  f8 [  es8 ] | % 10
   d4 (  g8 [  f8 ) ]  e4 | % 11
   f2. | % 12
   bes4  bes4  as4 | % 13
   g2  g8 [  f8 ] | % 14
   es2  f4 | % 15
   g2. | % 16
   c,4  c4  c4 | % 17
   d4 (  g4 )  f4 | % 18
   bes,2  c4 | % 19

  f2.
   bes,4 (  c2 ) | % 21
   f2.
}

\tocItemComposer "Veni Creator" "Couturier"
\score {
  \header {
    title = "VENI CREATOR"
    composer = \couturier
  }
  \new ChoirStaff \with {
    midiInstrument = "choir aahs"
  } <<
    \new Staff <<
      \new Voice = "PartPOneVoiceOne" {
        \voiceOne \PartPOneVoiceOne
      }
      \new Voice = "PartPTwoVoiceOne" {
        \voiceTwo \PartPTwoVoiceOne
      }
      \new Lyrics \lyricsto "PartPOneVoiceOne" {
        \PartPOneVoiceOneLyricsOne
      }
      \new Lyrics \lyricsto "PartPOneVoiceOne" {
        \PartPOneVoiceOneLyricsTwo
      }
      \new Lyrics \lyricsto "PartPOneVoiceOne" {
        \PartPOneVoiceOneLyricsThree
      }
      \new Lyrics \lyricsto "PartPOneVoiceOne" {
        \PartPOneVoiceOneLyricsFour
      }
    >>
        
  \new Staff \with {
    \clef bass
  } <<
    \new Voice = "PartPThreeVoiceOne" {
       \voiceThree \PartPThreeVoiceOne
    }
    \new Voice = "PartPFourVoiceOne" {
      \voiceFour \PartPFourVoiceOne
    }
  >>
  >>
  \layout { \context { \Staff \RemoveAllEmptyStaves }}
  \midi { \tempo 4 = 100 }
}

