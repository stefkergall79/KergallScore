\version "2.26.0"
\include "../../settings.ily"
global = {
  \key f \major
  \cadenzaOn
  \autoBeamOff
  \omit Staff.TimeSignature
}

psalm = \fixed c' {
  \global
 
}

soprano = \fixed c' {
  \global
  \markChanson "Psalmodia"
  f8 g8[a] a\breve c'8 bes a8 g2 \bar "|"
  g\breve a8 bes8[a] g4 f2 \bar "||" \break
  
  \markChanson "Falsus bordonus"
  
  \set Staff.shortInstrumentName = \markup \center-column { "S." "A." }
  c'\breve \bar "|" \cadenzaOff
  f'4(e' d'4 4) c'2. r4
  \cadenzaOn a\breve \bar "|"
  \cadenzaOff d'4(c' bes4 4) a1 \bar "||"
}

alto = \fixed c' {
  \global
  s1*6 s4.
  f\breve 4(g a g8[f]) e2. r4
  f\breve 2.(e4) f1^\fermata
}

tenor = \fixed c {
  \global
  s1*6 r4.
  \set Staff.shortInstrumentName = \markup \center-column { "T." "B." }
  a\breve 4(c'2 b4) c'2. r4
  \breve bes4(c' d' c'8[bes]) c'1\fermata
}

bass = \fixed c {
  \global
  s1*6 r4.
  f\breve d4(e f g) c2. r4
  f\breve bes4(a g4 4) f1
}

verseOne = \lyricmode {
  \set stanza = "1."
  Ma -- gní -- ficat, ma -- gní _ -- ficat ánima mé -- a Dó -- minum.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  "Et exultávit spíritus" mé -- us "in Déo salutári" mé -- o.
}

verseThree = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 3.
  Qui8 -- a4 "respéxit humilitátem an"\breve
  -- cíl8 -- læ sú -- æ,2
  "ecce enim ex hoc beátam me dícent ómnes gene - "\breve
  -- ra8 -- ti4 -- ó4 -- nes.2
}

verseFour = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic "4."
  "Quia fécit míhi mágna qui"\breve
  pó2. -- tens4 est_:1
  "et sánctum nómen"\breve é1 -- jus.1
}

verseFive = \lyricmode {
  \set stanza = "5."
  Et mi -- "sericórdia éjus a progénie " in pro -- gé -- nies
  "timén" -- ti -- bus é -- um.
}

verseSix = \lyricmode {
  \set stanza = "6."
  "Fécit poténtiam in bráchio" sú -- o_:
  "dispérsit supérbos ménte córdis       " sú -- i.
}

verseSeven = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 7.
  De -- pó -- "suit po" -- téntes de sé -- de,
  "et exal" -- tá -- vit hú -- miles.
}

verseEight = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 8.
   "Esuriéntes implévit" bó -- nis_:
   "et dívites dimísit i" -- ná -- nes.
}

verseNine = \lyricmode {
  \set stanza = "9."
   Sus8 -- cé4 -- "pit Israël"\breve púe8 -- rum8 sú8 -- um,2
   "recordátus misericór"\breve -- di8 -- æ4 sú4 -- æ.2
}

verseTen = \lyricmode {
  \set stanza = "10."
  "Sicut locútus est ad pátres"\breve nós1 -- tros_:1
  "Abraham et sémini éjus in"\breve saé2. -- cu4 -- la.1
}

verseEleven = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 11.
  Gló -- ri -- a Pátri et Fí -- lio
  "et Spirí" -- tu -- i Sán -- cto.
}

verseTwelve = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 12.
  "Sicut érat in princípio, et nunc, et       " sém -- per,
  "et in saécula sæculórum." A -- men.
}

\tocItemComposer "Magnificat" "ton royal"
\score {
  \header {
    title = "MAGNIFICAT"
    subtitle = \markup{\concat{VI \super \italic ème} ton royal}
    composer = "Ton dit “de Lourdes” "
    poet = "Harmonisation : Mgr Joseph Besnier (1898-1984)"
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>

    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" {\verseOne \verseTwo }
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } {\verseThree \verseFour }
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" {\verseFive \verseSix }
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" { \verseSeven \verseEight }
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } {\verseNine \verseTen }
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" {\verseEleven \verseTwelve }

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
  \midi { \tempo 4=90 }
}
