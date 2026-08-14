\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

#(set-global-staff-size 18.7 )

global = {
  \key f \major
  \time 3/8
  \autoBeamOff
}

solo = \fixed c' {
  \global
  R4.*7 \break
  \repeat unfold 2 {
    a8 a f g4 a16[bes] a4 8
    d8 f a g4 e16[f] d4.
  }
  R4.*7
  a8 a f g4 a16[bes] a4 8
  d8 f a g4 e16[f] d4.\fermata
}

verseOneSolo = \strophemode 1 ##f \lyricmode {
  Il gèle à pier -- re fen -- dre,
  ô qu’il fait froid ce soir_;
  et l’âp -- re nuit vient ten -- dre
  son grand man -- teau tout noir.

  Et blot -- ti dans la crè -- che,
  l’En -- fant gé -- mit de froid.
}

verseTwoSolo = \strophemode 2 ##t \lyricmode {
  Il git sur pau -- vre pail -- le
  en -- tre deux a -- ni -- maux.
  Où vou -- lez -_vous qu’il ail -- le_?
  C’est le Fils du Très -_Haut.

  Tous les cœurs sont de gla -- ce
  quand Dieu des -- cend chez nous.
}

verseThreeSolo = \strophemode 3 ##f \lyricmode {
  Le pau -- vre qui fris -- son -- ne,
  le gueux qui meurt de faim,
  l’En -- fant qu’on a -- ban -- don -- ne,
  c’est Dieu qui tend la main.

  Puis -- ses -_tu nous ap -- pren -- dre
  un peu d’a -- mour, Sei -- gneur.

}


soprano = \fixed c' {
  \global
  a4. g bes a a g8[f g] a4.\fermata \bar "||"
  a g a d e d a bes e f g f \bar "||"
  
  a8 a g a4 b8 c'4. g c'8 d' c' a4 g8 f4. \bar "||" \break
  a4. 4 g8 f4. f e f\fermata \bar "|."
}

alto = \fixed c' {
  \global
  f4. e e f d d cis
  d e e d cis a, f e e d d4 cis8 d4.
  f8 f g f4 8 e4. e f8 f f e4 8 f4.
  d cis d d d4 cis8 d4.
}

tenor = \fixed c {
  \global
  \mergeDifferentlyDottedOn
  d4. d cis d4 e8 f4. e e\fermata
  f bes a f a4 g8 f4. f g a f a a
  d'8 8 8 c'4 g8 4. g a8 bes a c'4 bes8 a4.
  a4. a a bes a a\fermata
}

bass = \fixed c {
  \global
  d4. d cis d4 c!8 bes,4. 4. a,
  d d c bes, a, d d cis c! bes, a, d
  d8 8 e f[e] d c4. c f8 f f c4 8 f4.
  f e d g a4 a,8 d4.
}

verseOne = \strophemode 1 ##f 19 \lyricmode {
  Le vent chas -- sant la nei -- ge
  s’en -- gouf -- fre sous le toit.
}

verseTwo = \lyricmode {
  \override LyricText.font-shape = #'italic
  B.F. \repeat unfold 6 \skip1
  \repeat unfold 2 {B.F. \repeat unfold 5 \skip1 }
  \set stanza = \markup \italic 2.
  Il n’y a pas de pla -- ce,
  ils ont frap -- pé par -- tout.
  B.F.
}

verseThree = \strophemode 3 ##f 19 \lyricmode {
  Il gèle à pier -- re fen -- dre,
  c'est l'hi -- ver dans nos cœurs.
}

soloPart = << \new Staff \with {
  shortInstrumentName = "Sl."
    midiInstrument = "choir aahs"
  } \new Voice = "sopranoVoice" \solo
  \new Lyrics \lyricsto "sopranoVoice" \verseOneSolo
  \new Lyrics \lyricsto "sopranoVoice" \verseTwoSolo
  \new Lyrics \lyricsto "sopranoVoice" \verseThreeSolo
>>

choirPart = \new ChoirStaff <<
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

\tocItem \markup "Il gèle à pierre fendre"
\score {
  \header {
    title = "IL GÈLE À PIERRE FENDRE"
    arranger = \markup {"Harmonisation : " \jrevert}
    composer = "Noël de Saintonge"
    poet = \markup {"Paroles :" \coutelle}
  }
  <<
    \soloPart
    \choirPart
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 8=80}
}
