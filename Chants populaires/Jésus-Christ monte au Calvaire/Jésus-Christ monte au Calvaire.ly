\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global={
  \key g \major
  \time 3/4
  \partial 4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \repeat unfold 2 {
    g8 fis e4 g b8 8 a[g] fis4 g8 fis e4 g8[fis] e d e2
  }
  g8 a b4 4 c'8 b b[a] 4 b8 a g4 b a8 g fis2
  g8 fis e4 g b8 8 a[g] fis4 g8 fis e4 g8[fis] e d e2
  \bar "|."
}

alto = \fixed c' {
  \global
  \repeat unfold 2 {
    g8 fis e4 4 8 8 fis[e] d4 8 8 e4 c b,8 8 e2
  }
  e8 d8 4 g e8 8 fis4 4 8 8 e4 4 8 8 d2
  8 8
  e4 4 8 8 fis[e] d4 8 8 e4 c b,8 8 e2
}

tenor = \fixed c {
  \global
  \repeat unfold 2 {
    g8 fis e4 g4 8 8 c'4 b4 8 a g4 a fis8 8 g2
  }
  g8 fis g4 4 8 8 c'4 4 b8 8 4 4 c'8 8 b2
  b8 a g4
  g4 8 8 c'4 b4 8 a g4 a fis8 8 g2
}

bass = \fixed c {
  \global
  \repeat unfold 2 {
    g8 fis e4 c g,8 8 a,4 b,4 8 8 c4 a, b,8 8 e2
  }
  e8 fis g4 4 g,8 8 d4 4 8 8 e4 g, a,8 8 b,2
  8 8
  e4 c g,8 8 a,4 b,4 8 8 c4 a, b,8 8 e2
}

verseOne = \strophemode #1 ##f \lyricmode {
  Jé -- sus -_Christ monte au Cal -- vai -- re,
  il y va pour y mou -- rir.
  Sui -- vons -_Le, c’est no -- tre Frè -- re,
  qui pour nous, vou -- lut souf -- frir.
  En mou -- rant, il nous dé -- li -- vre
  du far -- deau de nos pé -- chés,
  et ce -- lui qui veut le sui -- vre,
  sous la Croix de -- vra mar -- cher.
}

verseTwo = \strophemode #2 ##t \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic"2."
  Chez Pi -- late, on le com -- pa -- re
  au der -- nier des scé -- lé -- rats.
  Que dis -_tu, peu -- ple bar -- ba -- re_?
  Tu ré -- cla -- mes Ba -- rab -- bas_!
  Quelle in -- di -- gne pré -- fé -- ren -- ce,
  le cou -- pable est par -- don -- né,
  et mal -- gré son in -- no -- cen -- ce,
  Jé -- sus -_Christ est con -- dam -- né_!
}

verseThree = \strophemode #3 ##f \lyricmode {
  \set stanza = "3."
  Ô Jé -- sus, vos mains cal -- leu -- ses
  ont ma -- nié bien d’au -- tres bois.
  Vos é -- pau -- les la -- bo -- rieu -- ses
  ont pli -- é sous d’au -- tres poids.
  Il est donc bien re -- dou -- ta -- ble,
  ce far -- deau, mon doux Jé -- sus_!
  Puis -- que ce poids vous ac -- ca -- ble,
  et que vous n’en pou -- vez plus.
}

\tocItem \markup "Jésus-Christ monte au Calvaire"
\score {
  \header {
    title = "JÉSUS-CHRIST MONTE AU CALVAIRE"
    composer = \pergolese
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
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
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {}
  \midi { \tempo 4=80 }
}
\pageBreak
\markup \fill-line {
  \hspace #-5
  \column {
    \line \italic { \bold "4."
      \column {
        "Au chemin de la souffrance,"
        "Pour l’aider, Marie est là."
        "Elle veut par sa présence"
        "Soutenir ses derniers pas."
        "Ô Vierge, en notre faiblesse,"
        "Nous avons besoin de vous ;"
        "Puisque nous tombons sans cesse,"
        "Demeurez tout près de nous."
      }}
    \vspace #1
    \line { \bold "5."
      \column {
        "Quand Simon, l’un de nos frères,"
        "est choisi pour te porter,"
        "Ô Croix, tu parais légère :"
        "Qui voudrait se dérober ?"
        "Pour la tâche, ô divin Maître,"
        "S’il vous faut des ouvriers,"
        "Me voilà, de tout mon être,"
        "Je suis prêt à vous aider !"
      }}
    \vspace #1
    \line \italic { \bold "6."
      \column {
        "Tous vos traits, par la souffrance,"
        "Sont creusés de durs sillons."
        "Nos péchés et nos offenses"
        "Sont gravés sur votre front."
        "Souvent, on déforme encore"
        "Votre image autour de nous ;"
        "Au monde qui vous ignore,"
        "Nous saurons parler de vous."
      }}
    \vspace #1
    \line { \bold "7."
      \column {
        "Votre pied heurte la pierre :"
        "Vous tombez sur le chemin !"
        "Votre Sang dans la poussière,"
        "La marque d’un sceau divin."
        "Ô Jésus, je vous adore,"
        "Étendu sous votre Croix."
        "Prosterné, je vous implore,"
        "Moi qui tombe tant de fois."
      }}
  }
  \null
  \column {
    \line \italic { \bold "8."
      \column {
        "« Vous pleurez sur mes souffrances :"
        "Pleurez donc sur vos péchés,"
        "Puisque c’est pour vos offenses"
        "Que mon Sang sera versé."
        "Suivez-moi vers le Calvaire,"
        "Avec moi, sachez offrir"
        "Vos souffrances pour vos frères :"
        "Après moi, il faut souffrir ! »"
      }}
    \vspace #0.9
    \line { \bold "9."
      \column {
        "À quoi bon tant de souffrance,"
        "À quoi bon verser son Sang,"
        "Quand Il voit la foule immense"
        "De pécheurs impénitents !"
        "Et pourtant, Il se relève,"
        "Prend la Croix à pleines mains,"
        "Il poursuit et Il achève"
        "Jusqu’au bout le dur chemin."
      }}
    \vspace #1
    \line \italic { \bold "10."
      \column {
        "On dépouille votre taille,"
        "Et plus rien pour vous couvrir !"
        "Né jadis nu sur la paille,"
        "Vous voici nu pour mourir."
        "Enseignez à tous vos frères"
        "L’amour de la pauvreté,"
        "Que les biens de cette terre"
        "Sont toujours à mépriser."
      }}
    \vspace #0.9
    \line { \bold "11."
      \column {
        "À grands coups, le marteau frappe,"
        "Dans la chair, rivant les clous,"
        "Comme une divine grappe"
        "Que l’on presse sous les coups !"
        "De ses mains, le sang s’écoule,"
        "De ses mains qui, si souvent,"
        "Ont béni d’immenses foules"
        "Et guéri tant de souffrants."
      }}
  }
  \null
  \column {
    \line \italic { \bold "12."
      \column {
        "Voici donc l’instant suprême,"
        "Qu’il attend depuis toujours,"
        "De prouver à ceux qu’il aime,"
        "Jusqu’où va son grand amour."
        "Embrassant la terre entière,"
        "Ses deux bras sont étendus ;"
        "Il appelle tous ses frères"
        "Et Il meurt pour leur salut."
      }}
    \vspace #1
    \line { \bold "13."
      \column {
        "En vos bras, quand on vous livre"
        "Votre Fils inanimé,"
        "Vous lisez comme en un livre"
        "Sur son corps tous nos péchés !"
        "Dites-nous, ô tendre Mère,"
        "Tout ce que vous avez vu :"
        "Gravez en nos coeurs de pierre"
        "Les blessures de Jésus !"
      }}
    \vspace #1
    \line \italic { \bold "14."
      \column {
        "L’ennemi de votre gloire"
        "Peut sourire, il est vainqueur ;"
        "Et pourtant votre victoire"
        "Est certaine, ô mon Sauveur !"
        "Malgré la nuit de la tombe,"
        "Le linceul sur votre Corps,"
        "Aujourd’hui l’enfer succombe :"
        "Vous avez vaincu la mort !"
      }}
  }
  \null
}
