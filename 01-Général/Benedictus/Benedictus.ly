\version "2.26.0"
\include "settings.ily"

global = {
  \key f \major
  \time 4/4
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  \markChanson "Refrain"
  f8. g16 a2 4 4 c'2(bes4 a) g2 r4
  g8.[a16] bes2 4 4 d'2(c'4) bes a2 r4
  f8. 16 d'2 4 4 c'2 4 f bes2 4 a g4. f8 4
  4 d'2 4. 8 f'2 c'4 f bes c'8[d'] c'4 bes a2(g) f1\bar"||"\break
  \markChanson "Couplets"
  \cadenzaOn
  f8 g a\breve g8 a f4\bar"|"
  a\breve f8 g[a] g f4\bar "||"
}

alto = \fixed c' {
  \global
  f8. e16 f2 4 4 2(g4 f) e2 r4
  8.[f16] g2 4 4 bes2(a4) g f2 r4
  f8. e16 d2 g4 e4 f2 e4 d d(g) g f e4. f8 4
  4 2 g4 gis a2 4 f g a8[bes] a4 g f2(e) s1
}

tenor = \fixed c {
  \global
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  a8. bes16 c'2 4 4 2(d') e'2 r4
  c'4 d'2 cis'4 d' e'2(c'4) 4 2 r4
  a8. 16 bes2 4 4 a2 4 4 bes(d') c'4 4 bes4. a8 4
  f d'2 4. 8 c'2 4 4 d'4 4 c' d' c'2.(bes4) a1
}

bass = \fixed c {
  \global
  f8. 16 2 4 4 a(a, bes, b,) c2 r4
  c'8.[a16] g4(f) es d c2(d4) e f2 r4
  f8. 16 bes,2 g4 c f2 a,4 d g(f) e f c4. f8 4
  4 bes,2 4. 8 f2 4 a g g a bes c'2(c) f1
  
}

verseOne = \lyricmode {
  Be -- ne -- díc -- tus qui vé -- nit
  in nó -- mi -- ne Dó -- mi -- ni.
  Be -- ne -- díc -- tus qui vé -- nit
  in nó -- mi -- ne Dó -- mi -- ni.
  Ho -- sán -- na, ho -- sán -- na,
  ho -- sán -- na in ex -- cél -- sis.
  \set stanza = "1."
  Dó -- mi -- "nus régit me, et níhil mí" -- hi dé -- erit_:
  "in lóco páscuæ íbi me" col -- lo -- cá -- vit.
}

verseTwo = \strophemode #2 ##t #41 \lyricmode {
  Sú -- per "áquam refectiónis e" du -- cá -- vit_me_:
  "ánimam mé" -- am con -- vér -- tit.
}

verseThree = \strophemode #3 ##f #41 \lyricmode {
  De -- dú -- "xit me súper sémitas" jus -- ti -- tiæ_:
  própter nó -- men sú -- um.
}

verseFour = \strophemode #4 ##t #41 \lyricmode {
  Nam et "si ambulávero in médio úmbræ mórtis, non timé - " -- bo má -- la_:
  quóniam tu mé -- cum es.
}

verseFive = \strophemode #5 ##f #41 \lyricmode {
  Vír -- ga "túa et bácu" -- lus tú -- us_:
  "ípsa me con" -- so -- lá -- ta sunt.
}

verseSix = \strophemode #6 ##t #41 \lyricmode {
  Pa -- rá -- "sti in conspéctu mé" -- o mén -- sam_:
  "advérsus éos, qui" trí -- bu -- lant me.
}

\tocItem \markup "Benedictus"
\score {
  \header {
    title = "BENEDICTUS"
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
