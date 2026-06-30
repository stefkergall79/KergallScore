\version "2.26.0"
\include "../../settings.ily"
global = {
    \key d \major
    \time 4/4
    \autoBeamOff
}

soprano = \fixed c' {
    \global
    fis2(a2) 1 b a a a2. 4 2 2 g1 fis
    r4 d'4 4 4 cis'(a) b2~4 4 a2~2 r2
    r4 d'4 4 4 cis'(a) b2~4 4 a2~2 r4
    g4 4 4 fis(d) fis2. 4 e1 R1
    a2. 4 2 r2 e'2. 4 2 cis'~2 b4(e') cis'2.
    d'4~8[cis' b a] b2 a1
    fis1 2 2 r2 b~2 2 2 2~1 a
    \break \bar "||" \time 3/4
    fis4 4 4 e2 r4 g4 g g fis
    b2 a4(g4. fis8) 4.(e16[d]e4) fis2.~2.~2. \bar "|."
}

alto = \fixed c' {
    \global
    cis2(fis) 1 g e fis e2. 4 2 fis
    e1 d4 2 cis8[b,] d4.(e8) fis2~2
    e4(d d) cis8[b,] fis2 2 r4
    g4 4 4 fis(d) e2. 4 d cis8[b,] fis2~4 d e2~2
    d2~1 cis d2. 4 2 r2 a2. 4 1~1 2 g fis1 d2.(e4) fis1
    cis1 2 d r2 fis~2 2 g fis~4 g8[fis] g2 fis1
    d4 4 4 cis2 r4 e4 4 4 d fis2~4 d2~4 b,4. cis8 d4
    a,(b,) cis(d2) cis2.
}

tenor = \fixed c {
    \global
    a2(cis' d') 2~2 b4 d'~4 cis'8([b] cis'2) d'1
    cis'2. 4 2 d' b1 2.(a8[g] fis1 2) r2
    r4 d'4 4 4 cis'(a) b2~2 2 a r2
    r4 d'4 4 4 cis'(a) b2~2 2 a1~1
    R1 r2 a2~4 4 2 r2
    e'2~4 4 2 2 2 a1 b cis'
    a1 2 2 r d'~2 2 b d'~1 1
    a4 4 4 2 r4 b4 4 4 4 d'2 cis'4(b2)
    a4 g2 fis4 2 4(b2) ais2.
}

bass = \fixed c {
    \global
    fis1 d g a d
    a2. 4 2 d e1 b,~1
    r2 r4 g4 4 4 fis(d) fis4 4 e2
    R1 r2 r4 g4 4 4 fis(d) fis4 4 e2~2
    b,4.(cis8) d1 a, r2
    d2~4 4 2 r2 a2~4 4 2 1~2 e fis1 g fis1
    1 2 d r b2~2 2 e b(4 a g2) d1
    d4 4 4 a,2 r4 e4 4 4 b,4 2 fis4(g2)
    d4 e2 b,4 d2 a,4(b,2) fis2.
}

sopranoVerse = \lyricmode {
    O Jé -- su Chrí -- ste, mi -- se -- ré -- re mé -- i,
    quum do -- ló -- re lan -- gúe -- o, quum do -- ló -- re lan -- gúe -- o,
    quum do -- ló -- re lan -- gúe -- o.
    Dó -- mi -- ne, Dó -- mi -- ne, Tu es spes mé -- _ a.
    Cla -- má -- vi, cla -- má -- vi ad Te.
    Mi -- se -- ré -- re, mi -- se -- ré -- re mé -- i, mé -- i.
}

altoVerse = \lyricmode {
    O Jé -- su Chrí -- ste, mi -- se -- ré -- re mé -- i,
    mi -- se -- ré -- re, mi -- se -- ré -- re,
    quum do -- ló -- re lan -- gúe -- o, do -- ló -- re lan -- gúe -- o.
    Dó -- mi -- ne, Dó -- mi -- ne, Tu es spes mé -- a.
    Cla -- má -- vi, cla -- má -- vi ad _ _ Te.
    Mi -- se -- ré -- re, mi -- se -- ré -- re mé -- i,
    mi -- se -- ré -- re mé -- i.
}

tenorVerse = \lyricmode {
    O Jé -- su -- _ Chrí -- ste, mi -- se -- ré -- re mé -- i,
    quum do -- ló -- re lan -- gúe -- o, quum do -- ló -- re lan -- gúe -- o.
    Dó -- mi -- ne, Dó -- mi -- ne, Tu es spes mé -- a.
    Cla -- má -- vi, cla -- má -- vi ad Te.
    Mi -- se -- ré -- re, mi -- se -- ré -- re mé -- i,
    mi -- se -- ré -- re mé -- i.
}

bassVerse = \lyricmode {
    O Jé -- su Chrí -- ste, mi -- se -- ré -- re mé -- i,
    quum do -- ló -- re lan -- gúe -- o,
    quum do -- ló -- re lan -- gúe -- o, lan -- gue -- o.
    Dó -- mi -- ne, Dó -- mi -- ne, Tu es spes mé -- a.
    Cla -- má -- vi, cla -- má -- vi ad Te.
    Mi -- se -- ré -- re, mi -- se -- ré -- re mé -- i,
    mi -- se -- ré -- re mé -- i.

}

instrument = "acoustic grand"
\tocItemComposer "O Jesu Christe" "Van Berchem"
\score {
  \header {
    title = "O JESU CHRISTE"
    composer = "Jakob Van Berchem (1505-1567)"
  }
  \new ChoirStaff <<
        \new Staff \with {
            midiInstrument = \instrument
            instrumentName = "S."
            \consists "Ambitus_engraver"
        } { \new Voice = "soprano" \soprano }
        \addlyrics { \sopranoVerse }
        \new Staff \with {
            midiInstrument = \instrument
            instrumentName = "A."
            \consists "Ambitus_engraver"
        } { \new Voice = "alto" \alto }
        \addlyrics { \altoVerse }
        \new Staff \with {
            midiInstrument = \instrument
            instrumentName = "T."
            \consists "Ambitus_engraver"
        } { \clef "treble_8" \new Voice = "tenor" \tenor }
        \addlyrics { \tenorVerse }
        \new Staff \with {
            midiInstrument = \instrument
            instrumentName = "B."
            \consists "Ambitus_engraver"
        } { \clef bass \new Voice = "bass" \bass }
        \addlyrics { \bassVerse }
    >>
    \layout { }
    \midi { \tempo 4=70 }
}


\markup \column {
  "Ô Jésus-Christ, ayez pitié de moi,"
  "Quand la douleur m'épuise."
  "Seigneur, Vous êtes mon espérance."
  "J'ai crié vers Vous."
  "Ayez pitié de moi"
}

\generate-rehearsal-midi #70 #`(
  ("soprano" . ,sopranoVerse)
  ("alto"    . ,altoVerse)
  ("tenor"   . ,tenorVerse)
  ("bass"    . ,bassVerse)
)