\version "2.26.0"
\include "../../settings.ily"

global = {
  \key d \major
  \overrideTimeSignatureSettings
        4/4        % timeSignature
        #1/4       % beatBase
        1,1,1,1    % beatStructure
        #'()       % beamExceptions
  \time 4/4
}

#(set-global-staff-size 17.8)
ar = \arpeggio

scoreAViolinI = \fixed c' {
  \global
  R1*2 fis'4\p _\markup{\italic{espr.}}
  e' d' cis' b a b cis'
  d' cis' b a g_\> fis g e\!
  d8(fis) a (g) fis(d) fis(e) d(b,) d(a) g(b) a(g)
  fis(d) e(_\markup{\italic{cresc.}} cis') d'(fis') a'(a) b(g) a(fis) d d' d'8.\trill cis'16
  d'\mf cis' d' d cis a e_\< fis d d' cis' b cis' fis' a' b'\! g' fis' e' g' fis'_\> e' d' cis' b a g fis e g fis e\!
  d\mp e fis g a e a g fis b a g a g fis e d b, b cis' d' cis' b a g fis e b a b a g
  fis8\mf fis'-! e'4-- r8 d'-. fis'4 b' a' b'_\< cis''
  d''8-!_\> d'-. cis'4\! r8 b-.\mp d'4 4. 8 8-- g'-- e'-- a'--
  \repeat unfold 2{a'16(fis'32 g')} a'-. a (b cis' d' e' fis' g') fis'16(d'32 e') fis'16-. fis32(g) a(b a g a fis g a) g16 (b32 a g16 fis32 e) fis(e d e fis g a b) g16(b32 a b16 cis'32 d') a(b cis' d' e' fis' g' a')
  fis'16 (d'32 e' fis'16 e'32 d') e'(cis' d' e' fis' e' d' cis') d'16( b32 cis') d'16 d32( e) fis( g fis e fis d' cis' d') b16(d'32 cis' b16 a32 g a g fis g a b cis' d') b16( d'32 cis' d'16 cis'32 b) cis'( d' e' d' cis' d' b cis')
  d'8-! r cis'-! r b-! r d'-! r d-! r d-! r d-! r e-! r
  r a-. r a-. r fis-. r a-. r g-. r fis-. r g-. r e'-.
  fis'16-! fis g fis e-! e' fis' e' d'-! fis d b a-! a, g, a, b,-! b cis' b a-! a, g, a, b,-! b a b cis'-! cis b, cis
  d-! d' e' d' cis'-! cis d cis b,-! b a b cis'-! cis fis e d-! d' e' g' fis'-! fis a fis' d'-! g' fis' g' e'-! a g a
  fis\mp a a a a a a a \repeat unfold 6{fis} a a g g g \repeat unfold 7{d'} b b a a e' cis'
  a fis' fis' fis' e' e' e' e' d' d' d' d' a' a' a' a' b' b' b' b' a' a' a' a' b'_\< b' b' b' cis'' cis' cis' cis'
  d'-!\mf d32(e fis16) d-. cis-! cis'32(d' e'16) cis'-. b-! b,32(cis d16) b,-. cis-! a32(g fis16) e-. d-! g32(fis e16) g-. fis-! d32(e fis16) a-. g-! b32(a g16) fis-. e-! a32(g fis16) e-.
  fis-! d'32(cis' d'16) fis-. a-! a32(b cis'16) a-. fis-! d'32( e' fis16) d'-. fis'-! fis'32(e' d'16) cis'-. b-! b32(a b16) cis'-. d'-! fis'32(e' d'16) fis'-. g'-! d'32(cis' b16) b-. a e a a
  a4. a8_\markup{\italic{poco meno}} d4. a8 g4 a g8 d d8.\trill cis16
  d8 d' cis'4-- b-- a-- d8. e16 fis4-- b-- e8. 16
  fis8. fis'16_\markup{\italic{espr.}} 16( g') fis'( e') d'8. 16 d'( e') d'( cis') b4 d' d'16 c' b c' a8. 16
  8. a'16 a'( b') a'( g') fis'8. 16 16( g') fis'( e') d'( c') b( c') a8. 16 g8 d' cis'8. 16
  d'8 4\mf cis' b a8(a) g4 fis8(8.) e16 4
  fis8 fis'4 e'8 d' d''4 c''8 b'4_\< d''8(a') b'4 a'
  a'\f a8.(g16) fis4 fis'8.(e'16) d'4. 8 4 cis'
  d'8-- d-- cis-- cis'-- b-- b,-- a,-- a-- g--_\markup{\italic{cresc.}} g'-- fis'-- fis-- e-- b-- e-- e'--
  fis'\ff fis e e' d' d cis cis' b b' a' a g8. e'16 a8 a
  a2 r\bar"|."

}

scoreAViolinII = \fixed c' {
  \global
  % En avant la musique.
  R1*4 fis'4\p _\markup{\italic{espr.}}
  e' d' cis' b a b cis'
  d' cis' b a g_\> fis g e\!
  d8(fis) a (g) fis(d) fis(e) d(b,) d(a) g(b) a(g)
  fis(d) e(_\markup{\italic{cresc.}} cis') d'(fis') a'(a) b(g) a(fis) d d' d'8.\trill cis'16
  d'\mf cis' d' d cis a e_\< fis d d' cis' b cis' fis' a' b'\! g' fis' e' g' fis'_\> e' d' cis' b a g fis e g fis e\!
  d\mp e fis g a e a g fis b a g a g fis e d b, b cis' d' cis' b a g fis e b a b a g
  fis8\mf fis'-! e'4-- r8 d'-. fis'4 b' a' b'_\< cis''
  d''8-!_\> d'-. cis'4\! r8 b-.\mp d'4 4. 8 8-- g'-- e'-- a'--
  \repeat unfold 2{a'16(fis'32 g')} a'-. a (b cis' d' e' fis' g') fis'16(d'32 e') fis'16-. fis32(g) a(b a g a fis g a) g16 (b32 a g16 fis32 e) fis(e d e fis g a b) g16(b32 a b16 cis'32 d') a(b cis' d' e' fis' g' a')
  fis'16 (d'32 e' fis'16 e'32 d') e'(cis' d' e' fis' e' d' cis') d'16( b32 cis') d'16 d32( e) fis( g fis e fis d' cis' d') b16(d'32 cis' b16 a32 g a g fis g a b cis' d') b16( d'32 cis' d'16 cis'32 b) cis'( d' e' d' cis' d' b cis')
  d'8-! r cis'-! r b-! r d'-! r d-! r d-! r d-! r e-! r
  r a-. r a-. r fis-. r a-. r g-. r fis-. r g-. r e'-.
  fis'16-. fis g fis e-! e' fis' e' d'-! fis d b a-! a, g, a, b,-! b cis' b a-! a, g, a, b,-! b a b cis'-! cis b, cis
  d-! d' e' d' cis'-! cis d cis b,-! b a b cis'-! cis fis e d-! d' e' g' fis'-! fis a fis' d'-! g' fis' g' e'-! a g a
  fis\mp a a a a a a a \repeat unfold 6{fis} a a g g g \repeat unfold 7{d'} b b a a e' cis'
  a fis' fis' fis' e' e' e' e' d' d' d' d' a' a' a' a' b' b' b' b' a' a' a' a' b'_\< b' b' b' cis'' cis' cis' cis'
  d'-!\mf d32(e fis16) d-. cis-! cis'32(d' e'16) cis'-. b-! b,32(cis d16) b,-. cis-! a32(g fis16) e-. d-! g32(fis e16) g-. fis-! d32(e fis16) a-. g-! b32(a g16) fis-. e-! a32(g fis16) e-.
  fis-! d'32(cis' d'16) fis-. a-! a32(b cis'16) a-. fis-! d'32( e' fis16) d'-. fis'-! fis'32(e' d'16) cis'-. b-! b32(a b16) cis'-. d'-! fis'32(e' d'16) fis'-. g'-! d'32(cis' b16) b-. a e a a
  a4. a8_\markup{\italic{poco meno}} d4. a8 g4 a g8 d d8.\trill cis16
  d8 d' cis'4-- b-- a-- d8. e16 fis4-- b-- e8. 16
  fis8. fis'16_\markup{\italic{espr.}} 16( g') fis'( e') d'8. 16 d'( e') d'( cis') b4 d' d'16 c' b c' a8. 16
  8. a'16 a'( b') a'( g') fis'8. 16 16( g') fis'( e') d'( c') b( c') a8. 16 g8 d' cis'8. 16
  d'8 4\mf cis' b a8(a) g4 fis8(8.) e16 4
  fis8 fis'4 e'8 d' d''4 c''8 b'4_\< d''8(a') b'4 a'
  a'\f a8.(g16) fis4 fis'8.(e'16) d'4. 8 4 cis'
  d'8-- d-- cis-- cis'-- b-- b,-- a,-- a-- g--_\markup{\italic{cresc.}} g'-- fis'-- fis-- e-- b-- e-- e'--
  fis'2\ff r
}

scoreAViolinIII = \fixed c' {
  \global
  % En avant la musique.
  R1*6 fis'4\p _\markup{\italic{espr.}}
  e' d' cis' b a b cis'
  d' cis' b a g_\> fis g e\!
  d8(fis) a (g) fis(d) fis(e) d(b,) d(a) g(b) a(g)
  fis(d) e(_\markup{\italic{cresc.}} cis') d'(fis') a'(a) b(g) a(fis) d d' d'8.\trill cis'16
  d'\mf cis' d' d cis a e_\< fis d d' cis' b cis' fis' a' b'\! g' fis' e' g' fis'_\> e' d' cis' b a g fis e g fis e\!
  d\mp e fis g a e a g fis b a g a g fis e d b, b cis' d' cis' b a g fis e b a b a g
  fis8\mf fis'-! e'4-- r8 d'-. fis'4 b' a' b'_\< cis''
  d''8-!_\> d'-. cis'4\! r8 b-.\mp d'4 4. 8 8-- g'-- e'-- a'--
  \repeat unfold 2{a'16(fis'32 g')} a'-. a (b cis' d' e' fis' g') fis'16(d'32 e') fis'16-. fis32(g) a(b a g a fis g a) g16 (b32 a g16 fis32 e) fis(e d e fis g a b) g16(b32 a b16 cis'32 d') a(b cis' d' e' fis' g' a')
  fis'16 (d'32 e' fis'16 e'32 d') e'(cis' d' e' fis' e' d' cis') d'16( b32 cis') d'16 d32( e) fis( g fis e fis d' cis' d') b16(d'32 cis' b16 a32 g a g fis g a b cis' d') b16( d'32 cis' d'16 cis'32 b) cis'( d' e' d' cis' d' b cis')
  d'8-! r cis'-! r b-! r d'-! r d-! r d-! r d-! r e-! r
  r a-. r a-. r fis-. r a-. r g-. r fis-. r g-. r e'-.
  fis'16-. fis g fis e-! e' fis' e' d'-! fis d b a-! a, g, a, b,-! b cis' b a-! a, g, a, b,-! b a b cis'-! cis b, cis
  d-! d' e' d' cis'-! cis d cis b,-! b a b cis'-! cis fis e d-! d' e' g' fis'-! fis a fis' d'-! g' fis' g' e'-! a g a
  fis\mp a a a a a a a \repeat unfold 6{fis} a a g g g \repeat unfold 7{d'} b b a a e' cis'
  a fis' fis' fis' e' e' e' e' d' d' d' d' a' a' a' a' b' b' b' b' a' a' a' a' b'_\< b' b' b' cis'' cis' cis' cis'
  d'-!\mf d32(e fis16) d-. cis-! cis'32(d' e'16) cis'-. b-! b,32(cis d16) b,-. cis-! a32(g fis16) e-. d-! g32(fis e16) g-. fis-! d32(e fis16) a-. g-! b32(a g16) fis-. e-! a32(g fis16) e-.
  fis-! d'32(cis' d'16) fis-. a-! a32(b cis'16) a-. fis-! d'32( e' fis16) d'-. fis'-! fis'32(e' d'16) cis'-. b-! b32(a b16) cis'-. d'-! fis'32(e' d'16) fis'-. g'-! d'32(cis' b16) b-. a e a a
  a4. a8_\markup{\italic{poco meno}} d4. a8 g4 a g8 d d8.\trill cis16
  d8 d' cis'4-- b-- a-- d8. e16 fis4-- b-- e8. 16
  fis8. fis'16_\markup{\italic{espr.}} 16( g') fis'( e') d'8. 16 d'( e') d'( cis') b4 d' d'16 c' b c' a8. 16
  8. a'16 a'( b') a'( g') fis'8. 16 16( g') fis'( e') d'( c') b( c') a8. 16 g8 d' cis'8. 16
  d'8 4\mf cis' b a8(a) g4 fis8(8.) e16 4
  fis8 fis'4 e'8 d' d''4 c''8 b'4_\< d''8(a') b'4 a'
  a'\f a8.(g16) fis4 fis'8.(e'16) d'4._\markup{\italic{cresc.}} 8 4 cis'
  d'2\ff r
}

scoreARight = \fixed c' {
  \global
  \tempo Sostenuto
  <d' a fis>4\ar\mf  <cis' a e cis>\ar <b fis d b,>\ar <a fis cis a,>\ar
  <g d b,>\ar <a fis d a,>\ar <b e d b,>\ar_\> <a e cis a,>\ar
  <a fis d a,>\ar\p <cis' a e> <b fis d> <a fis cis>
  <g d b,> <fis d a,> <g d b,> <e cis a,>
  \repeat unfold 3 {<fis d a,> <a e cis> <fis d> <fis cis a,>
  <d b,> <fis d a,> <g d b,> <e cis a,>}
  <fis d a,> <a e cis> <fis d> <a fis cis>
  <b d b,> <a fis d> <b e d> <a e cis>
  <a fis d> <cis' a e> <b fis d> < a fis cis>
  <g d b,> <fis d a,> <e d b,> <e cis a,>
  <fis d a,> < a e cis> <fis d> <fis cis a,>
  <d b,> <fis d a,> <g d b,> <e cis a,>
  <fis d a,> <a fis cis> <fis d> <a d>
  <b g d> <a fis d> <b e d> <a e cis>
  <a fis d> <cis' a e> <b fis d> <a d>
  <b g d> <a fis d> <b g d> <a e cis>
  <a fis d> <a e cis> <fis d b,> <a d a,>
  <g d b,> <fis d a,> <g d b,> <e cis>
  <fis d a,> <a e cis> <fis d> <a d a,>
  <g d b,> <fis d a,> <e d b,> <e cis a,>
  <fis d a,> <a e cis> <fis d> <a d a,>
  <g d b,> <fis d a,> <e d a,> <e cis a,>
  <fis d a,> <a e cis> <fis d> <a d>
  <b g d> <a fis d> <b g d> <a e cis>
  <a fis d> <cis' a e> <b fis d> <a fis cis>
  <g d b,> <fis d a,> <g d b,> <e cis a,>
  <fis d a,> <a e cis> <fis d b,> <fis cis a,>
  <d b> <fis d a,> <g d b,> <e cis a,>
  <fis d a,> < a e cis> <fis d> <a fis cis>
  <g d b,> < a fis d> <b e d> <a e cis>
  < fis d> <cis' a e> < b fis d> < a fis cis>
  <b d b,> <a fis d> <b e d> <a e cis>
  <a fis d> <cis'a e> < b fis d> <a fis cis>
  <<{b4}\\{<d b,>8 [<cis e>]}>> <a fis d>4 <b g d> <a e cis>
  <a fis d> <a e cis> <fis d> <a d cis>
  <g d b,> <fis d a,> <e d b,> <<{<e a,>4}\\{d8. cis16}>>
  <fis d a,>4 <a fis cis> <fis d b,> <a d a,>
  <g d b,> <fis d a,> <e d b,> <<{<e a,>4}\\{d8. cis16}>>
  <fis d a,>4 <<{<a cis>4_\markup \italic cresc. }\\{fis8. e16}>> <fis d b,>4 <<{<a d>4}\\{a,8. cis16}>>
  <g d b,>4 <a fis d> <b g d> <<{<a e>4}\\{d8. cis16}>>
  <a fis d>4\mf <<{cis'}\\{<cis fis>8. <e g>16}>> <b fis d>4 <<{a}\\{<fis d>8. <e cis>16}>>
  <g d b,>4 <fis d a,> <g d b,> <e cis a,>
  <fis d a,>8 <d' a fis>4 <cis' g e>8 <<{cis'8 b4}\\{<d fis>4.}>> <a e cis>8
  <<{a8 g4 fis8^(8) e}\\{<d b,>4 <d a,> <d b,>}>> <e cis a,>
  <fis d a,>8 <d' a fis>4 <cis' a e>8 <<{cis'8 b4}\\{<d fis>4.}>> <a e c>8
  <<{a8 g4 fis8^(8) e}\\{<d b,>4 <d a,> <d b,>}>> <e cis! a,>4
  <fis d a,>8 <d' a fis>4 <cis' a e>8 <<{cis'8 b4 a8^(8) g4 fis8(8) e8}\\{<fis d>4. <e c>8 <d b,>4 <d a,> <d b,>}>> <e cis! a,>4
  <fis d a,>8_\markup{\italic{cresc.}} <d' a fis> <<{cis'4}\\{<a fis>8 <g e>}>> <b fis d>4 <a d>
  <b g d>4 <a fis d> <b e d> <a e cis>
  <a fis d>\f _\markup{\italic{arpeggiando}} <cis' a e> <b fis d> <a fis cis>
  <g d b,>_\< <a fis d a,> <b e d b,> <a e cis a,>
  <a fis d a,>2\ff r
}

scoreALeft = \fixed c, {
  \global
  <d'' a' d'>4\ar <a' e' a>\ar <fis' b>\ar <fis' cis' fis>\ar
  <g' d' g>\ar <d' d>\ar <g' g>\ar <g' e' a>\ar
  <fis' d'>\ar
  \repeat unfold 26{a b fis
  g d g a d'}
  <a' a> <fis' b> <fis' fis>
  <d' g> <d' d> <g' e' g> <g' e' a>
  <fis' a d>2 r

}

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violon I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violon II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolinIIIPart = \new Staff \with {
  instrumentName = "Violon III"
  midiInstrument = "violin"
} \scoreAViolinIII

scoreAHarpsichordPart = \new PianoStaff \with {
  instrumentName = "Clavecin"
}
  <<
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

\score {
  \header {
    title = "Canon in D"
    composer = "Johann Pachelbel"
    subtitle = "Trois violons et clavier"
    tagline = ##f
  }
  <<
    \scoreAViolinIPart
    \scoreAViolinIIPart
    \scoreAViolinIIIPart
    \scoreAHarpsichordPart
  >>
  \layout { }
  \midi { \tempo 4=60 }
}
