\version "2.26.0"
\include "../../settings.ily"
global = {
  \key d \major
  \autoBeamOff
  \partial 2.
  \once \omit Staff.TimeSignature
}

soprano = \fixed c' {
  \global
  \markChanson "Refrain"
  \cadenzaOn
  d'4 4 4 \bar"|" 2 \bar"|"
  4 cis' d'\bar"|" b2 \bar"|"
  4 4 4\bar"|" 2 \bar"|"
  4 a b\bar"|" cis'2 \bar"|"
  d'4 4\bar"|" 2 \bar"|"
  4 cis'4. d'8\bar"|" 2 \bar "||" \break
  \cadenzaOff \time 3/4 \markChanson "Couplets" \once \omit Score.MetronomeMark \tempo 2.=60
  fis4 4 4 b2. cis'4 d' cis' b2.
  fis4 4 4 a2. g4 fis e d2
  fis4 4 e d d(cis) b, fis2. \bar "||"
}

alto = \fixed c' {
  \global
  fis4 g a b2
  a4 g fis g2
  dis4 e fis g2
  fis4 e gis a2
  fis4 \once \omit Accidental g a2 
  b4 a4(g8) fis8 2
}

bass = \fixed c {
  \global
  d4 e fis g2
  fis4 e d g2
  b,4 cis dis e2
  \once \omit Accidental d4 cis b, a,2
  d4 e fis2
  g4 a4. d8 2
  s4
}

verseOne = \lyricmode {
  Láu -- da, Sí -- on, Sal -- va -- tó -- rem,
  láu -- da dú -- cem et pás -- to -- rem,
  in hým -- nis et cán -- ti -- cis.
  \set stanza = "1."
  Quán -- tum pó -- tes, tán -- tum áu -- de,
  quí -- a má -- jor óm -- ni láu -- de
  nec láu -- da -- re súf -- fi -- cis.
}
verseTwo = \strophemode #2 ##t 23 \lyricmode {
  Láu -- dis thé -- ma spe -- ci -- á -- lis,
  Pá -- nis ví -- vus et ví -- ta -- lis
  hó -- di -- e pro -- pó -- ni -- tur.
}
verseThree = \strophemode #3 ##f 23 \lyricmode {
  Quem in sá -- cræ mén -- sa cé -- næ
  túr -- bæ frá -- trum du -- ó -- de -- næ
  dá -- tum non am -- bí -- gi -- tur.
}
verseFour = \strophemode #4 ##t 23 \lyricmode {
  Sit laus plé -- na, sit so -- nó -- ra_;
  sit ju -- cún -- da, sit de -- có -- ra_;
  mén -- tis ju -- bi -- lá -- ti -- o.
}
verseFive = \strophemode #5 ##f 23 \lyricmode {
  In hac mén -- sa nó -- vi Ré -- gis,
  nó -- vum Pás -- cha nó -- væ lé -- gis,
  phá -- se vé -- tus tér -- mi -- nat.
}
verseSix = \strophemode #6 ##t 23 \lyricmode {
  Quod in cé -- na Chrís -- tus gés -- sit,
  fa -- ci -- én -- dum hoc ex -- prés -- sit,
  in su -- í me -- mó -- ri -- am.
}
verseSeven = \strophemode #7 ##f 23 \lyricmode {
  Dóc -- ti sá -- cris ins -- ti -- tú -- tis,
  pá -- nem, ví -- num in sa -- lú -- tis
  con -- se -- crá -- mus hós -- ti -- am.
}
verseEight = \strophemode #8 ##t 23 \lyricmode {
  Dóg -- ma dá -- tur chris -- ti -- á -- nis,
  quod in cár -- nem trán -- sit pá -- nis
  et ví -- num in sán -- gui -- nem.
}

\tocItem \markup "Lauda Sion"
\score {
  \header {
    title = "LAUDA SION"
    composer = "Paroles : Saint Thomas d'Aquin (~1225-1274)"
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
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseFive
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseSix
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseSeven
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verseEight
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
      } << \clef bass \bass >>
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves}}
  \midi {\tempo 4=70}
}

