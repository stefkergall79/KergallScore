\version "2.26.0"
\include "../../settings.ily"
global = {
  \key f \major
  \numericTimeSignature
  \time 6/8
  \autoBeamOff
  \partial 4.
}

sopranoVoice = \fixed c' {
  \global
  \markChanson "Couplets"
  \repeat unfold 2 {
    f4 8 8[e] f g a g f4.
    a4 8 4 c'8 8 bes a8 4. g
  } \bar "||" \break
  \markChanson "Refrain"
  f8 g a bes4. g8 a bes c'4.
  d'4 8 c'4 a8 c' bes g a4.
  f8 g a bes4. g8 a bes c'4.
  d'4 8 c'4 a8 c' bes g f4.
  \bar "|."
}

verseOne = \strophemode 1 \lyricmode {
  Vi -- ve Jé -- sus, vi -- ve sa Croix_!
  Oh_! Qu'il est bien jus -- te qu'on l'ai -- me,
  puis -- qu'en ex -- pi -- rant sur ce bois,
  il nous ai -- ma plus que lui -_mê -- me.
  \repeat unfold 2 {
    Chré -- tiens chan -- tons à hau -- te voix_:
    Vi -- ve Jé -- sus, vi -- ve sa Croix_!
  }
}

verseTwo = \strophemode 2 \lyricmode {
  Vi -- ve Jé -- sus, vi -- ve sa Croix_!
  C'est l'é -- ten -- dard de sa vic -- toi -- re_;
  de ce trône il don -- ne ses lois,
  il con -- quiert le ciel et sa gloi -- re.
}

verseThree = \strophemode 3 \lyricmode {
  Vi -- ve Jé -- sus, vi -- ve sa Croix_!
  De nos biens la sour -- ce fé -- con -- de_!
  saint au -- tel où le Roi des rois,
  en mou -- rant ra -- chè -- te le mon -- de.
}

\tocItem \markup "Vive Jésus, vive sa Croix"
\score {
  \header {
    title = "VIVE JÉSUS, VIVE SA CROIX"
    poet = "Paroles : Saint Louis-Marie Grignon de Montfort"
  }
  \new Staff \with {
    midiInstrument = "choir aahs"
  } { \sopranoVoice }
  \addlyrics { \verseOne }
  \addlyrics { \verseTwo }
  \addlyrics { \verseThree }
  \layout { }
  \midi {\tempo 4.=70}
}
  
\markup \couplets-markup #4 #2 {
  \column {
    "Vive Jésus ! Vive sa Croix !"
    "La chaire de son éloquence"
    "Où me prêchant ce que je crois,"
    "Il m'apprend tout par son silence."
  }
  \column {
    "Vive Jésus ! Vive sa Croix !"
    "Ce n'est pas le bois que j'adore,"
    "Mais c'est mon Sauveur sur ce bois"
    "Que je révère et que j'adore."
  }
  \column {
    "Vive Jésus ! Vive sa Croix !"
    "Dans la main du Juge inflexible,"
    "Les damnés, tremblant à sa voix"
    "Te verront, ô Croix invincible !"
  }
  \column {
    "Vive Jésus ! Vive sa Croix !"
    "Prenons-là pour notre partage."
    "Ce juste, cet aimable choix"
    "Conduit au céleste héritage."
  }
}