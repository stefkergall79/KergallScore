\version "2.26.0"
\include "settings.ily"
global = {
  \key d \major
  \time 4/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \markChanson "Refrain"
  fis4 8. g16 a8. 16 4 d'(b8.) 16 a2
  g4 4 fis8 8 d fis a4(fis)e2
  fis4 8.[e16] d2 a4 8.[g16]fis2
  d'4 cis'8.[b16] a8 g fis e fis4(e) d2
  \bar"||"\break \cadenzaOn
  \markChanson "Couplets"
  d8 fis a\breve b8 a4\bar"|"
  a\breve b8 gis a fis4\bar"||"
}

alto = \fixed c' {
  \global
  d4 8. e16 fis8. 16 4
  d4~8. e16 fis2
  e4 4 d8 8 8 8 2 cis
  d4 8.[cis16]d2
  fis4 8.[e16]d2
  fis4 a8.[g16]fis8 e d8 8 4(cis)d2
}

tenor = \fixed c {
  \global
  a4 8. g16 fis8. 16 4
  b4(g8.)16 fis2
  b4 a4 8 8 8 8 4(b)cis'2
  a4 8.[g16]a2
  4 cis' d'2
  b4 a8.[b16]c'8 b a b a4~8[g]fis2
}

bass = \fixed c {
  \global
  d4 8. 16 8. 16 4 g,4(b,8.)cis16 d2
  4 cis d8 8 fis d fis4(g8[gis])a2
  d4 8.[e16]fis2 d4 a, d2
  b,4 cis8.[d16]dis8 e fis g a4(a,)d2
}

verseOne = \lyricmode {
  Láu -- da Je -- rú -- sa -- lem Dó -- mi -- num,
  láu -- da Dé -- um tú -- um Sí -- on.
  Ho -- sán -- na, ho -- sán -- na,
  ho -- sán -- na Fí -- li -- o Dá -- vid_!
  \set stanza = "1."
  Quó -- ni -- "am confortávit séras portárum tu - " -- ár -- um_:
  "benedíxit fíliis" tú -- is in te.
}

verseTwo = \strophemode #2 ##t 31 \lyricmode {
  Qui pó -- "suit fínes túos" pá -- cem_:
  "et ádipe fruménti" sá -- ti -- at te.
}

verseThree = \strophemode #3 ##f 31 \lyricmode {
  Qui e -- "míttit elóquium súum" tér -- rae_:
  "velóciter cúrrit" sér -- mo é -- jus.
}

verseFour = \strophemode #4 ##t 31 \lyricmode {
  Qui dat "nívem sícut" lá -- nam_:
  "nébulam sícut" cí -- nerem spár -- git.
}

verseFive = \strophemode #5 ##f 31 \lyricmode {
  Mít -- tit "crystállum súam sícut buc" -- cél -- las_:
  "ante fáciem frígoris éjus quis " sus -- ti -- né -- bit_?
}

verseSix = \strophemode #6 ##t 31 \lyricmode {
  E -- mít -- "tet vérbum súum et liquefáciet" é -- a_:
  "flábit spíritus éjus, et" flú -- ent á -- quæ.
}

verseSeven = \strophemode #7 ##f 31 \lyricmode {
  Qui an -- "núntiat vérbum súum" Já -- cob_:
  "justítias et judícia" sú -- a Is -- raël.
}

verseEight = \strophemode #8 ##t 31 \lyricmode {
  Non fé -- "cit táliter ómni nati" -- ó -- ni_:
  "et judícia súa non manifes" -- tá -- vit é -- is.
}

verseNine = \strophemode #9 ##f 31 \lyricmode {
  Gló -- ri -- "a Pátri et" Fí -- lio_:
  "et Spi" -- rí -- tui Sán -- cto.
}

verseTen = \strophemode #10 ##t 31 \lyricmode {
  Sí -- cut "érat in princípio et nunc et" sém -- per_:
  "et in sǽcula sæcu" -- ló -- rum. A -- men.
}

\tocItem \markup "Lauda Jerusalem"
\score {
  \header {
    title = "LAUDA JERUSALEM"
    composer = "Psaume 147"
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
      \new Lyrics \with {
        \override LyricText.self-alignment-X = #LEFT
      } \lyricsto "soprano" \verseTen
      
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
    \midi {\tempo 4=70}
  }

