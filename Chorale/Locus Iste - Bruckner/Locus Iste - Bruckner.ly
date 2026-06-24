\version "2.26.0"
\include "../../settings.ily"

global = {
    \key c \major
    \time 4/4
    \tempo "Allegro moderato"
    \autoBeamOff
}

soprano = \fixed c' {
    \global
    c'2.\p b4 a2 g4 r r g a e g4.\> 8 f4\! r
    d'2.\mf c'4 2 b4 r r d'\f  e' g' f'4. 8 e'4 r r
    f'\p f' e' r f2 e4 d2. c4 b, r r2 r4
    d\f d d d4. e8 f4(bes) d'2. e'4 4 a r2 r4
    e4\ff 4 4 4. fis8 g4(c') e'2. fis'4 4 b r2 R1
    fis4\pp 4 4 4 g8. 16 4 4 r e e e e f8.\< 16 4 4\! r
    f2\p e a2.\mf g4 f4. 8 e2 4(d) r2

    c'2.\p b4 a2 g4 r r g a e g4. 8 f4 r
    d'2.\mf c'4 2 b4 r r d'\f e' g' f'4. 8 e'4 r r
    f'\p f' e' r f2 e4 d2.\cresc(e4 f2 fis2 2)\! g R1
    r4 g4\pp f e f2 d2 1~2 2 e1\fermata \bar "|."
}

alto = \fixed c' {
    \global
    e2.\p 4 2 4 r4 r e e e d4.\> 8 4\! r
    fis2.\mf 4 2 g4 r r g\f g g g4. 8 4 r r
    g\p g g r d2 c4 b,2 g,2 4 r4 r2 r4
    d4\f 4 4 4. 8 4(f) 2. g4 a e r2
    r4 e\ff e e e4. 8 4(g) 2. a4 b fis r2 R1

    e4\pp 4 dis dis d!8. 16 4 4 r
    d4 4 cis4 4 c!8.\< 16 4 4\! r
    b,2\p c c2.\mf 4 4 b, c2 4(b,) r2

    e2.\p 4 2 4 r4 r e e e d4. 8 4 r
    fis2.\mf 4 2 g4 r r g\f g g g4. 8 4 r r
    g\p g g r d2 c4 4\cresc(b, bes,2 bes,4 a, c2 2)\! b,
    R1 r4 c\pp b, c4 2 2 1(b,2) 2 c1\fermata
}

tenor = \fixed c {
    \global
    g2.\p 4 c'2 4 r r4 4 4 4 a4.\> 8 4\! r4 2.\mf d'4 2 4 r r
    b\f c' d'4 4. 8 c'4 r r d'4\p 4 c' r g2 4 f2 e d4 r r2
    r4 d\f bes c' d'4. 8 2 2. 4 4 cis' r2
    r4 e4\ff c' d' e'4. 8 2 2. 4 4 dis' r2
    c'4\pp 4 4 4 b8. 16 4 4 r bes4 4 4 4 a8. 16 4 4 r
    as4\< 4 4 4\! g8. 16 4 4 r f\mf f e e d4. 8 e4(c) g2 r

    g2.\p 4 c'2 4 r r c'4 4 4 a4. 8 4 r a2.\mf d'4 2 4 r r
    b\f c' d'4 4. 8 c'4 r r
    d'\p d' c' r g2 4 1\cresc(f2 a a)\! g R1 r4
    g\pp g g a2 2 g1~2 2 1\fermata
}

bass = \fixed c {
    \global
    c2.\p 4 2 4 4 2. 4 d4.\> 8 4\! r
    d2.\mf 4 g,2 4 g\f f2(e4) b, c4. 8 4 4\p b,2 c b, c g,2 2
    4 4\f 4 a, bes,4. d8 g4(a) bes2. 4 2(bes,) a,4
    4\ff 4 b,! c4. e8 a4(b) c'2. 4 2(c) b, r2 R1*9

    c2.\p 4 2 4 4 2. 4 d4. 8 4 r
    d2.\mf 4 g,2 4 g\f f2(e4) b, c4. 8 4 4\p b,2 c b, c
    g,2\cresc(g4 cis d2. dis4 e2)\! 2 R1 r4
    e\pp d c f,2 fis, g,1~2 2 c1\fermata
}

verse = \lyricmode {
    Ló -- cus í -- ste a Dé -- o fá -- ctus est,
    ló -- cus í -- ste a Dé -- o fá -- ctus est,
    a Dé -- o, Dé -- o fá -- ctus est,

    i -- næs -- ti -- má -- bi -- le sa -- cra -- mén -- tum,
    i -- næs -- ti -- má -- bi -- le sa -- cra -- mén -- tum.

    Ir -- re -- pre -- hen -- sí -- bi -- lis est,
    ir -- re -- pre -- hen -- sí -- bi -- lis est,
    ir -- re -- pre -- hen -- sí -- bi -- lis est.

    Ló -- cus í -- ste a Dé -- o fá -- ctus est,
    ló -- cus í -- ste a Dé -- o fá -- ctus est,
    a Dé -- o, Dé -- o, Dé -- o,
    a Dé -- o, Dé -- o fá -- ctus est.

}

verse_tenor = \lyricmode {
    Ló -- cus í -- ste a Dé -- o fá -- ctus est,
    ló -- cus í -- ste a Dé -- o fá -- ctus est,
    a Dé -- o, Dé -- o fá -- ctus est,

    i -- næs -- ti -- má -- bi -- le sa -- cra -- mén -- tum,
    i -- næs -- ti -- má -- bi -- le sa -- cra -- mén -- tum.

    Ir -- re -- pre -- hen -- sí -- bi -- lis est,
    ir -- re -- pre -- hen -- sí -- bi -- lis est,
    ir -- re -- pre -- hen -- sí -- bi -- lis est,
    ir -- re -- pre -- hen -- sí -- bi -- lis est.

    Ló -- cus í -- ste a Dé -- o fá -- ctus est,
    ló -- cus í -- ste a Dé -- o fá -- ctus est,
    a Dé -- o, Dé -- o, Dé -- o,
    a Dé -- o, Dé -- o fá -- ctus est.

}

verse_bass = \lyricmode {
    Ló -- cus í -- ste a Dé -- o fá -- ctus est,
    ló -- cus í -- ste a Dé -- o fá -- ctus est,
    a Dé -- o, Dé -- o fá -- ctus est,

    i -- næs -- ti -- má -- bi -- le sa -- cra -- mén -- tum,
    i -- næs -- ti -- má -- bi -- le sa -- cra -- mén -- tum.

    Ló -- cus í -- ste a Dé -- o fá -- ctus est,
    ló -- cus í -- ste a Dé -- o fá -- ctus est,
    a Dé -- o, Dé -- o, Dé -- o,
    a Dé -- o, Dé -- o fá -- ctus est.

}
\paper {
  page-count = 2
}
\score {
    \header {
        title = "LOCUS ISTE"
        composer = "Anton Bruckner (1824–1896)"
    }
    \new ChoirStaff <<
        \new Staff \with {
            midiInstrument = "choir aahs"
            instrumentName = "S."
        } \new Voice = "soprano" \soprano
        \new Lyrics \with {
            \override VerticalAxisGroup.staff-affinity = #CENTER
        } \lyricsto "soprano" \verse

        \new Staff \with {
            midiInstrument = "choir aahs"
            instrumentName = "A."
        } \new Voice = "alto" \alto
        \new Lyrics \with {
            \override VerticalAxisGroup.staff-affinity = #CENTER
        } \lyricsto "alto" \verse

        \new Staff \with {
            midiInstrument = "choir aahs"
            instrumentName = "T."
        } { \clef "treble_8" \new Voice = "tenor" \tenor }
        \new Lyrics \with {
            \override VerticalAxisGroup.staff-affinity = #CENTER
        } \lyricsto "tenor" \verse_tenor

        \new Staff \with {
            midiInstrument = "choir aahs"
            instrumentName = "B."
        } {\clef bass \new Voice = "bass" \bass }
        \new Lyrics \with {
            \override VerticalAxisGroup.staff-affinity = #CENTER
        } \lyricsto "bass" \verse_bass
    >>
    \layout { }
    \midi { \tempo 4=85 }
}
