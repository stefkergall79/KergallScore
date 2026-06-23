\version "2.26.0"
\include "../../settings.ily"
global = {
  \once \omit Staff.TimeSignature
  \key bes \major
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \cadenzaOn
  \markChanson \markup \italic "Chantre"
  d'8 8 8 bes es' c' \bar"|" d' c' bes c' d'4 \bar"||"\break
  \markChanson \markup \italic "Tous"
  d'8 8 8 bes es' c' \bar"|" d' c' bes c' d'4 \bar"||"\break
  \markChanson \markup \italic "Chantre"
  bes8 8 8 d' c' g\bar"|" bes a g a bes4 \bar"||"\break
  \markChanson \markup \italic "Tous"
  bes8 8 8 d' c' g\bar"|" bes a g a bes4 \bar"||"\break
  
  \break \markChanson "Refrain" \cadenzaOff \time 4/4
  c'2 4 d' g2 4 a4 bes2 a g \bar "||"
}

alto = \fixed c' {
  \global
  s1*6
  g2 4 f4  2 es4 4 d2 c bes,2
}

tenor = \fixed c {
  \global
  s1*6
  g2 4 a g2 4 fis g2 fis bes
}

bass = \fixed c {
  \global
  s1*6
  es2 4 bes, c2 4 4 d2 2 g,
}

verseOne =  \strophemode 1 \lyricmode {
  Ô Vier -- ge Ma -- ri -- e, Mè -- re du Très -_Haut,
  Mè -- re du Mes -- si -- e, le Di -- vin A -- gneau,
  Vierge in -- com -- pa -- ra -- ble, Es -- poir d'Is -- ra -- ël,
  Vier -- ge tout ai -- ma -- ble, clair par -- vis du Ciel,
  
  Vier -- ge Ma -- ri -- e, pri -- ez pour nous.
}

verseTwo = \strophemode 2 \lyricmode {
  Ô Mè -- re très pu -- re du Christ Ré -- demp -- teur,
  Mè -- re sans souil -- lu -- re, Mè -- re du Sau -- veur,
  Vier -- ge vé -- né -- ré -- e, Mys -- tique at -- tri -- but,
  Mè -- re très ai -- mé -- e, Por -- te du sa -- lut.
}

\tocItem \markup "Ô Vierge Marie"
\score {
  \header {
    title = "Ô VIERGE MARIE"
    composer = "Charles Bordes (1863-1909)"
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
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        \consists Merge_rests_engraver
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
  \layout {\context{\Staff \RemoveAllEmptyStaves}}
  \midi {\tempo 4=70}
}

\markup \couplets-markup #3 #2 {
  \column {
    "Mystique édifice, Arche de la Loi,"
    "Ô Céleste tige, Branche de Jessé,"
    "Illustre prodige au monde annoncé."
  }
  \column {
    "Fleur de Galilée, Rose de Saron,"
    "Tendre et chaste Mère, pleine de bonté,"
    "Voyez ma misère, Lys de pureté."
  }
  \column {
    "À vous nos louanges, Trésor de tous biens."
    "Reine du Rosaire, Ô Temple immortel,"
    "À vous ma prière, Parure du ciel."
  }
  \column {
    "Source d'allégresse, notre seul bonheur,"
    "Reine d'espérance, guérissez nos cœurs ;"
    "Notre délivrance, Salut des pécheurs."
  }
}
