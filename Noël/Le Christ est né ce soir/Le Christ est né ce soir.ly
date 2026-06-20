\version "2.26.0"
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
  b4. a4 fis8 g4 a8 fis4 g8 fis4 e8 d4 e8 fis4.~8 r
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

verseOne = \lyricmode {
  \set stanza = "1."
  Le Christ est né ce soir
  de la Vier -- ge Ma -- ri -- e,
  sous le ciel é -- toi -- lé,
  hors de l’hô -- tel -- le -- ri -- e,
  et dé -- jà Ré -- demp -- teur
  en des -- cen -- dant du Ciel,
  il a de son ber -- ceau
  fait son pre -- mier au -- tel.
}
verseOneTenor = \lyricmode {
  \set stanza = "1."
  Le Christ est né ce soir
  de la Vier -- ge Ma -- ri -- e,
  sous le ciel é -- toi -- lé,
  hors de l’hô -- tel -- le -- ri -- e,
  et dé -- jà Ré -- demp -- teur
  en des -- cen -- dant du Ciel,
  il a de son ber -- ceau,
  il a fait son pre -- mier au -- tel.
}


verseTwo = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 2.
  Ce soir comme un é -- cho
  du fond de Pa -- les -- ti -- ne,
  de val -- lon en val -- lon,
  de col -- line en col -- li -- ne,
  les clo -- ches se sont dit
  l’an -- gé -- li -- que No -- ël_;
  aux hom -- mes paix sur terre
  et gloire au Dieu du ciel_!
}
verseTwoTenor = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 2.
  Ce soir comme un é -- cho
  du fond de Pa -- les -- ti -- ne,
  de val -- lon en val -- lon,
  de col -- line en col -- li -- ne,
  les clo -- ches se sont dit
  l’an -- gé -- li -- que No -- ël_;
  aux hom -- mes paix sur terre et gloire,
  et gloire au Dieu du ciel_!
}

verseThree = \lyricmode {
  \set stanza = "3."
  A -- vec les pas -- tou -- reaux,
  loin du mon -- de cou -- pa -- ble,
  ah_! Ve -- nez à ge -- noux
  au seuil de cette é -- ta -- ble.
  Jé -- sus no -- tre Sau -- veur
  at -- tend comme au -- tre -- fois
  l’hom -- ma -- ge de nos cœurs_:
  Il est le Roi des rois_!
}
verseThreeTenor = \lyricmode {
  \set stanza = "3."
  A -- vec les pas -- tou -- reaux,
  loin du mon -- de cou -- pa -- ble,
  ah_! Ve -- nez à ge -- noux
  au seuil de cette é -- ta -- ble.
  Jé -- sus no -- tre Sau -- veur
  at -- tend comme au -- tre -- fois
  l’hom -- ma -- ge de nos cœurs_:
  Il est, Il est le Roi des rois_!
}


\paper {
  print-all-headers = ##t
  tagline = ##f
}
\tocItem \markup "Le Christ est né ce soir"
\score {
  \header {
    title = "LE CHRIST EST NÉ CE SOIR"
    poet = "Mélodie : Noël de Basse-Bretagne"
    composer = "Harmonisation : Bernard Lallement (1936-2023)"
  }

  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
    } \new Voice = "soprano" \soprano
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
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verseThree
    
    \new Staff \with {
      midiInstrument = "choir aahs"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \verseOneTenor
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \verseTwoTenor
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \verseThreeTenor
    
    \new Staff \with {
      midiInstrument = "choir aahs"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \verseThree
    
  >>
  \layout { \context{\Staff \RemoveAllEmptyStaves}}
  \midi {\tempo 4=90}
}
