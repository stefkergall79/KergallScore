\version "2.26.0"
\include "../../settings.ily"
globalo = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \tempo "Lento"
}

soprane = \fixed c' {
  \globalo
  a1 gis2. a4 b2 c'2~2 b a1 gis
  r2 gis a2. 4 b2 4 c'4~4 b a a gis2 a
  r c'2~2 b r4 c'2 b4 a2 4 4 2. gis4
  c'2 d'4 4 e'2 r4 e' d'4. c'8 b4 4 a2
  c'2~4 4 d' d' b2. 4(c'8) 8 b4.(a8) 4(~4 gis8[fis] gis2) a2
  2~8 8 4 2~1 1 \bar "|."
}

alti = \fixed c' {
  \globalo
  e1 2. f4 g2 2~2 2 f4(e4. d16[c] d4) e1
  r2 e2 2. fis4 g2 4 4~4 4 e d e2 2
  r a2~2 gis r4 a2 d4 f2 4 4 c(d) e2
  a2 4 b c'2 r4 4 b4. a8 4 gis a2 2~4 4 4 4 gis2.
  4(a) d f2 e1 cis2. e4(f8) 8 e4 f2~2 e4.(d8) e1
}

tenors = \fixed c {
  \globalo
  c'1 b2. c'4 d'2 e'2~2 d' c'4.(b8 a2) b1
  r2 b c'2. 4 d'2 4 e'4~4 d' c' a b2 a
  r e'2~2 2 r4 e'2 b4c'2 d'4 4 a4.(b8 c'4) b
  a2 f'4 4 e'2 r4 c' g4. a8 e'4 4 a2 r4 f'4~4 4 4 4 e'2.
  4~4 b c'(d') b1 a2. cis'4(d'8) 8 e'4 d'2~2 cis'4.(b8) cis'1
}

basse = \fixed c {
  \globalo
  a1 e2. a4 g2 c2~2 g a4.(g8 f2) e1
  r2 e a2. 4 g2 4 c'~4 g a f e2 a,
  r a(e) e r4 a2 g4 f2 d4 4 f2 e2
  f d4 4 c2 r R1 r2 f~4 4 d d e2.
  4(a) g f(d) e1 a,2 2(d8) d c4 d2(a,1) 1
}

verse = \lyricmode {
  O Dó -- mi -- ne Jé -- su Chrís -- te_!
  A -- dó -- ro te in crú -- ce vul -- ne -- rá -- tum,
  fél -- le et a -- cé -- to po -- tá -- tum_;
  de -- pré -- cor te
  ut tú -- a vúl -- ne -- ra sint re -- mé -- di -- um
  á -- ni -- mæ me -- æ, á -- ni -- mæ me -- æ.
}

\tocItem \markup "O Domine Jesu Christe"
\score {
  \header {
    title = "O DÓMINE JÉSU CHRÍSTE"
    composer = "Giovanni da Palestrina (1525-1594)"
    }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
      instrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" { \voiceOne \soprane }
      \new Voice = "alto" { \voiceTwo \alti }
    >>
    \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verse

    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
      instrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenors }
      \new Voice = "bass" { \voiceTwo \basse }
    >>
  >>
  \layout { }
  \midi {\tempo 4=90}
}

  