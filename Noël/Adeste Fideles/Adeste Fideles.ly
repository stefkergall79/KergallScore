\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  g4 2 d4 g a2 d4 r b a b c' b2 a4
  g g2 fis4 e fis(g) a b8[g] fis2(e4.) d8 2. r4 \break
  d'2 c'4 b c'2 b a4 b g a g(fis8)[e] d4
  g4 4 fis g a g2 d4
  b b a b c' b2 a4
  b c' b a g fis2 g4(c') b2(a4.) g8 2 \bar "|."
}

alto = \fixed c' {
  \global
  s4 \skip1 s2. r4 \skip1 * 5 s2. r4
  b2 a4 g e(fis) g2 d8[c] b,4 e8[d] cis4 d4.(cis8) d4 r
  s1 r2 r4 g4 4 fis g a g2 d4
  g8[f] e4 d c e d(c) b,(e) g2(fis4.) g8 2
}

tenor = \fixed c {
  \global
  s4 \skip1 * 8
  d'2 4 4 c'2 d' d'8[c'] b4 4 a b(a8)[g] fis4
  b4 4 a b c' b(a) b
  g d' c' b a d'(cis') d'4
  4 c' d' e' a4 2 g2 8[a b c'] d'4 c' b2
}

bass = \fixed c {
  \global
  s4 \skip1 * 8
  b4(g) fis g a2 g d4 dis e a, d2 4 r
  s1 * 3 r2 r4 g,4 a, b, c cis d(dis) e(a,) d2 2 <g g,>
}

verseOne = \strophemode 1 ##f \lyricmode {
  A -- des -- te, fi -- de -- les,
  læ -- ti tr -- ium -- phan -- tes,
  ve -- ni -- te, ve -- ni -- te in
  Beth -- le -- hem.
  Na -- tum vi -- de -- te
  Re -- gem an -- ge -- lo -- rum.
  Ve -- ni -- te, a -- do -- re -- mus, ve -- ni -- te, a -- do -- re -- mus,
  ve -- ni -- te, a -- do -- re -- mus Do -- mi -- num.
}

verseTwo = \strophemode 2 ##t \lyricmode {
  En gre -- ge re -- lic -- to
  hu -- mi -- les ad cu -- nas,
  vo -- ca -- ti pas -- to -- res
  ap -- pro -- pe -- rant,
  Et nos o -- van -- ti
  gra -- du fes -- ti -- ne -- mus.
}

verseThree = \strophemode 3 ##f \lyricmode {
  Æ -- ter -- ni Pa -- ren -- tis
  splen -- do -- rem æ -- ter -- num,
  ve -- la -- tum sub car -- ne
  vi -- de -- bi -- mus,
  De -- um in -- fan -- tem
  pan -- nis in -- vo -- lu -- tum.
}

verseFour = \strophemode 4 ##t \lyricmode {
  Pro no -- bis e -- ge -- num
  et fœ -- no cu -- ban -- tem
  pi -- is fo -- ve -- a -- mus
  am -- ple -- xi -- bus_;
  Sic nos a -- man -- tem
  quis non re -- da -- ma -- ret_?

}

\tocItem \markup "Adeste, fideles"
\score {
  \header {
    title = "ADESTE, FIDELES"
    composer = \markup{"Attribué à" \wade}
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
  \layout {\context{\Staff \RemoveAllEmptyStaves}}
  \midi {\tempo 4=110 }
}
