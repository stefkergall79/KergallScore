\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

#(set-global-staff-size 18.2)

global = {
  \key g \major
  \numericTimeSignature
  \time 6/8
  \partial 4.
  \autoBeamOff
  e8 e e
}

soprano = \fixed c' {
  \global
  b4 a8 a[ g] fis
  g4( fis8) e4 r8
  g4. a4 b8
  fis4.~8 r8 b
  b4. e8 fis g
  e4.( d4) r8
  g g g a4 b8
  b4 a8 b4( a8)
  g4 r8 b8[ a] b
  e4. a8[ g] fis
  g a b g[ fis] e e4.\bar"|."

}

alto = \fixed c' {
  \global
  e4 e8 e4 e8
  e4( dis8) b,4 r8
  d4. e4 e8
  d4.~8 r8 d
  d4. c8 c c
  c4.( a,4) r8
  d d d e4 e8
  d4 d8 c4.
  b,4 r8 e4 e8
  c4. c4 c8
  e e e dis4 dis8 e4.
}

tenor = \fixed c {
  \global
  b4 b8 c'4 c'8
  b4( a8) g4 r8
  g4. g4 g8
  a4.~8 r8 a
  g4. g8 g g
  a4( g8 fis4) r8
  g g g g4 g8
  g4 g8 fis4.
  g4 r8 b4 b8
  a4. a4 a8
  b b b a4 a8 g4.
}

bass = \fixed c {
  \global
  g,4 g,8 a,4 a,8
  b,4. e4 r8
  b,4. c4 c8
  c4.(b,8) r8 a,
  b,4. c8 c c
  a,4.( d4) r8
  b, b, b, c4 c8
  d4 d8 d4.
  g,4 r8 g4 g8
  g4. fis4 fis8
  e e e b,4 b,8 e4.
}

verseOne = \strophemode #1 ##f \lyricmode {
  Sui -- vons sur la mon -- ta -- gne sain -- te
  No -- tre Sau -- veur san -- glant, dé -- fi -- gu -- ré_;
  et mar -- chons a -- près lui sans crain -- te
  sous le poids, sous le poids de l'ar -- bre sa -- cré.
}

verseTwo = \strophemode #2 ##t \lyricmode {
  Hé -- las, sous cet -- te croix pe -- san -- te,
  Di -- vin A -- gneau, vous por -- tez nos pé -- chés_;
  c'est sur vo -- tre chair in -- no -- cen -- te
  que l'a -- mour, que l'a -- mour les tient at -- ta -- chés.
}

verseThree = \strophemode #3 ##f \lyricmode {
    Ô Ciel_! le Dieu de la na -- tu -- re
    tombe af -- fai -- bli sous son cru -- el far -- deau,
    et sa per -- fi -- de cré -- a -- tu -- re,
    sans pi -- tié, sans pi -- tié de -- vient son bour -- reau_!
}

\score {  
  \header {
    title = "SUIVONS SUR LA MONTAGNE SAINTE"
    composer = \markup {"Paroles :" \montfort}
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
  \midi { \tempo 4=90}
}

\markup \couplets-markup #4 #2 {
  \column {
    "Où courez-vous, divine Mère ?"
    "Où courez-vous, Marie ? Ah ! je frémis :"
    "Bientôt, sur ce triste Calvaire,"
    \line{ Va mourir, \normal-text \bold{(bis)} votre aimable Fils.}
  }
  \column {
    "Puisque c’est moi qui suis coupable,"
    "Retirez-vous, faible Cyrénéen :"
    "Je veux seul, ô Croix adorable,"
    \line{ Vous porter,\italic \bold{(bis)} mais en vrai chrétien !}
  }
  \column {
    "Seigneur, hélas ! qu’est devenue"
    "Votre beauté qui réjouit les saints ?"
    "Faibles mortels, à cette vue"
    \line{ Serez-vous,\normal-text \bold{(bis)} endurcis et vains ?}
  }
  \column {
    "Sous les coups des bourreaux perfides,"
    "Jésus-Christ tombe une seconde fois ;"
    "Et ces infâmes déicides"
    \line{ Le voudraient,\italic \bold{(bis)} déjà sur la Croix !}
  }
  \column {
    "« Ne pleurez point sur mes souffrances ;"
    "Pleurez sur vous, ô filles d’Israël !"
    "Afin que le Dieu des vengeances"
    \line{ Ait pour vous,\normal-text \bold{(bis)} un cœur paternel. »}
  }
  \column {
    "Seigneur, vous tombez de faiblesse :"
    "N’êtes vous plus le Dieu puissant et fort ?"
    "C’est le péché qui vous oppresse"
    \line{ Et conduit, \italic \bold{(bis)} vos pas à la mort.}
  }
  \column {
    "Venez et déployez vos ailes,"
    "Anges du Ciel, sur votre Créateur :"
    "Voilez ces blessures cruelles,"
    \line{ Et ce corps, \normal-text \bold{(bis)} navré de douleur.}
  }
  \column {
    "Que faites-vous, peuple barbare ?"
    "Vous allez donc consommer vos forfaits ?"
    "Ce bois est le lit qu’on prépare"
    \line{ À Jésus, \italic \bold{(bis)} pour tant de bienfaits !}
  }
  \column {
    "Le soleil, à ce crime horrible,"
    "Voile l’éclat de son front radieux ;"
    "Et la créature insensible"
    \line{ Ne peut voir, \normal-text \bold{(bis)} ce spectacle affreux.}
  }
  \column {
    "Le voilà donc, Mère affligée,"
    "Ce tendre Fils, meurtri, sacrifié :"
    "Notre victime est immolée,"
    \line{ Votre amour, \italic \bold{(bis)} est crucifié.}
  }
  \column {
    "Près de cette tombe chérie,"
    "Je veux mourir de douleur et d’amour,"
    "Pour y puiser une autre vie"
    \line{ Et voler, \normal-text \bold{(bis)} au divin séjour.}
  }
  \column {
    "Seigneur, dans mon âme attendrie,"
    "Gravez les maux qu’on vous a fait souffrir ;"
    "Et vous, ô divine Marie,"
    \line{ Hâtez-vous, \italic \bold{(bis)} de nous secourir ! }
  }
}