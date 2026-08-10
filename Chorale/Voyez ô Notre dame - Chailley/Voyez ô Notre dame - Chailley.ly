\version "2.26.0"
\include "settings.ily"
global = {
  \key c \major
  \time 9/8
  \partial 8
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  e8 e[a] b c'4 b8 g4. a4 e8 8[a] b c'[b] g a4. r4
  e8 e[a] b c'[b] c' d' c' b a4 b16([a] g4.) e4. r4
  e8 e[a] b c'[b] c' d'4. c' a4 b16([a] g4.) a4.\bar "|."
}

alto = \fixed c' {
  \global
  e8 4 g8 8[a] f e4(d8) c4 e8 4 g8 8[f] e e4. r4
  e8 4 g8 4 e8 f e d c4 f8(e4 d16[c]) b,4. r4
  e8 e4 g8 4 e8 f4. e c4 f8(e4 d8) c4.
}

tenor = \fixed c' {
  \global
  c8 4 d8 e4 d8 b,4. a,4 b,8 c4 d8 e[d] b, c4. r4
  c8 c4 d8 e4 c8 a,8 g,8 8 c4 d16([c] b,4.) g,4. r4
  c8 4 d8 e4 c8 a,4. g, c4 d16([c] b,4.) a,4.
}

bass = \fixed c {
  \global
  a8 4 g8 c4 d8 e4. f4 g8 a4 g8 c[d] e a,4. r4
  a8 4 g8 c[e] a d e e f4 d8(e4.) 4. r4
  a8 4 g8 c[e] a d4. e f4 d8(e4.) <e a,>4.

}

verseOne = \strophemode 1 ##f \lyricmode {
  Voy -- ez ô No -- tre_- Da -- me, vos en -- fants de -- vant vous.
  Ils vien -- nent vous pri -- er, Gra -- ti -- a Ple -- na_;
  vous les é -- cou -- te -- rez, Ma -- ter Al -- ma.
}

verseTwo = \strophemode 2 ##t \lyricmode {
  Ils vou -- draient que leur â -- me soit tou -- jours belle pour vous_;
  et leur vie à vos yeux, Gra -- ti -- a Ple -- na,
  comme un re -- flet de Dieu, Ma -- ter Al -- ma.
}

verseThree = \strophemode 3 ##f \lyricmode {
  Ô vous l'A -- mour im -- men -- se,
  ren -- dez leur cœur plus grand,
  et d'a -- mour dé -- bor -- dant, Gra -- ti -- a Ple -- na,
  comme un re -- flet de Dieu, Ma -- ter Al -- ma.
}

verseFour = \strophemode 4 ##t \lyricmode {
  Ac -- cor -- dez -_leur la grâ -- ce,
  leur ser -- vice a -- che -- vé,
  d'ac -- cueil -- lir ce mo -- ment, Gra -- ti -- a Ple -- na,
  sans peur, se -- rei -- ne -- ment, Ma -- ter Al -- ma.
}

\tocItem \markup "Voyez ô Notre-Dame"
\score {
  \header {
    title = "VOYEZ Ô NOTRE-DAME"
    composer = "Mélodie populaire de Guyenne"
    arranger = "Harmonisation : Bernard Lallement (1936-2023)"
    poet = "Paroles : Jacques Chailley (1910-1999)"
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
  \layout { }
  \midi { \tempo 4=85 }
}
