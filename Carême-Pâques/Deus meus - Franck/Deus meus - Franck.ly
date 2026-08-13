\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key as \major
  \time 4/4
  \tempo "Lento" 4 = 60
}

soprano = \fixed c' {
  \global
  R1\fermata as2\p 4 4 2 2 g4^\<(f)\! f^\>(g)\! g1\fermata
  2 4 as f(e) f(g) as2(g4.) f8 1\fermata \bar"||" \break
  \tempo "Andante" 4 = 85
  f2\p 2 g g as g4^\<(f)\! e2^\> 2\! f f f f f2. 4 2 2 2(g) f4(e) f(as) as(g) f(e) f2 r
  es2 4(as) 2^\< g\> as4\! 4 bes c' a2 bes4 r es'2.( as4) des'2 4(c') bes(des') c'(bes) as r r2
  r4 a^\< bes(a) bes1\!~4 a^\< bes(a) bes1\! r4 a^\cresc bes c' des'2 c'4(bes) es'2 4(as) des'2.^\dim c'4 bes(as) bes(b) c'1\!\fermata \bar"||"
  \tempo "Lento"
  as2\p 4 4 2 2 g4^\<(f)\! f^\>(g)\! 1\fermata
  2 4 as f(e) f(g) as2(g4.) f8 1\fermata \bar"|."
}

alto = \fixed c' {
  \global
  R1\fermata f2\p 4 4 2 2 e4^\<(f)\! f^\>(e)\! e1\fermata
  es!2 4 4 f(e) f2 2(e4.) f8 1\fermata
  c2\p 4(f) 2 e f des4^\<(d)\! c^\>(bes,) c\!(des!) f2 f f f f2. 4 2 2 2(g) f4(e) f2 des c c r
  c2 2 es4^\<(des) es\>(fes) es4\! 4 4 4 fis2 g4 r es2(f!) 2 g4(f) 4(fes) es(des) c r r2
  r4 fis^\< g(fis) g1\!~4 fis^\< g(fis) g1\! r4 ges^\cresc f es des2 es es f f^\dim(g4) as f2 2 e1\!\fermata
  f2\p 4 4 2 2 e4^\<(f)\! f^\>(e)\! e1\fermata
  es!2 4 4 f(e) f2 2(e4.) f8 1\fermata
}

tenor = \fixed c {
  \global
  R1\fermata c'2\p 4 4 2 2 4^\<(as)\! as^\>(c')\! c'1\fermata
  bes2 4 c' as(c') as(des') c'2~4. as8 1\fermata
  as2\p 2 c'2 2 4(f) g^\<(as)\! g2^\> 2\! c'2 2 des'2 2 d'2. 4 c'2 2 as(des') g4(c') 2 bes as4(g) as2 r
  as2 2 bes2^\< 2\> c'4\! as g as c'2 des'4 r c'1 bes2 4(as) 2 g as4
  <es' es>4^\< 4 4 1~4 4 4 4 1~4 4 4 4 4 es'\!^\cresc des' as! as2 as4(g) as2 c' bes2.^\dim as4 f2 g g1\!\fermata
  c'2\p 4 4 2 2 4^\<(as)\! as^\>(c')\! c'1\fermata
  bes2 4 c' as(c') as(des') c'2~4. as8 1\fermata
}

bass = \fixed c {
  \global
  R1\fermata f2\p 4 4 2 2 c4^\<(des)\! 4^\>(c)\! c1\fermata
  es2 4 as, des(c) des(bes,) c2~4. f8 1\fermata
  2\p 2 c c f4(des) bes,^\<(b,)\! c^\>(des!) c\!(bes,!) as,(c) f2 bes,4(des) f2 b,4(d f) f c(f) as2 des!(bes,) c4(bes,) as,2 bes, c f r
  as,2 2 es4^\<(fes) es\>(des) c\! c bes, as, es2 4 r r c(f2) bes, es4(f) des2 es as,4 r r2
  r4 c^\< des(c) des1\!~4 c^\< des(c) des1\! r4 c^\cresc des es f(fes) es(des) c2 f bes,\dim(es4) f des2 2 c1\!\fermata
  f2\p 4 4 2 2 c4^\<(des)\! 4^\>(c)\! c1\fermata
  es2 4 as, des(c) des(bes,) c2~4. <f, f>8 1\fermata
}

verse = \lyricmode {
  Dé -- us mé -- us, Dé -- us mé -- us, ut quid de -- re -- lí -- quis -- ti me_?
  Nó -- ti mé -- i, nó -- ti mé -- i quá -- si, quá -- si a -- li -- é -- ni re -- ces -- sé -- runt a me.
  Nó -- ti mé -- i quá -- si a -- li -- é -- ni re -- ces -- sé -- runt a me,
  et qui me no -- vé -- rant ob -- lí -- ti sunt mé -- i, ob -- lí -- ti sunt mé -- i.
  Dé -- us mé -- us, Dé -- us mé -- us, ut quid de -- re -- lí -- quis -- ti me_?
}

verset = \lyricmode {
  Dé -- us mé -- us, Dé -- us mé -- us, ut quid de -- re -- lí -- quis -- ti me_?
  Nó -- ti mé -- i, nó -- ti mé -- i quá -- si, quá -- si a -- li -- é -- ni re -- ces -- sé -- runt a me.
  Nó -- ti mé -- i quá -- si a -- li -- é -- ni re -- ces -- sé -- runt a me,
  nó -- ti mé -- i, nó -- ti mé -- i ob -- lí -- ti sunt, ob -- lí -- ti sunt mé -- i, ob -- lí -- ti sunt mé -- i.
  Dé -- us mé -- us, Dé -- us mé -- us, ut quid de -- re -- lí -- quis -- ti me_?
}

rightOne = \fixed c' {
  \global
  as1\fermata R1*7 R1\fermata
  f1 g as2 g4(f) e1 f1 1 1 1 2 g f4 e f as as g f e f1
  es2. as4 2 g as2 bes4 c' a2 bes es'2. as4 des'2. c'4 bes des' c' bes as r r2
  r4 a bes a bes1~4 a bes a bes1 r4 a bes c' des'2 c'4 bes es'2. as4 des'2. c'4 bes as bes b c'1\fermata
  R1*7 R1\fermata
}

rightTwo= \fixed c' {
  \global f1 R1*8
  c2. f4 2 e f des4 d c bes, c des c1 des d c des c des2 c2 1
  c1 es4 des es fes es1 fis2 g es f! f g4 as f fes es des c r r2
  r4 fis g fis g1~4 fis g fis g1 r4 ges\cresc f es des2 es es f f\dim g4 as f1 e\!
  R1*8
}

leftOne = \fixed c {
  \global
  c'1 R1*7 R1\fermata
  as1 c'1 4 f g as g1 s1*4 as2 bes g f4 c' bes2 as4 g as1
  as1 bes c'4 as g as c'2 des' c'1 bes2. as4 2 g as4 es'4 4 4 1~4 4 4 4 1~4 4 4 4 2 des'4 as4 2. g4 as2 c' bes2. as4 f2 g g1\fermata
  R1*7 R1\fermata
}

leftTwo = \fixed c {
  \global f1\fermata R1*8
  f1 c f4 des bes, b, c des c bes, as, c f2 bes,4 des f2 b,4 d f2 c4 f as2 des bes, c4 bes, as,2 bes, c f1
  as,1 es4 fes es des c2 bes,4 as, es1 c2 f bes, es4 f des2 es as,4 r r2
  r4 c des c des1~4 c des c des1 r4 c des es f fes es des c2 f bes, es4 f des1 c
  R1*8
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
    instrumentName = "S."
  } \new Voice = "soprano" \soprano
  \new Lyrics \with {\override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verse

  \new Staff \with {
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
    instrumentName = "A."
  } \new Voice = "alto" \alto
  \new Lyrics \with {\override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "alto" \verse

  \new Staff \with {
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
    instrumentName = "T."
  } {
    \clef "treble_8"
    \new Voice = "tenor" \tenor
  }
  \new Lyrics \with {\override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "tenor" \verset

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "B."
    \consists "Ambitus_engraver"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "bass" \verse
>>

pianoPart = \new PianoStaff \with {
    instrumentName = "Org."
  }<<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
    \consists Merge_rests_engraver
  } << \rightOne \\ \rightTwo >>
  \new Staff = "left" \with {
    midiInstrument = "church organ"
    \consists Merge_rests_engraver
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

\score {
  \header {
    title = "DEUS MEUS"
    subtitle = \markup { \concat {IV \super{ème}} PAROLE}
    composer = \franck
    poet = "Les Sept Paroles du Christ en Croix"
  }
  <<
    \choirPart
    \pianoPart
  >>
  \layout {}
  \midi {}
}
