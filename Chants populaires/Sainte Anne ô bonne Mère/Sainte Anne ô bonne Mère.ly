\version "2.26.0"
\include "settings.ily"

global = {
  \key g \major
  \time 6/8
  \partial 8
  \autoBeamOff
}

\paper {
  ragged-bottom = ##t
}

soprano = \fixed c' {
  \global
  \markChanson "Refrain"
  b8 b4 a8 b4 c'8
  d'4. d'4 b8
  b4 d'8 d'[ c'] b
  a4. r4 b8
  g4 g8 a[ g] a
  b4. b4 g8
  a[ b] c' b[ a] b
  g2 r8 \break \bar "||"
  \markChanson "Couplets" \repeat unfold 2 {d
  g4 g8 a[ g] a
  b4. b4 g8
  a[ b] c' b[ a] b
  g2 r8 } \bar "|."
}

alto = \fixed c' {
  \global
  g8 g4 fis8 g4 g8
  g4. g4 g8
  g4 g8 b[ a] g
  fis4. r4 fis8
  e4 e8 fis[ e] fis
  g4. f4 f8
  e[ e] e fis[ fis] fis
  d2 \repeat unfold 2 { r8 d
  e4 e8 d4 d8
  d4. d4 d8
  e4 e8 d[ c] d
  d2 } r8
}

tenor = \fixed c {
  \global
  d'8 d'4 d'8 d'4 e'8
  d'4. d'4 e'8
  d'4 d'8 d'[ e'] d'
  d'4. r4 d'8
  e'4 e'8 d'4 d'8
  d'4. d'4 d'8
  e'4 e'8 d'4 d'8
  b2 \repeat unfold 2 { r8 d
  b4 b8 d'4 d'8
  d'4. d'4 b8
  c'[ d']  e' d'[ c'] d'
  b2 } r8
}

bass = \fixed c {
  \global
  d8 4 8 4 c8
  b,4. b,4 c8
  g,4 b,8 g4 g8
  d4. r4 d8
  e4 e8 d4 d8
  g,4. g,4 b,8
  c4 c8 d4 d8
  g2 \repeat unfold 2 { r8 d
  e4 e8 d4 d8
  b,4. 4 8
  c4 c8 d[ c] d
  g2 } r8
}

verseOne = \lyricmode {
  Sainte Anne, ô bon -- ne Mè -- re,
  toi que nous im -- plo -- rons,
  en -- tends no -- tre pri -- è -- re
  et bé -- nis tes Bre -- tons.
  \set stanza = "1."
  Pour mon -- trer à la ter -- re
  que nous croy -- ons au Ciel,
  no -- tre Bre -- tagne est fiè -- re
  d'en -- tou -- rer ton au -- tel.
}

verseTwo = \strophemode #2 ##t #26 \lyricmode {
  Quand l’er -- reur se dé -- chaî -- ne
  pour vain -- cre no -- tre foi,
  puis -- san -- te Sou -- ve -- rai -- ne,
  nous es -- pé -- rons en toi !
}

verseThree = \strophemode #3 ##f #26 \lyricmode {
  Pro -- tè -- ge le Saint -- Pè -- re,
  dont le cœur hum -- ble et grand
  souf -- fre sur le Cal -- vai -- re
  com -- me Jé -- sus mour -- rant.
}

\score {
  \header {
    title = "SAINTE ANNE, Ô BONNE MÈRE"
    composer = "Mélodie bretonne"
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
  \midi { \tempo 4=100 }
}

\markup \couplets-markup #4 #3 {
  \column {
    "Fais que la Sainte Église"
    "Répande en liberté"
    "Sur la terre soumise"
    "L'auguste vérité."
  }
  \column {
    "Rends à la noble France"
    "Sa gloire d'autrefois :"
    "Fais grandir sa puissance"
    "A l'ombre de la Croix."
  }
  \column {
    "Que le monde redise"
    "En tout temps, en tout lieu :"
    "La Fille de l'Église"
    "Est le soldat de Dieu !"
  }
  \column {
    "Soutiens dans la tourmente"
    "Les pauvres matelots :"
    "Sauve la barque errante"
    "De la fureur des flots."
  }
  \column {
    "Conserve à la Bretagne"
    "Ses valeureux soldats :"
    "Ton cœur les accompagne"
    "Au milieu des combats."
  }
  \column {
    "Que le pauvre village"
    "Et les riches cités"
    "Sous ton doux patronage"
    "Soient toujours abrités."
  }
  \column {
    "Ta Fille Immaculée,"
    "Reine au divin séjour,"
    "À notre âme troublée"
    "Sourit avec amour."
  }
  \column {
    "Dis-lui notre misère,"
    "Afin que sa bonté"
    "Fléchisse la colère"
    "De Jésus irrité."
  }
  \column {
    "Ô Sainte Anne, ô Marie,"
    "Nos vœux montent vers vous !"
    "Sauvez notre patrie :"
    "Priez, priez pour nous !"
  }
}