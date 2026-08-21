\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key d \major
  \numericTimeSignature
  \time 6/8
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \sectionLabel \markup \bold "Couplets"
  fis4 fis8 fis e fis
  a4(b8) a4.
  d4 d8 d cis d
  e4. r
  fis4 fis8 fis e fis
  a4(b8) a4.
  d'4 cis'8 b cis' b
  a4 r8\break \bar "||"
  \sectionLabel \markup \bold "Refrain"
  a4 fis8 a4 fis8
  a b a g4.
  g4 e8 g4 e8
  g a g fis4.
  d'4 cis'8 b4 a8
  a g e d4. \bar "|."
}

alto = \fixed c' {
  \global
  d4 d8 d cis d
  fis4. fis
  b,4 b,8 b, a, b,
  cis4. r
  d4 d8 d d d
  fis4. fis
  g4 e8 8 8 8
  e4 r8
  fis4 d8 fis4 d8
  fis g fis e4.
  e4 8 4 8
  e fis e d4.
  fis4 8 g4 fis8
  e a, a, a,4.
}

tenor = \fixed c {
  \global
  a4 a8 a a a
  d'4. cis'
  b4 g8 g a g
  a4. r
  a4 a8 a a a
  d'4. cis'
  b4 b8 8 cis'8 b8
  cis'4 r8
  
  d'4 8 4 8 a g a
  b4. b4 g8
  b4 g8 b a g
  a4. a4 a8
  d'4 8 cis' b a fis4.
}

bass = \fixed c {
  \global
  d4 8 8 8 8
  fis4. 4.
  b,4 8 d cis d
  e4. r
  d4 8 8 8 8
  a,4. 4.
  g,4 8 8 8 8
  a,4 r8 d4 d8
  d4 8 8 8 8
  b4. b,4 b,8
  b,4 b,8 b, cis8 8
  d4. 4 8
  4 8 cis8 8 8
  d4.
}

verseOne = \strophemode #1 ##f\lyricmode {
  Noble é -- poux de Ma -- ri -- e,
  digne ob -- jet de nos chants,
  no -- tre cœur vous sup -- pli -- e,
  veil -- lez sur vos en -- fants_!
  Veil -- lez, veil -- lez sur vos en -- fants,
  veil -- lez, veil -- lez sur vos en -- fants,
  veil -- lez, veil -- lez sur vos en -- fants_!
}

verseTwo = \strophemode #2 ##t \lyricmode {
  Le Sau -- veur_ sur la ter -- re,
  re -- çut vos soins tou -- chants_;
  vous qu'il nom -- ma son pè -- re,
  veil -- lez sur vos en -- fants_!
}

verseThree = \strophemode #3 ##f \lyricmode {
  Té -- moin de sa nais -- san -- ce,
  et de ses jeu -- nes ans,
  gar -- dien de son en -- fan -- ce,
  veil -- lez sur vos en -- fants_!
}

verseFour = \strophemode #4 ##t \lyricmode {
  Au jour de la co -- lè -- re,
  vous ra -- vîtes aux ty -- rans
  le Sau -- veur et sa Mè -- re_;
  veil -- lez sur vos en -- fants_!
}

\tocItem \markup "Noble époux de Marie"
\score {
  \header {
    title = "NOBLE ÉPOUX DE MARIE"
    composer = \laprise
    poet = \markup {"Harmonisation :" \kergall }
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
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 4.=60 }
}

\markup \couplets-markup #5 #2 {
  \column {
    "Vous dont l'obéissance,"
    "En ces dangers pressants,"
    "Devint leur providence,"
    "Veillez sur vos enfants !"
  }
  \column {
    "Vous dont la main féconde"
    "A nourri si longtemps"
    "Le Créateur du monde,"
    "Veillez sur vos enfants !"
  }
  \column {
    "Que votre main bénisse,"
    "Ô Patron des mourrants,"
    "Mon dernier sacrifice ;"
    "Veillez sur vos enfants !"
  }
  \column {
    "Votre amour nous rassemble :"
    "Gardez-nous innocents !"
    "Nous vous prions ensemble :"
    "Veillez sur vos enfants !"
  }
}