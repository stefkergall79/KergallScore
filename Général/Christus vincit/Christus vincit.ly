\version "2.26.0"
\include "settings.ily"
global = {
  \key f \major
  \time 2/2
  \autoBeamOff
}

soprano = \fixed c' {
  \global \bar".|:"
  a2 2 c'2 2 f f a a d' g c' f4(bes) a2(g4.)f8 1
  \bar":|."\break
  \cadenzaOn
  f8 g a\breve g8 a f4\bar"|"
  a\breve f8 g[a]g f4\bar"||"
}

alto = \fixed c' {
  \global
  f2 2 g c d d e a, bes, e4(d) f2 d f2.. c8 1
}

tenor = \fixed c {
  \global
  c'2 2 2 g a a a e f c'2 2 f' c'2(bes4.)a8 1 
}

bass = \fixed c {
  \global
  f2 f e e d d c c bes,2 c a, bes, c2.. 8 f,1
}

verseOne = \lyricmode {
  \markChanson "Refrain"
  Chrí -- stus vín -- cit,
  Chrí -- stus ré -- gnat,
  Chrí -- stus, Chrí -- stus ím -- pe -- rat_!
  \set stanza = "1."
  \markChanson "Couplets"
  Dó -- mi -- "nus regnávit, decórem" in -- dú -- "tus est :"
  "indútus est Dóminus fortitúdinem," et præ -- cín -- xit_se.
}

verseTwo = \strophemode #2 ##t #15 \lyricmode {
  E -- te -- "nim firmávit or" -- bem ter -- ræ,
  qui_non com -- mo -- vé -- bitur.
}

verseThree = \strophemode #3 ##f #15 \lyricmode {
  Pa -- rá -- "ta sedes tu" -- a ex tunc_:
  a_sǽ -- cu -- lo tu es.
}

verseFour = \strophemode #4 ##t #15 \lyricmode {
  E -- le -- vavérunt_flúmi -- na, Dó -- mine_:
  elevavérunt_flúmina vo -- cem su -- am.
}

verseFive = \strophemode #5 ##f #15 \lyricmode {
  E -- le -- "vavérunt flúmina fluc" -- tus su -- os,
  "a vócibus aquá" -- rum mul -- tá -- rum.
}

verseSix = \strophemode #6 ##t #15 \lyricmode {
  Mi -- rá -- biles_elatió -- nes ma -- ris_:
  mirábilis_in al -- tis Dó -- minus.
}

verseSeven = \strophemode #7 ##f #15 \lyricmode {
  Tes -- ti -- "mónia tua credibília facta" sunt ni -- mis_:
  "domum tuam decet sanctitúdo, Dómine, in longitúdi - " -- nem di -- é -- rum.
}

verseEight = \strophemode #8 ##t #15 \lyricmode {
  Gló -- ri -- a_Patri, et Fí -- lio,
  et_Spirí -- tu -- i San -- cto.
}

verseNine = \strophemode #9 ##f #15 \lyricmode {
  Si -- cut "erat in princípio, et nunc," et sem -- per,
  "et in sǽcula sæcu" -- ló -- rum. A -- men.
}

\tocItem \markup "Christus vincit"
\score {
  \header {
    title = "CHRISTUS VINCIT"
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
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseOne
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseTwo
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseThree
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseFour
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseFive
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseSix
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseSeven
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseEight
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseNine
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    \layout {\context{\Staff \RemoveAllEmptyStaves}}
    \midi {\tempo 2=65}
  }
