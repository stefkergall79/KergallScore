\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key d \major
  \time 4/4
}

soprano = \fixed c' {
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \global R1*2
  a2 d'4(fis) |
  a(gis)g2 |
  4(b)a(g) |
  4(fis)2 |
  e2. 4 |
  fis4 4 g g |
  2(fis4) 4 | e1 |
  2. a4 |
  4(gis) 2 |
  e4(gis2)b4 |
  4(a)4 4 |
  d'1(~4 cis') b a |
  2(gis4)4 a1 | R1*3
  
  a2. 4 |
  4(bes)2 |
  4(d')c'(bes) |
  4(a) 2 |
  g2. 4 |
  4(bes) a g |
  2(f8[e])f4 |
  e2 r2 |
  fis2. 4 |
  4(e)d(g) |
  2. 4 |
  4(fis)e a |
  1(~4 g) a b |
  fis2(e4.)fis8 |
  g2 2 |
  d'1~2 dis' |
  e'4 b cis' d' |
  cis' b8[a]d'4 g |
  fis2(e4.)8 s1 |
  R1*3 \bar"|."
}

alto = \relative c' {
  \global
  R1*2 fis2 2 |
  e e |
  4(g)fis(e) |
  4(d)2 |
  cis2. 4 |
  d d e e |
  2(d4)4 | cis1 |
  e2. 4 |
  2 2 | 4~2 gis4 |
  4(a) 2 |
  r2 gis |
  a fis4 4 |
  e2. 4 1 |
  R1*3 e2. 4 |
  2 2 |
  2. 4 |
  4(f)2 |
  d2. 4 |
  e(f)e e |
  2(d8[cis])d4 |
  cis2 r2 |
  d2. 4 |
  4(cis)b(e) |
  2. 4 |
  4(d)cis fis|
  1(~4 g) fis e |
  d2(cis4.)8 |
  d2 r2 |
  r fis |
  g fis |
  e1~4 d8[cis] d4 d |
  2(cis4.)8 |
  d1 R1*3
  
}

tenor = \relative c' {
  \mergeDifferentlyDottedOn
  \global R1*2
  a2 2 |
  b b |
  a a a a |
  2. 4 4 4 4 4 |
  2. 4 1 |
  cis2. 4 |
  4(d)2 |
  b2. d4 |
  4(cis)2 |
  r2 d e d4 cis |
  b2. 4 cis1 |
  R1*3
  cis2. 4 |
  2. c4 |
  4(bes)a(g) |
  4(a)2 |
  b2. 4 |
  cis(d) e cis |
  2(d4)b e2 r |
  R1 b2. 4 |
  4(a)g(cis) |
  2. 4 |
  4(b)a b |
  d2 4 4 a2. 4 |
  g2 r2 |
  r2 c |
  d c |
  b4 d cis b |
  a2 4 g |
  a2(g4.)8 |
  fis1 R1*3
}

bass = \relative c {
  \global R1*2
  d2 2 |
  2 2 |
  cis2 2 |
  d d |
  a2. 4 |
  d4 4 cis4 4|
  d2. 4 | a1
  a'2. 4 |
  4(b)2 |
  r2 e,4 4 |
  eis(fis)2 |
  r2 b,2 |
  cis d4 4 |
  e2. 4 |
  a,1 R1*3
  a'2. 4 |
  4(g)2 |
  c,2. 4 |
  4(f)2 |
  2. 4 |
  e(d)cis a |
  bes2(a4)gis |
  a2 r R1
  g'2. 4 |
  4(fis)e(a) |
  2. 4 |
  4(g)fis b |
  2 a4 gis |
  a2 a, |
  b r |
  r a' |
  bes a |
  gis1 |
  g!2 fis4 b, |
  a2. 4 |
  d1 R1*3
}

verseSop = \lyricmode {
  \repeat unfold 25 \skip1
  in cru -- ce
  \repeat unfold 36 \skip1
  In mor __ _ _ _ _ _ _ _ tis
}
verse = \lyricmode {
  A -- ve, a -- ve ve -- rum Cor -- pus
  na -- tum de Ma -- ri -- a Vir -- gi -- ne.
  Ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce pro ho -- mi -- ne_:
  Cu -- jus la -- tus per -- fo -- ra -- tum
  un -- da flu -- xit cum san -- gui -- ne_:
  Es -- to no -- bis præ -- gus -- ta -- tum
  in mor -- tis e -- xa -- mi -- ne.
  In mor __ _ _ _ _ tis e -- xa -- mi -- ne.
}
verseMen = \lyricmode {
  \repeat unfold 48 \skip1
  Es -- to no -- bis præ -- gus -- ta -- tum
  in mor -- tis
}

rightOne = \relative c' {
  \global
  d4 a d e |
  fis d fis g |
  a2 d4 fis, |
  a gis g2 |
  2 a4 g |
  4 fis4 2 |
  e2. 4 |
  fis2 g |
  2 fis |
  e4 cis4 4 e |
  r4 e' cis4 a |
  4 gis4 4 e |
  r e' d b |
  4 a2. |
  d1 4 cis <b fis d> <a fis cis> |
  e2 d |
  a'4 4 e'2~4 d e fis |
  a,2 b4. a8 |
  4 e cis e |
  a2. 4 |
  4 bes2. |
  4 d c bes |
  4 a a2 |
  g2 2~4 bes a g |
  2 f |
  e4 cis d e |
  fis2. 4 |
  4 e d g |
  2. 4 |
  4 fis e a |
  2. 4 |
  4g a b |
  fis2 e4. fis8 |
  g2 2 |
  d'2. 4 |
  2 dis2 |
  e4 b cis d |
  cis2 d4 g,4 |
  fis2 e |
  d4 fis4 a2 |
  4 d, g2 |
  fis e d1 |
}

rightTwo = \relative c' {
  \global
  a2. cis4 |
  d a d e |
  fis2 2 |
  e1|
  2 fis4 e |
  e4 d4 2 |
  cis2. 4 |
  d2 e |
  2 d |
  cis4 s2 cis4 |
  <<{e1}\\{cis2 s}>> |
  e1 2. gis4 |
  4 s2. |
  r4 a <<{gis4 b}\\{d,2}>> |
  <e a>2 s |
  b4 a' b, gis' |
  <a, cis>2 r4 e' |
  a1 |
  s4 e <<{gis2}\\{d4 e}>> |
  cis s a cis |
  <a cis>1 |
  <<{e'1}\\{cis2. c4}>> |
  e1 |
  4 f f c |
  b d2 4 |
  cis <d fis> e <e cis> |
  <cis e>2 d |
  cis4 s b cis |
  d2. 4 |
  4 cis b e |
  2. 4 |
  4 d cis fis |
  2. 4 |
  4 s fis e |
  d2 cis |
  d s |
  s2. fis4 |
  g2 fis |
  e1 2 d |
  2 cis |
  d4~4 fis2 |
  4 b, e2 |
  4 d2 cis4 |
  a1
}

leftOne = \relative c {
  \global
 fis2. a4 |
 4 fis a r |
 a2 2 |
 b1 | a |
 1 2. 4 |
 1 1 s2 a |
 2. cis4 |
 4 d2. |
 2. 4 |
 4 cis2. |
 r2 s2 s1 s1 s2. cis4 |
 4 d cis b |
 cis r4 s2 |
 r2 e,4 a |
 s2 a |
 4 g2. |
 4 bes4 a g |
 g a4 2 |
 b1 |
 bes2 e,4 s |
 s1 s4 a2~4 |
 2 r |b1
 4 a g cis |
 1 4 b a d |
 1 a1 g2 r |
 r4 bes4 <c a>2 |
 bes2 c4 fis |
 b, d cis b |
 a2. g4 |
 a2 g fis r4 a |
 d2. b4 |
 a2 g |fis1
}

leftTwo = \relative c {
  \global
  s1 d1 |
  2 2 | 2 2 |
  cis2 2 |
  d d |
  a2. 4 |
  d4 4 cis4 4 |
  d d fis d |
  a a' e cis |
  a2 s |
  a'4 b2. |
  gis2 e |
  eis4 fis2. |
  r2 b,2 |
  cis d |
  e1 a,2. cis4 |
  fis2 e4 dis |
  e2 e, |
  a1 2 s |
  s1 c2 2 |
  4 f4 2 |
  f1 |
  e4 d b a|
  bes2 a4 gis |
  a a'2 g8 fis |
  d1 g1 4 fis e a |
  1 4 g fis b |
  2 a4 gis |
  r2 a, |
  b r |
  r4 s2. |
  s2 a'2 |
  gis1 g!2 fis4 b, |
  a1 d2 r4 fis,4 |
  b2. g4 | a1 d
} 

choirPart = \new ChoirStaff <<
  \new Staff = "upStaff" \with {
    midiInstrument = "choir aahs"
    \consists Merge_rests_engraver
    instrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #DOWN
    alignAboveContext = #"upStaff"
  } \lyricsto "soprano" \verseSop
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "alto" \verse
  
  \new Staff \with {
    midiInstrument = "choir aahs"
    \consists Merge_rests_engraver
    instrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "tenor" \verseMen
  
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "Org."
} <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
    \consists Merge_rests_engraver
  } << \rightOne \\ \rightTwo >>
  \new Staff = "left" \with {
    midiInstrument = "church organ"
    \consists Merge_rests_engraver
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

\tocItemComposer "Ave verum" "Mozart"
\score {
  \header {
    title = "AVE VERUM"
    composer = \mozart
  }
  <<
    \choirPart
    \pianoPart
  >>
  \layout {}
  \midi { \tempo 4=80 }
}
