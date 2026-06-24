\version "2.26.0"
\include "../../settings.ily"

global = {
  \key bes \major
  \time 4/4
  \partial 2.
  \autoBeamOff
  s8.
}

soprano = \fixed c' {
  \global
  g16 g4 d
  g4.. a16 bes8. a16 bes8. g16
  d'4~16 r bes8 c'4 d'
  ees'8 d' c' bes a4 d'
  c'8[ bes] a r16 bes g4 d
  g4.. a16 bes8. a16 bes8. g16
  d'4~16 r bes8 c'4 d'
  ees'8 d' c' bes bes4 a
  g4. r16 \bar "||" \break
  a a4 a
  bes a8. g16 a4 bes
  c'4. r16 bes c'4 d'
  g a8 bes c' bes a g
  g[fis] d r16 a a4 a
  bes a8. g16 a4 bes
  c'4. r16 bes c'4 d'
  ees'8 d' c' bes bes4 a g4.\bar "|."
}

alto = \fixed c' {
  \global
  d16 d4 c
  d4.. d16 g8. f16 g8. ees16
  g4~16 r g8 a4 g
  ees8 ees a g g[fis] ees[fis]
  g4 d8 r16 d d4 c
  d4.. d16 g8. d16 g8. ees16
  f4~16 r bes8 a[g] g[a]
  ees8 ees a g fis4 fis
  g4. r16 fis fis4 fis
  g fis8. ees16 fis4 g
  a4. r16 g fis4 f
  ees4 \repeat unfold 6 {ees8}
  d4 d8 r16 fis fis4 fis
  g fis8. ees16 fis4 g
  a4. r16 g fis4 f
  ees8 ees ees g fis4 fis d4.
}

tenor = \fixed c {
  \global
  bes16 bes4 c'
  bes4.. a16 g8. a16 g8. bes16
  d'4~16 r ees'8 ees'4 d'
  c'8 c' ees' ees' d'4 d'
  g a8 r16 g bes4 c'
  bes4.. a16 g8. a16 g8. bes16
  d'4~16 r ees'8 ees'4 d'
  c'8 c' ees' ees' d'4 d'
  bes4. r16 d' d'4 d'
  d' d'8. d'16 d'4 d'
  d'4. r16 d' d'4 d'
  c'4 c'8 bes a g a a
  a4 fis8 r16 d' d'4 d'
  d' d'8. d'16 d'4 d'
  d'4. r16 d' d'4 d'
  g8 g c' d' d'4 d' bes4.
}

bass = \fixed c {
  \global
  g16 g4 a
  g4.. f16 ees8. f16 ees8. ees16
  bes4~16 r bes8 a4 bes
  c'8 bes a c' d'4 d
  ees fis8 r16 g16 g4 a
  g4.. fis16 ees8. fis16 ees8. ees16
  bes4~16 r g8 a[g] bes[a]
  c'8 bes a c' d'4 d
  g4. r16 d d4 d
  d d8. d16 d4 d
  d4. r16 d a,4 bes,
  c a,8 g, a, bes, c cis
  d4 d8 r16 d d4 d
  d d8. d16 d4 d
  d4. r16 d16 a,4 bes,
  c8 bes, a, g, d4 d4 g4.
}

verseOne = \strophemode 1 \lyricmode {
  De bon ma -- tin j'ai ren -- con -- tré le train
  de trois grands rois qui par -- taient en voy -- a -- ge,
  de bon ma -- tin j'ai ren -- con -- tré le train
  de trois grands rois des -- sus le grand che -- min.
  Ve -- naient d'a -- bord les gar -- des du corps,
  les gens ar -- més a -- vec tren -- te pe -- tits pa -- ges,
  ve -- naient d'a -- bord les gar -- des du corps,
  les gens ar -- més des -- sus leur jus -- tau -- corps.
}

\tocItem \markup "La Marche des Rois"
\score {
  \header {
    title = "LA MARCHE DES ROIS"
    composer = "Musique : Jean-Baptiste Lully"
    poet = "Paroles : Joseph-François Domergue"
  }
  \new ChoirStaff <<

    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
      instrumentName = \markup \center-column { " " " " }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>

    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
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
  \midi {
    \tempo 4=90
  }}


\markup \couplets-markup #2 #2 {
  \column {
    "Puis sur un char doré de toutes parts,"
    "On voit trois rois modestes comme d'anges,"
    "Puis sur un char doré de toutes parts,"
    "On voit trois rois parmi les étendards."
    "L'étoile luit et les rois conduits"
    "Par long chemin devant une pauvre étable,"
    "L'étoile luit et les rois conduits"
    "Par long chemin devant l'humble réduit."
  }
  \column {
    "Au Fils de Dieu qui naquit en ces lieux,"
    "Ils viennent tous présenter leurs hommages,"
    "Au Fils de Dieu qui naquit en ces lieux,"
    "Ils viennent tous présenter leurs doux vœux."
    "De beaux présents, or, myrrhe et encens,"
    "Ils vont offrir au Maître tant admirable,"
    "De beaux présents, or, myrrhe et encens,"
    "Ils vont offrir au bienheureux Enfant."
  }
}