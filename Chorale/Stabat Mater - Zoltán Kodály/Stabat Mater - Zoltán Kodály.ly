\version "2.26.0"
\include "../../settings.ily"
global = {
    \key es \major
    \time 2/2
    \tempo "Largo"
}

soprano = \fixed c' {
    \global
    g2 as2 2 g2 4(c') es'(d') d'2 c'\fermata
    bes c'4(d') es'2 bes2 2 as2 2 g\fermata
    g c' d' es' f' es' d'1\fermata \bar "||"
    es'2 b c' as g b c'1\fermata \bar "|."
}

alto = \fixed c' {
    \global
    es2 2 f f es f f es
    f f es es f f f4(es) d2
    g2 2 2 2 as g2 1
    as2 f g d es d4(f) e?1
  
}

tenor = \fixed c {
    \global
    c'2 2 d'2 2 c'2 b b c'\fermata
    d' c'4(bes) 2 2 c'2 2 d'4(c') b2\fermata
    g g b c' d' es'4(c') b1\fermata
    c'2 g g4(c') 2 2 g2 1\fermata
}

bass = \fixed c {
    \global
    c'2 2 b b c' g as2 2
    2 2 g g f f f g
    g es d c b, c4(es) g1
    c2 d es f g g, c1
}

verseOne = \strophemode #1 ##f \lyricmode {
    Stá -- bat Má -- ter do -- lo -- ró -- sa,
    iúx -- ta cru -- cem la -- cri -- mó -- sa,
    dum pen -- dé -- bat Fí -- li -- us,
    dum pen -- dé -- bat Fí -- li -- us.
}

verseTwo = \strophemode #2 ##t \lyricmode {
    Cú -- ius á -- ni -- mam ge -- mén -- tem,
    con -- tris -- tá -- tam et do -- lén -- tem
    per -- tran -- sí -- vit glá -- di -- us,
    per -- tran -- sí -- vit glá -- di -- us.
}

verseThree = \strophemode #3 ##f \lyricmode {
    O quam tris -- tis et af -- flíc -- ta
    fu -- it il -- la be -- ne -- díc -- ta
    Má -- ter U -- ni -- gé -- ni -- ti,
    Má -- ter U -- ni -- gé -- ni -- ti_!
}

\tocItemComposer "Stabat Mater" "Kodaly"
\score {
  \header {
    title = "STABAT MATER"
    composer = "Zoltán Kodály (1882-1967)"
  }
  \new ChoirStaff <<
    \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "S." "A." }
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
          instrumentName = \markup \center-column { "T." "B." }
      } <<
          \clef bass
          \new Voice = "tenor" { \voiceOne \tenor }
          \new Voice = "bass" { \voiceTwo \bass }
      >>
      \new Lyrics \lyricmode {
        \repeat unfold 12 \skip1 A1. -- men,2 A1 -- men.1 }
    >>
    \layout { }
    \midi {\tempo 2=60 }
}

\markup{
  * Pour finir, on reprendra les quatre dernières mesures sur "\""A-men"\"",
  avec un mi \tiny { \text-accidental #0 } à l'alto.
}
