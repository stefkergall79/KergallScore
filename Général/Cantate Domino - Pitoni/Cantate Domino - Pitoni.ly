\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key bes \major
  \time 3/4
  \autoBeamOff
  \tempo "Allegro con spirito"
}

soprano = \fixed c' {
  \global
  \repeat segno 2 {
    g4 4 fis g4. 8 4 bes2. 4.(a8[bes c']d'2.) 2
    a4 bes4 4 a bes2 a4 g4. 8 4 4. 8 4 fis4 4
    4 g g a8 8 bes4. 8 4 4 4.(a8) bes4
    4 4 a2 4 g2 4 2(fis4) g2. \fine\bar"|."
    
    a4 4 4 4. 8 4 4 g2 a2 4 g g bes a a a~4 4.(g8) a2
    4 bes2 4~4 a2 2
    fis4 g4. 8 a4 g g a bes4. 8 c'4 bes4 4
    d' bes g2 d'2. bes4 g g bes4 4 a g2 4~4 4.(fis8) g2
    fis4 g g a bes4 4 a g2 4~4 4.(fis8)g2.\bar"||"
  }
}

alto = \fixed c' {
  \global
  d4 4 4 4. 8 4 g2. f4(d8[c d es]f2.)d2
  f4 4 4 4 2 4 d4. 8 4 es4. 8 d4 4 4
  4 4 4 f8 8 4. 8 g4 4 f2 4
  4 4 2 4 d2 4 2. 2.
  
  f4 4 e f4. 8 4 4 d2 e2
  f4 e e g f f f~4 4.(e8)f2
  4 2 g4~4 e2 fis d4 4. 8 4 4 4
  f? f4. 8 4 4 4 r4 r2 g4 f d
  r4 r2 es4 f f f d2 es4~4 d2 2 4 4 4 f f f f d2 es4~4 d2 2.
  
}

tenor = \fixed c {
  \global
  bes4 4 a bes4. 8 4 4.(a8[bes c'] d'2.)4.(c'8[d' es'] f'4) d'
  c' d'4 4 c' d'2 c'4 bes4. 8 4 c'4. 8 bes4 a4 4
  4 bes4 4 c'8 8 d'4. 8 4 es'4 c'2 d'4
  4 4 c'2 4 bes2 4 a2. b2.
  
  d'4 4 cis' d'4. 8 4 4 2 cis'2
  c'4 4 4 d'4 4 4 c'~4 d'2 c'2
  4 d'2 4~4 4(cis')d'2
  a4 bes4. 8 a4 bes4 4 c' d'4. 8 c'4 d'4 4
  r4 r2 es'4 d' bes r r2 bes4 d'4 4 c' bes2 c'4~4 a2 bes
  a4 bes4 4 c' d'4 4 c' bes2 c'4~4 a2 b2.
}

bass = \fixed c {
  \global
  g4 4 d g4. 8 4 4.(f8[g a] bes2.)2. 2
  f4 bes4 4 f bes2 f4 g4. 8 4
  c'4. 8 g4 d d d g g f8 8 bes4. a8 g4 es f2 bes,4
  bes4 4 f2 4 g2 4 d2. g
  
  d4 f a d4. 8 4 4 bes2 a f4 c'4 4 g d'4 4
  a~4 bes2 f2 4 bes2 g4~4 a2 d2
  4 g4. 8 fis4 g4 4 f bes4. 8 a4 bes4 4
  4 g es2 r2 bes4 g es4 4 bes4 4 f g2 c4~4 d2 g
  d4 g g f bes4 4 f g2 c4~4 d2 g,2.
  
}

verseAlto = \lyricmode {
  Can -- tá -- te Dó -- mi -- no,
  can -- tá -- te, can -- tá -- te,
  can -- tá -- te Dó -- mi -- no,
  cán -- ti -- cum nó -- vum_;
  laus é -- jus
  in ec -- clé -- si -- a san -- ctó -- rum,
  in ec -- clé -- si -- a san -- ctó -- rum.
  
  Læ -- té -- tur Is -- ra -- ël in é -- o,
  læ -- té -- tur, læ -- té -- tur in é -- o,
  qui fé -- cit é -- um_:
  et fi -- li -- æ Sí -- on, et fi -- li -- æ Sí -- on
  e -- xúl -- tent,
  e -- xúl -- tent in re -- ge su -- o,
  e -- xúl -- tent, e -- xúl -- tent in re -- ge su -- o,
}

verseExultent = \lyricmode {
  e -- xúl -- tent, e -- xúl -- tent,
}

verseBass = \lyricmode {
  \repeat unfold 6 \skip1
  can -- tá -- te,
  \repeat unfold 68 \skip1
  \verseExultent
}
verseSoprano = \lyricmode {
  \repeat unfold 77 \skip1
  \verseExultent
}


\paper {
  system-system-spacing.basic-distance = #14
}
\tocItemComposer "Cantáte Dómino" "Pitoni"
\score {
  \header {
    title = "CANTATE DOMINO"
    composer = \pitoni
  }
  \new ChoirStaff <<
    \new Staff = "upStaff" \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
      alignAboveContext = #"upStaff"
    } \lyricsto "soprano" \verseSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verseAlto
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \verseBass
    
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 2.=50 }
}
