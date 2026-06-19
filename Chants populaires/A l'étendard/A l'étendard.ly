\version "2.24.4"

\header {
  title = "À L'ÉTENDARD"
  arranger = "Abbé Marcel Laurent"
  meter = "Paroles : Chanoine Gustave Vié"
  piece = " "
  tagline = ##f
}

global = {
  \key g \major
  \time 4/4
  \partial 16
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \sectionLabel"Couplet"
  d'16 d'4.. b16 b8. a16 g8. a16
  b4 g4. r16 d d8. a16
  a4. r16 a b4 g
  d'2.. r16 d'
  d'4.. b16 b8. a16 g8. a16
  b4 g4. r16 fis fis8. b16
  b4. r16 b cis'4 cis'
  dis'2~8 r16 b16 b8. b16
  c'4 a a8. a16 g8. a16
  b4 g4. r8 g8. g16
  bes4 bes8. bes16 g4 g
  a2~8 r16 a a8. a16
  c'4 a8. a16 a4 g8. a16
  bes4 g4. r16 g g8. g16
  bes4.. bes16 c'4.. c'16
  d'2~8 r
  \bar "||" \break \sectionLabel"Refrain"
  d'8. d'16
  b2 b8. a16 g8. a16
  b2 g8 r16 e e8. e16
  a4 b8. b16 c'4 d'8. d'16
  e'2~8 r16 e e8. e16
  a4 g fis8. fis16 e8. e16
  d2 d8 r \autoBeamOn \tuplet 3/2 {d b, d}
  g2~8 r \tuplet 3/2 {g d g}
  b2~8 r \tuplet 3/2 {e c e}
  a2~8 r \tuplet 3/2 {a e a} \autoBeamOff
  c'2~8 r16 c' c'8. c'16
  c'2~8 r c'8. c'16
  e'2 c'8 r \autoBeamOn \tuplet 3/2 {c' b a}
  d'1 g2.. \bar "|."
}

alto = \fixed c' {
  \global
  g16 g4.. d16 d8. d16 d8. d16
  d4 d4. r16 d d8. fis16
  fis4. r16 fis d4 d
  fis2.. r16 g
  g4.. d16 d8. d16 d8. d16
  d4 d4. r16 fis fis8. fis16
  fis4. r16 fis fis4 fis
  fis2~8 r16 dis16 dis8. dis16
  e4 e d8. d16 d8. d16
  d4 d4( ees8) r ees8. ees16
  d4 d8. d16 d4 d
  d2~8 r16 d d8. d16
  d4 d8. d16 d4 d8. d16
  d4 d4. r16 d d8. d16
  g4.. g16 a4.. g16
  fis2~8 r
  \bar "||" \break
  d8. d16
  g2 g8. d16 b,8. d16
  d2 d8 r16 e e8. e16
  e4 d8. d16 e4 a8. a16
  gis2~8 r16 e e8. e16
  cis4 e d8. d16 cis8. cis16
  a,2 a,8 r \autoBeamOn \tuplet 3/2 {d b, d}
  d2~8 r \tuplet 3/2 {g d g}
  g2~8 r \tuplet 3/2 {e c e}
  e2~8 r \tuplet 3/2 {a e a} \autoBeamOff
  a2~8 r16 e e8. e16
  f2~8 r f8. f16
  e2 e8 r \autoBeamOn \tuplet 3/2 {e e e}
  g2( fis2) d2..

}

tenor = \fixed c {
  \global
  b16 b4.. g16 g8. d16 d8. fis16
  g4 g4. r16 g g8. d16
  d4. r16 d g4 b
  a2.. r16 b
  b4.. g16 g8. d16 d8. fis16
  g4 g4. r16 fis fis8. fis16
  fis4. r16 fis ais4 ais
  b2~8 r16 fis16 fis8. fis16
  a4 a fis8. fis16 e8. fis16
  g4 g8.[a16 bes8] r c'8. c'16
  bes4 g8. g16 g4 g
  fis2~8 r16 fis fis8. fis16
  a4 fis8. fis16 fis4 e8. fis16
  g4 g4. r16 bes bes8. bes16
  g4.. g16 g4.. g16
  a2~8 r
  \bar "||" \break
  g8. a16
  b2 g8. a16 b8. a16
  g2 b8 r16 e e8. e16
  e4 gis8. gis16 a4 a8. a16
  b2~8 r16 e e8. e16
  e4 a a8. a16 a8. a16
  fis2 fis8 r \autoBeamOn \tuplet 3/2 {d b, d}
  b2~8 r \tuplet 3/2 {g d g}
  d'2~8 r \tuplet 3/2 {e c e}
  c'2~8 r \tuplet 3/2 {a e a} \autoBeamOff
  e'2~8 r16 a a8. a16
  a2( f8) r a8. a16
  gis2 a8 r \autoBeamOn \tuplet 3/2 {a a a}
  b2( a2) b2..

}

bass = \fixed c {
  \global
  b,16 b,4.. g16 g8. d16 b,8. d16
  g4 b,4. r16 b, b,8. d16
  d4. r16 d g,4 b,
  d2.. r16 b,
  b,4.. g16 g8. d16 b,8. d16
  g4 b,4. r16 fis fis8. d16
  d4. r16 d cis4 cis
  b,2~8 r16 b, b,8. b,16
  a,4 c d8. d16 d8. d16
  g4 g8.[ f16 ees8] r c8. c16
  g,4 g,8. a,16 bes,4 g,
  d2~8 r16 d d8. d16
  d4 d8. d16 c4 bes,8. a,16
  g,4 bes,4. r16 g g8. fis16
  ees4.. ees16 ees4.. ees16
  d2~8 r b,8. d16

  g2 g8. d16 b,8. d16
  b,2 b,8 r16 e e8. d16
  c4 b,8. b,16 a,4 f8. f16
  e2~8 r16 e e8. e16
  a,4 cis d8. d16 a,8. a,16
  d2( d8) r4.
  r4 \autoBeamOn \tuplet 3/2 {d8 b, d}
  g,2~8 r \tuplet 3/2 {g, b, d}
  g2~8 r \tuplet 3/2 {e c e}
  a,2~8 r \tuplet 3/2 {a, c e} a
  \autoBeamOff r16 a a8. a16
  f2~8 r f8. f16
  e2 a,8 r \autoBeamOn \tuplet 3/2 {a, b, c}
  d1 g,2..
}

verseOne = \lyricmode {
  \set stanza = "1."
  Son -- nez, fan -- fa -- res tri -- om -- pha -- les_!
  Ton -- nez ca -- nons, bat -- tez tam -- bours_!
  Et vous, clo -- ches des ca -- thé -- dra -- les,
  é -- bran -- lez- vous comme aux grands jours_!
  En ce mo -- ment la Fran -- ce toute en -- tiè -- re
  est de -- bout a -- vec ses en -- fants,
  pour sa -- lu -- er com -- me nous la ban -- niè -- re
  de la Pu -- cel -- le d'Or -- lé -- ans_!
  É -- ten -- dard de la dé -- li -- vran -- ce
  à la vi -- ctoi -- re_il me -- na nos aï -- eux,
  à leurs en -- fants il prê -- che l'e -- spé -- ran -- ce.
  Fils de ces preux, chan -- tons com -- me_eux,
  fils de ces preux, chan -- tons com -- me_eux,
  chan -- tons com -- me_eux_: Vi -- ve Jean -- ne, vi -- ve la Fran -- ce_!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Sa -- lut à la blan -- che ban -- niè -- re,
  sa -- lut, sa -- lut aux noms bé -- nis
  du Christ et de sa Sain -- te- Mè -- re
  ins -- crits par Jean -- ne dans ses plis.
  Par eux, ja -- dis, el -- le sau -- va la Fran -- ce,
  ai -- mons- les donc comme au -- tre -- fois,
  et de nou -- veau con -- sa -- crons l'al -- li -- an -- ce
  de notre é -- pée a -- vec la Croix_!
}

\score {
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
  \layout { }
  \midi {
    \tempo 4=100
  }
}
