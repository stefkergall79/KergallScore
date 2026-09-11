\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key f \major
  \time 4/4
  \autoBeamOff
  \partial 2
  \mergeDifferentlyDottedOn
}

soprano = \fixed c' {
  \autoBeamOff \cadenzaOn
  d8 a [ b ] g a [ b ] d' c' [ b a g ] a4 \bar"|"
  a8 8 d [ e ] g f [ e ] d4 \bar "|"
  f8 e g a a d4  e8 [ f e d ] c4  \bar "|"
  e8 g e f e d2\coda \bar "||" \break
  \cadenzaOff
  
  \global
  d4 a a g4 8[f e f] e2
  f4 g a bes4 8[a g a] g2
  a4 d' b e'4 8[d' c' b] c'2
  d'4 bes! g a4 8[g f e] \partial 2 d2\bar"||"
  a4\coda d' c'8[bes a g] a1\bar "|."
}

alto = \fixed c' {
  s1*5 s2
  \global
  d4 f f e c4.(d8) cis2
  d4 e f e f2 e
  f4 f e e f(e) e2
  fis4 d e f d8[e](cis4) d2
  f e fis1
}

tenor = \fixed c {
  s1*5 s2
  \global
  d'4 4 4 g a2 2
  4 c'4 4 bes c'(d') e'2
  c'4 b gis a a(gis) a2
  4 bes c'4 4 bes(a8.)[g16] f2
  d'1 1
}

bass = \fixed c {
  s1*5 s2
  \global
  d4 8[c] bes,4 c f(d) a,2
  d4 c f g f2 c
  f4 d e c d(e) a,2
  d4 g c f g(a8)[a,]d2
  4 bes, g,2 d1
}

verseTwo = \strophemode #1 ##f \lyricmode {
  A -- ve má -- ris stél -- la, _
  Dé -- i Má -- ter ál -- ma,
  át -- que sém -- per Vír -- go, _ _
  té -- lix cǽ -- li pór -- ta.
  \set stanza = "2."
  Sú -- mens íl -- lud A -- ve
  Ga -- bri -- é -- lis ó -- re,
  fún -- da nos in pá -- ce,
  mú -- tans Hé -- væ nó -- men.
}

verseFour = \strophemode #3 ##t \lyricmode {
  Sól -- ve vín -- cla ré -- is, _
  ró -- fer lú -- men cǽ -- cis,
  má -- la nós -- tra pél -- le, _ _
  bó -- na cún -- cta pó -- sce.
  \set stanza = \markup \italic 4.
  Móns -- tra t(e)_és -- se má -- trem_:
  Sú -- mat per te pré -- ces,
  qui pro nó -- bis ná -- tus
  tú -- lit és -- se tú -- us.
  \override LyricText.font-series = #'bold
  \set stanza = \markup \italic 7.
  A -- _ _ men.
}

verseSix = \strophemode #5 ##f \lyricmode {
  Vír -- go sín -- gu -- la -- ris, _
  ín -- ter óm -- nes mí -- tis,
  nos cúl -- pis so -- lú -- tos, _ _
  mí -- tes fac et cás -- tos.
  \set stanza = "6."
  Ví -- tam prǽs -- ta pú -- ram,
  i -- ter pá -- ra tú -- tum,
  ut vi -- dén -- tes Jé -- sum,
  sem -- per col -- læ -- té -- mur.
}
verseSeven = \strophemode 7 ##t \lyricmode {
  Sit laus Dé -- o Pá -- tri, _
  Súm -- mo Chrís -- to dé -- cus,
  Spi -- rí -- tu -- i Sánc -- to, _ _
  trí -- bus hó -- nor ú -- nus.
}

\tocItemComposer "Ave Maris Stella" "Perruchot"
\score {
  \header {
    title = "AVE MARIS STELLA"
    composer = \perruchot
  }
  \new ChoirStaff \with {
    midiInstrument = "choir aahs"
  } <<
    \new Staff \with {
      \consists Merge_rests_engraver
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSix
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSeven
    
    \new Staff \with {
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