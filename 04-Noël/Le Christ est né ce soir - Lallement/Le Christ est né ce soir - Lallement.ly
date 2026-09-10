\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key d \major
  \time 6/8
  \autoBeamOff
  \partial 8
}

soprano = \fixed c' {
  \global
  fis8 4 b8 4 a8 b4. d' cis'4 b8 a4 b8 fis4. 8 r8
  8 4 b8 4 a8 b4. d' cis'4 b8 a4 b8 fis4. 4 r8
  b4. a4 fis8 g4 a8 fis4 g8 fis4 e8 d4 e8 \break
  fis4.~8 r
  fis8 4 b8 4 a8 b4. d' cis'4 e'8 d'4 cis'8 b4.\fermata \bar "|."
}

alto = \fixed c' {
  \global
  fis8 4 g8 4 fis8 4. b g4 fis8 e4 fis16[g] cis4. 8 r8
  d8 4 g8 4 fis8 4. b g4 fis8 e4 d16[cis] b,4. 4 r8
  fis4.~8 e d e4 8 d4 8 4 cis8 d4 b,8 a, r a, b,4
  cis8 d4. e fis g a4 cis'8 b4 a8 fis4.
}

tenor = \fixed c {
  \global
  d'8 4 8 e'4 cis'8 b4. fis' e'4 b8 cis'4 b8 4. a8 r
  b8 4 d'8 e'4 cis'8 d'4. fis' e'4 b8 cis'4 d'16[e'] e'4. d'4 r8
  d'4. cis'4 a8 b4 cis'8 a4 b8 a4 g8 fis4 b8 a4.(d8) r
  fis8 4 g8 4 a8 4 fis8 b4 e'8 8[fis'] g' fis'4 e'8 d'4.
}

bass = \fixed c {
  \global
  b8 4 g8 e4 fis8 d4. b, e4 d8 cis4 d16[e] fis4. 8 r
  b8 4 g8 e4 fis8 d4. b, e4 d8 cis4 b,16[a,] b,4. 4 r8
  b4. fis4 8 e4 a,8 d4 g8 d4 a,8 b,4 g,8 fis, r
  fis, g,4 a,8 b,4. cis d e fis4 8 g4 a8 b4.
}

verseSoprano = \lyricmode {
  \repeat unfold 38 \skip1
  il a de son ber -- ceau fait
}

verseAlto = \strophemode 1 ##f \lyricmode {
  Le Christ est né ce soir
  de la Vier -- ge Ma -- ri -- e,
  sous le ciel é -- toi -- lé,
  hors de l’hô -- tel -- le -- ri -- e,
  et dé -- jà Ré -- demp -- teur
  en des -- cen -- dant du Ciel,
  il a de son ber -- ceau
  fait son pre -- mier au -- tel.
}
verseTenor = \lyricmode {
  \repeat unfold 38 \skip1
  il a de son ber -- ceau,
  il a fait
}
verseBass = \lyricmode {
  \repeat unfold 38 \skip1
  il a de son ber -- ceau fait
}

\paper {
  system-system-spacing.basic-distance = 20
}
\tocItem \markup "Le Christ est né ce soir"
\score {
  \header {
    title = "LE CHRIST EST NÉ CE SOIR"
    poet = "Mélodie : Noël de Basse-Bretagne"
    composer = \markup{"Harmonisation :" \lallement}
  }
  \new ChoirStaff \with {
      midiInstrument = "choir aahs"
    } <<
    \new Staff = "femmes" \with {
      \consists Merge_rests_engraver
    } <<
      \new Voice = "soprano" {\voiceOne \soprano}
      \new Voice = "alto" {\voiceTwo \alto}
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
      alignAboveContext = "femmes"
    } \lyricsto "soprano" \verseSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verseAlto
    
    \new Staff = "hommes" \with {
      \clef bass
      \consists Merge_rests_engraver
    } <<
      \new Voice = "tenor" {\voiceOne \tenor}
      \new Voice = "bass" {\voiceTwo \bass}
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
      alignAboveContext = "hommes"
    } \lyricsto "tenor" \verseTenor
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \verseBass
  >>
  \layout { \context{\Staff \RemoveAllEmptyStaves}}
  \midi {\tempo 4=90 }
}

\markup \column {
  \vspace #1
  \couplets-markup #2 #2 {
  \column {
    "Ce soir comme un écho du fond de Palestine,"
    "De vallon en vallon, de colline en colline,"
    "Les cloches se sont dit l’angélique Noël ;"
    \line {Aux hommes paix sur terre, et gloire\normal-text{ (et gloire) }au Dieu du Ciel !}
  }
  \column {
    "Avec les pastoureaux, loin du monde coupable,"
    "Ah ! Venez à genoux au seuil de cette étable."
    "Jésus notre Sauveur attend comme autrefois"
    \line {L’hommage de nos cœurs : Il est \italic{(il est)} le Roi des rois !}
  }
}}
