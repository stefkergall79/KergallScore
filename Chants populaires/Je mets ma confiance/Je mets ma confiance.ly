\version "2.26.0"
\include "../../settings.ily"
global = {
  \key g \major
  \time 3/4
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  \repeat unfold 2 {
    e4 b4. 8 fis g a4 8 r8
    e4 g4. a8 fis g e4 r4
  }
  e4 fis4. g8 e fis g4 fis8 r8
  g4 a4. g8 fis e8 4(d?8)r8
  e4 fis4. g8 e fis g4 fis8 r
  g4 e4. fis8 e d? e2\bar"|."
}

alto = \fixed c' {
  \global
  \repeat unfold 2 {
    e4 g4. 8 fis e fis4 8 r
    e4 4. 8 d d e4 r
  }
  e4 d4. 8 8 8 4 8 r
  e4 4. 8 c c b,4. r8
  e4 d4. 8 8 8 4 8 r
  e4 c4. 8 b,8 8 2
}

tenor = \fixed c {
  \global
  \repeat unfold 2 {
    e4 4. 8 8 8 d4 8 r
    c4 4. 8 b,8 8 e4 r
  }
  4 a4. b8 g a b4 a8 r
  b4 c'4. 8 a a fis4. r8
  e4 a4. b8 g a b4 a8 r
  b4 a4. 8 fis8 8 g2
}

bass = \fixed c {
  \global
  \repeat unfold 2 {
    e4 4. 8 8 8 d4 8 r
    c4 4. 8 b,8 8 e4 r
  }
  e4 d4. 8 8 8 g4 d8 r
  e4 a,4. 8 8 8 b,4. r8
  e4 d4. 8 8 8 g4 d8 r
  e4 a,4. 8 b,8 8 e2
}

verseOne = \strophemode 1 \lyricmode {
  Je mets ma con -- fi -- an -- ce,
  Vierge, en vo -- tre se -- cours,
  ser -- vez -_moi de dé -- fen -- se,
  pre -- nez soin de mes jours_;
  et quand ma der -- nière heu -- re
  vien -- dra fi -- xer mon sort,
  Ob -- te -- nez que je meu -- re
  De la plus sain -- te mort.
}

verseTwo = \strophemode 2 \lyricmode {
  Sain -- te Vier -- ge Ma -- ri -- e,
  a -- si -- le des pé -- cheurs,
  pre -- nez part, je vous pri -- e,
  à mes jus -- tes fray -- eurs_;
  Vous ê -- tes mon re -- fu -- ge,
  Vo -- tre Fils est mon Roi,
  mais Il se -- ra mon Ju -- ge,
  in -- ter -- cé -- dez pour moi.
}

\tocItem \markup "Je mets ma confiance"

\score {
  \header {
    title = "JE METS MA CONFIANCE"
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
    "Ah ! Soyez-moi propice"
    "Avant que de mourir,"
    "Apaisez Sa justice,"
    "Je crains de la subir ;"
    "Mère pleine de zèle,"
    "Protégez votre enfant,"
    "Je vous serai fidèle"
    "Jusqu’au dernier instant."
  }
  \column {
    "À dessein de vous plaire,"
    "O Reine de mon cœur !"
    "Je promets de rien faire"
    "Qui blesse votre honneur :"
    "Je veux que, par hommage,"
    "Ceux qui me sont sujets,"
    "En tous lieux, à tout âge,"
    "Prennent vos intérêts."
  }
  \column {
    "Voyez couler mes larmes,"
    "Mère du bel Amour ;"
    "Finissez mes alarmes"
    "Dans ce mortel séjour :"
    "Venez rompre ma chaîne,"
    "Pour m’approcher de vous,"
    "Aimable Souveraine,"
    "Que mon sort serait doux !"
  }
  \column {
    "Vous êtes, Vierge Mère,"
    "Après Dieu, mon support ;"
    "Je sais qu’Il est mon Père,"
    "Mais vous êtes mon fort :"
    "Faites que dans la gloire,"
    "Parmi les bienheureux,"
    "Je chante la victoire"
    "Du Monarque des cieux."
  }
}
