\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key es \major
  \time 4/4
  \autoBeamOff 
  \partial 4
}

soprano = \fixed c' {
  \global
  bes4 4 as g g |
  as g f bes |
  4 a bes r |
  bes g as bes |
  c' bes as g |
  f f es r |
  bes as g g |
  as g f bes |
  4 a bes r |
  bes g as bes |
  c' bes as g |
  f f es r |
  es' d' c' bes |
  es' d' c' bes |
  g2 as |
  f g4 bes |
  4 g as bes |
  c' bes as g |
  f f es2 |
}

alto = \fixed c' {
  \global
  g4 4 f es4 4 |
  c8[d]es4 4 d |
  c es d r |
  g es c es |
  as g f es |
  es d es r |
  g f es4 4|
  c8[d]es4 4 d |
  c es d r |
  g es c es|
  as g f es |
  4 d es r\bar"||"\break |
  es f8[g]as4 g |
  es f4 8[es]d4 |
  es(g)f(es) |
  4(d) es d |
  es des c es |
  4 e f es |
  4 d es2\bar"|." |
}

tenor = \relative c' {
  \global
  r4 R1*12
  g4 as8[bes]c[d]es4 |
  g, bes a bes |
  2 c |
  bes2 4 8[as] |
  bes4 4 as g |
  as bes c bes |
  c bes8[as] g2 |
}

bass = \fixed c {
  \global
  r4 R1*12
  es4 4 4 4 |
  c d8[es] f4 bes, |
  es2 as, |
  bes, es4 bes8[as] |
  g4 es f es |
  as g f g |
  as bes8[bes,]es2|
}

verseOne = \strophemode #1 ##f \lyricmode {
  A -- dó -- ro Te de -- vó -- te,
  lá -- tens Dé -- i -- tas,
  quæ sub his fi -- gú -- ris
  vé -- re lá -- ti -- tas_:
  Tí -- bi se cor mé -- um
  to -- tum súb -- ji -- cit,
  quí -- a Te con -- tém -- plans
  tó -- tum dé -- fi -- cit.
  
  A -- ve, Jé -- su, vé -- rum Mán -- hu,
  Chrí -- ste Jé -- su, ad -- áu -- ge fí -- dem
  óm -- ni -- um cre -- dén -- ti -- um.
}

verseTwo = \strophemode #2 ##t #1 \lyricmode {
  Jé -- su, quem ve -- lá -- tum
  nunc as -- pí -- ci -- o,
  ó -- ro fí -- at íl -- lud,
  quod tam sí -- ti -- o_;
  ut, te re -- ve -- lá -- ta
  cér -- nens fá -- ci -- e,
  ví -- su sim be -- á -- tus
  Tú -- æ gló -- ri -- æ.
}

\tocItem \markup "Adoro te devote"
\score {
  \header {
    title = "ADORO TE DEVOTE"
    composer = \besnier
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
    \midi {\tempo 4=100}
  }
