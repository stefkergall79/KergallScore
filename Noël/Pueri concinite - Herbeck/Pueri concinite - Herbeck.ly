\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

#(set-global-staff-size 17.4)

global = {
  \key a \major
  \time 4/4
  \autoBeamOff
  \tempo "Adagio"
}

sopranoVoice = \fixed c' {
  \global
  R1*4
  \repeat unfold 2 {
    a4.\f gis8 a4 b |
    cis'4. 8 2 |
  }
  2 d' | b cis' |
  a2. b4 |
  2 r4 4 |
  cis'4. 8 a4 b |
  cis'4. 8 b4 a |
  b2 2 | r2 4 4 
  cis'4. 8 a4 b |
  cis'2 b4(a) |
  b4. 8 2 | R1 |
  cis'2 2 | 2 2 |
  a4. gis8 a4 b |
  gis4. 8 2 |
  a4. gis8 a4 b |
  gis4. cis'8 4 dis' |
  e'2. dis'4 e'2 r2
  4. d'8 cis'4 e' |
  a'4. gis'8 fis'4 e' |
  fis'4. e'8 d'4 cis' |
  b2. cis'4 |
  cis'2 r |
  a4. gis8 a4 b |
  cis'4. 8 2 |
  d'2 b4 4 | a1 |
  d'2 b4 4 a2 r2 | R1*4 |
  
  \set Staff.shortInstrumentName = "Sl."
  R1 a4. 8 4 cis'4 |
  \set Staff.shortInstrumentName = ""
  e'4. 8 2 |
  a4. 8 4 cis'4 |
  e'4. cis'8 a2 |
  r2 r4 cis'4~4 fis' a gis |
  b4. e'8 2 | R1 |
  r2 r4 a4 |
  gis4. 8 b4 4 |
  4. e'8 4 4 |
  cis'4.(a8)cis'4 r4
  r2 r4 a4 |
  gis4. 8 b2 |
  4. d'8 8[cis']b[e']|
  4. cis'8 a2 |
  r2 cis'2~|
  4 2 r4 |
  r4 eis'2 gis'4 |
  fis'4 cis' a fis |
  cis'2 a4 4 |
  e'2. b4 |
  4. 8 e'4 fis'8[gis'] |
  a'4. e'8 4 r4
  r4 r8 e' a'4. gis'8 |
  fis'4 r8 cis'8 fis'2~ |
  4. d'8 b4 gis |
  cis'2. gis4 |
  a r r2 |
  r fis'~|
  4 d' e' gis |
  a a b(cis') |
  d'2 b4 4 |
  a2. 4 |
  4. 8 4 4 |
  4. 8 4 e' |
  d'2. fis'4 |
  a'1~1~1\fermata \bar"|."
}
verseSopranoVoice = \lyricmode {
  Pú -- e -- ri con -- cí -- ni -- te,
  ná -- to Ré -- gi psál -- li -- te,
  vó -- ce pí -- a dí -- ci -- te_:
  ap -- pá -- ru -- it quem gé -- nu -- it Ma -- rí -- a_!
  Sunt im -- plé -- ta quæ præ -- dí -- xit Gá -- bri -- el_:
  E -- ja, é -- ja,
  Vír -- go Dé -- um gé -- nu -- it
  quem di -- ví -- na vo -- lú -- it cle -- mén -- ti -- a.
  Hó -- di -- e ap -- pá -- ru -- it,
  ap -- pá -- ru -- it in Is -- ra -- ël,
  ex Ma -- rí -- a Vír -- gi -- ne,
  ná -- tus est Rex,
  ná -- tus est Rex_!
  
  Pú -- e -- ri con -- cí -- ni -- te,
  ná -- to Ré -- gi psál -- li -- te,
  vó -- ce pí -- a dí -- ci -- te_:
  ap -- pá -- ru -- it quem gé -- nu -- it Ma -- rí -- a_!
  Im -- plé -- ta sunt, quæ præ -- dí -- xit Gá -- bri -- el_:
  E -- ja Vír -- go Dé -- um gé -- nu -- it
  quem di -- ví -- na vo -- lú -- it cle -- mén -- ti -- a.
  Ap -- pá -- ru -- it,
  ap -- pá -- ru -- it in Is -- ra -- ël,
  ex Ma -- rí -- a Vír -- gi -- ne,
  ná -- tus est Rex_!
  Al -- le -- lú -- ia,
  al -- le -- lú -- ia,
  al -- le -- lú -- ia_!
}
sopranoVoicePart = \new Staff \with {
  instrumentName = "Sl."
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

soprano = \fixed c' {
  \global
  R1*43
  \set Staff.shortInstrumentName = \markup \center-column { "S." "A." }
  \repeat unfold 2 {
    a4. gis8 a4 b |
    cis'4. 8 2 |
  }
  \set Staff.shortInstrumentName = ""
  2 d' | b cis' |
  a2. b4 |
  4 r2 4 |
  cis'4. 8 a4 b |
  cis'4. 8 b4 a |
  b2 2 | r2 4 4 
  cis'4. 8 a4 b |
  cis'2 b4(a) |
  b4. 8 2 | R1 |
  cis'2 2 | 2 2 |
  a4. gis8 a4 b |
  gis4. 8 2 |
  a4. gis8 a4 b |
  gis4. 8 a4 a |
  gis2(fis4)4 |
  e2 r2 |
  e'4. d'8 cis'4 e' |
  a'4. gis'8 fis'4 e' |
  fis'4. e'8 d'4 cis' |
  b2. cis'4 | cis'1 |
  a4. gis8 a4 b |
  cis'4. 8 2 |
  d'2 b4 4 | a1 |
  b2 a4 gis4 |
  a2. 4 |
  4. 8 4 4 |
  4. 8 4 cis' |
  d'2. 4 |
  cis'1~1~1\fermata
}
verseMore = \lyricmode {
  \repeat unfold 65 \skip1
  Hó -- di -- e
}

alto = \fixed c' {
  \global R1*43
  \repeat unfold 2 {
    e4. 8 4 gis |
    a4. 8 2 |
  }
  e2 fis | e e |
  cis2. e4 |
  4 r2 e4 |
  4. 8 cis4 e |
  4. 8 4 cis |
  e2 2 |
  r2 4 4 |
  4. cis8 4 e |
  2 4(cis) |
  e4. 8 2 | R1 |
  e2 2 | eis2 2 |
  cis4. 8 4 d |
  cis4. 8 2 |
  cis4. 8 4 d |
  cis4. 8 4 dis4 |
  e2. dis4 |
  e2 2~|
  4 fis8[gis]a4 b |
  cis'4. 8 a4 4 |
  4. 8 fis4 4 |
  2. eis4 |
  1 |
  cis4. 8 4 e |
  4. 8 fis4(e) |
  d4(fis)e d | cis1 |
  d4(fis)e d|
  cis2. 4 |
  d4. 8 cis4 4 |
  d4. 8 cis4 e |
  fis2. 4 |
  e1~1~1 |
}
verseAlto = \lyricmode {
  Pú -- e -- ri con -- cí -- ni -- te,
  ná -- to Ré -- gi psál -- li -- te,
  vó -- ce pí -- a dí -- ci -- te_:
  ap -- pá -- ru -- it quem gé -- nu -- it Ma -- rí -- a_!
  Sunt im -- plé -- ta quæ præ -- dí -- xit Gá -- bri -- el_:
  E -- ja, é -- ja,
  Vír -- go Dé -- um gé -- nu -- it
  quem di -- ví -- na vo -- lú -- it cle -- mén -- ti -- a.
  Hó -- di -- e ap -- pá -- ru -- it,
  ap -- pá -- ru -- it in Is -- ra -- ël,
  ex Ma -- rí -- a Vír -- gi -- ne,
  ná -- tus est Rex,
  ná -- tus est Rex_!
  Al -- le -- lú -- ia,
  al -- le -- lú -- ia,
  al -- le -- lú -- ia_!
}

tenor = \fixed c {
  \global R1*43
  \set Staff.shortInstrumentName = \markup \center-column { "T." "B." }
  \repeat unfold 2 {
    cis'4. b8 cis'4 e' |
    4. 8 2 |
  }
  \set Staff.shortInstrumentName = ""
  a2 2 |
  gis2 2 |
  a2. gis4 |
  4 r2 4 |
  a4. e8 fis4 gis |
  a4. 8 gis4 fis |
  gis2 2 |
  r2 gis4 4  |
  a4. e8 fis4 gis |
  a2 gis4(fis) |
  gis4. 8 2 | R1 |
  a2 2 |
  gis2 2 |
  a4. eis8 fis4 4 |
  eis4. 8 2 |
  fis4. eis8 fis4 4 |
  eis4. 8 fis4 a |
  b(cis' fis) b8[a] |
  gis2 r2 |
  cis'4. d'8 e'4 b 4 |
  fis'4. e'8 d'4 cis' |
  d'4. cis'8 b4 ais |
  b2. gis4 | 1 |
  fis4. eis8 fis4 gis |
  a4. 8 4(ais) |
  b4(a) gis4 4 |
  a1 |
  fis4(d)e e |
  2. 4 |
  fis4. 8 e4 4 |
  fis4. 8 e4 a |
  2. 4 |
  <cis' a>1(1)(1)\fermata
}

bass = \fixed c {
  \global R1*43
  \repeat unfold 2 {
    a4. e8 a4 e |
    a,4. 8 2 |
  }
  2 d |
  e cis |
  fis2. e4 |
  4 r2 e4 |
  a,4. 8 fis4 e |
  a,4. 8 e4 fis |
  e2 2 |
  r2 4 4 |
  a,4. 8 fis4 e |
  a,2 e4(fis) |
  e4. 8 2 | R1 |
  a,2 2 |
  cis gis |
  a4. cis8 fis4 b, |
  cis4. 8 2 |
  fis4. cis8 fis4 b, |
  cis4. 8 fis4 fis, |
  gis,(a, b,)4 |
  e2 r2 |
  cis'4. b8 a4 gis |
  fis4. cis'8 d'4 a |
  d'4. a8 b4 fis |
  d2. cis4 | 1 |
  fis4. cis8 fis4 e |
  a,4. 8 fis2 |
  b,2 e4 4 | fis1 |
  b,2 e4 4 |
  a,2. 4 |
  d4. 8 a,4 4 |
  d4. 8 a,4 4 |
  d2. 4 |
  <a, e>1(1)(1)
}


choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    \consists Merge_rests_engraver
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verseMore
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "alto" \verseAlto
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verseMore
  
  \new Staff \with {
    midiInstrument = "choir aahs"
    \consists Merge_rests_engraver
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
>>

lv=\ppp
rightOne = \fixed c' {
  \global
  <a cis>4.\lv <gis b,>8 a4 <a fis>4(|
  a4.)fis8 gis4 a
  | b1 |a|
  \repeat unfold 2 {
    a4. gis8 a4 b |
    <cis' e>2 2 |
  }
  2 <fis d'>2 |
  b2 cis' |
  a2. b4 |
  <e b>4 4 4 4 |
  <cis' e>2 <fis a>4 <gis b> |
  <a cis'>2 <gis b>4 <cis a> |
  <e b>2 2(4) 4 4 4 |
  <e cis'>2 <fis a>4 <e gis b> |
  <a cis'>2 <gis b>4 <a cis> |
  <e b>2 2 |
  b4 gis a b |
  cis'1 | 1 |
  <a fis>4. <eis gis>8 <a fis>4 <b fis> |
  <cis eis gis>2 2 |
  <a fis>4. <eis gis>8 <a fis>4 <b fis> |
  <cis eis gis>2 <cis fis a>4 <dis a> |
  <e cis>2 <fis e>4 <b, dis fis> |
  <b, e>1 |
  <e' e>4. <d' d>8 <cis' cis>4 <b, e b> |
  <cis fis a>4. <cis e gis>8 <a, d fis>4 <a, cis e> |
  <a, d fis>4. <a, cis e>8 <fis, b, d>4 <ais, cis> |
  <fis, b,>2. <eis, gis, cis>4 |
  4 4 <gis, cis eis> <cis gis> |
  a4. gis8 a4 b |
  cis'2 2 |
  d' b | a1 |
  b2 a4 gis |
  <a cis>2 <a, cis>4 <cis e> |
  <a cis>4. <b, gis>8 <cis a>4 <a fis d>4( |
  a4.) fis8 gis4 a |
  b1 | a | \bar"||"\break
  
  \set PianoStaff.shortInstrumentName = "Org."
  \repeat unfold 2 {
    <a cis>4. <gis b,>8 <a cis>4 <b e>4 |
    <cis' e cis>2 2 |
  }
  \set PianoStaff.shortInstrumentName = ""
  <cis' e>2 <fis d'>2 |
  b2 cis' |
  <a fis cis>2. <b gis e>4 |
  4 4 4 4 |
  <cis' e gis>2 <cis a>4 <gis e b> |
  <a cis' e>2 <gis e b>4 <cis fis a> |
  <e gis b>2 2(4) 4 4 4 |
  <e gis cis'>2 <cis a>4 <e gis b> |
  <a e cis'>2 <gis b e>4 <a fis cis> |
  <e gis b>2 2 |
  b4 gis a b |
  <cis' a e cis>1 |
  <cis' gis eis cis> |
  <a fis>4. <eis gis>8 <a fis>4 <b fis>
  <cis eis gis gis,>2 <cis eis gis>2 |
  <a fis>4. <eis gis>8 <a fis>4 <b fis>
  <cis eis gis>2 <cis fis a>4 <dis a> |
  <e gis>2 e4 <b, dis fis> |
  <b, e>2 <b, gis, e>|
  e'4. d'8 cis'4 e' |
  <cis' fis' a'>4. <cis' e' gis'>8 <d' fis' fis>4 <a cis' e'> |
  <d' fis' fis>4. <cis' e'>8 <b d'>4 <ais cis'> |
  <fis b>2. <eis cis'>4 |
  4 <gis, cis eis> <cis eis gis> <eis gis cis'> |
  <a fis>4. <gis eis>8 <a fis>4 <b gis> |
  <cis' e>2 cis' |
  d' b |
  a1 |
  b2 a4 gis |
  <cis a>4 <e, a, cis> <a, cis e> <cis e a> |
  a2. 4~| 2. 
  <e a cis'>4 <fis a cis'>2. <fis a d'>4 |
  <cis' a e>2 r <cis a cis'>4 r4 4 r4 1\fermata
}

rightTwo = \fixed c' {
  \global
  \autoBeamOn
   e2.\lv cis4 |
   <e b,>2. cis4 |
   fis2 e 4 d |
   cis1 |
   e2. 4 |
   s1 |
   e2. 4 | s1 s1 |
   e1 | s s s s s s s |
   e2. s4 | s1 |
   e4. d8^(8)cis b, e |
   <e cis>1 | eis |
   cis2. d4 | s1 |
   cis2. d4 | s1 s s s s s s s |
   cis2. e4 |
   2 fis4 e |
   d fis e d | cis1 |
   d4 fis e4 8 d | s1 |
   e2. s4 |
   <e b,>2. cis4 |
   fis2 e4 d | cis1 |
   
   \repeat unfold 2 { e2. s4 s1 } |
   s1 <e gis>1 |
   \repeat unfold 9 \skip1 |
   e4. d8^(8)cis b, e |
   s1 s1 |
   \repeat unfold 2 { cis2. d4 | s1 }
   s1 s1 |
   e4 fis8 gis a4 b |
   s1 s1 s1 s1 |
   cis2. e4 |
   a4. e8 fis4 e |
   d4 fis e d |
   cis1 |
   e4 fis e d |
   s1 |
   <fis d>2 <cis e>4 4 |
   <d fis>2 <cis e>4 s4 |
   s1 |
   s2 r2 |
   s4 r4 s4 r4 |
}

left = \fixed c {
  \global
  a4.\lv e8 a4 d |
  e2. <a fis>4 |
  <a d>2 <gis e> |
  <a a,>1 |
  \repeat unfold 2 {
    <cis' a>4. <e b>8 <a cis'>4 <e gis> |
    <a, a>2 2 |
  }
  <<{a1\lv | gis |}\\{a,2\lv d | e cis |}>> |
  <a fis>2. <e gis>4 |
  4 4 4 4 |
  <a a,>2 <fis cis'>4 <e e'> |
  <<{e'2.\lv a4}\\{a2\lv e4 fis}>> |
  <gis e>2 2(
  |4)4 4 4 |
  <a a,>2 <fis cis'>4 e |
  a,2 e4 <fis a> |
  <e gis>2 2(
  |4)e fis4 <gis e>4 |
  <a a,>1 | <cis gis> |
  fis4. cis8 fis4 b, |
  cis2 2 |
  fis4. cis8 fis4 b, |
  cis2 fis4
  <<{ a4\lv |
    b cis' fis b8 a |
    gis1 | <a e>2. e4 |
  }\\{ fis,\lv |
    gis,4 a, b, <b, b,,>|
    <e e,>2 4 <d, d> |
    <cis cis,>4. <b, b,,>8 <a, a,,>4 <gis, gis,,> |
  }>> |
  fis,4. <cis cis,>8 <d d,>4 <a,a,,> |
  <d d,>4. <a, a,,>8 <b, b,,>4 <fis fis,>4 |
  <d d,>2. <cis cis,>4|
  <<{cis4\lv 4 4 eis}\\{cis,2.\lv cis4}>> |
  fis4. <cis eis>8 fis4 <e gis>4 |
  <<{
    <a e>2\lv a4 ais |
    b a gis2 |
    a1 |
    fis4 d' b 
  }\\{
    a,2\lv fis, | b, e | fis1 |
    b,2 e4
  }>> e |
  <a a,>2 <a, e>4 <a, a> |
  a4. e8 a4 d |
  e2. <fis a>4 |
  <d a>2 <e gis> | <a, a>1 |
  
  \repeat unfold 2 {
    a4. e8 a4 <gis e> |
    a,2 2 |
  }
  2 d, |
  e, cis, |
  fis,2. e,4 |
  4 e e e |
  a, r4 <fis, fis> <e e,> |
  a, r4 <e e,> <fis fis,> |
  <<{e2\lv 2~4 4 4 4}\\{e,1\lv~1}>>|
  a,2 <fis fis,>4 <e e,> |
  a,2 <e e,>4 <fis fis,> |
  <<{
    e2\lv 2~|
    4 2 4 |
    1 | eis |
    fis4. cis8 fis4 b, |
    cis r4 2 |
    fis4. cis8 fis4 b, |
    cis4 r4 fis a |
    b cis' fis b8 a |
  }\\{
    e,1\lv~1 |
    a, | cis |
    fis,4 r4 r4 4 |
    s4 r s2
    fis,4 r4 s2 |
    s4 r4 fis,4 4 |
    gis, a, b, <b,, b,> |
  }>>
  <e, b, gis>2 <e e,>4 <d, d> |
  <cis e a>4. <b, e>8 <a, e a>4 <gis, b> |
  <fis, fis,,>4. <cis cis,>8 <d, d>4 a, |
  d4. a,8 b,4 fis, |
  <d, b>2. <cis, gis>4 |
  <<{gis4\lv cis4 4 4}\\{cis,2.\lv r4}>> |
  <fis fis,>4. <cis, cis>8 <fis fis,>4 <e e,> |
  <<{
    a,2\lv <a fis,>4 ais |
    <b fis> a <gis e>2 |
    <fis a>1 |
    <fis b,,>4 r <b e> e |
    <e a,,> r2 a,4 |
  }\\{
    a,,4\lv r4 fis2 |
    b,,4 b, e, r |
    fis, r s2 |
    b,2 e,4 4 |
    a,2. s4 |
  }>>
  d2 a,4 4 |
  d2 a,4 4 |
  <a, d,>2. <d a>4 |
  <<{
    <cis'\lv e a,>1(1)(1) |
  }\\{
    a,,4\lv r4 s2 |
    a,,4 r4 a,,4 r4 |
    a,,1\fermata |
  }>>
}
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
  } { \clef bass \left }
>>


\tocItemComposer "Pueri concinite" "Herbeck"
\score {
  \header {
    title = "PUERI CONCINITE"
    composer = \herbeck
  }
  <<
    \sopranoVoicePart
    \choirPart
    \pianoPart
  >>
  \layout {\context{
    \Staff
    \RemoveAllEmptyStaves
    \omit DynamicText
  }}
  \midi { \tempo 4=90 }
}
