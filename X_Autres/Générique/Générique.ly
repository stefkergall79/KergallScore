\version "2.26.0"
\include "articulate.ly"
\include "settings.ily"
\include "composers.ily"

global = {
  \key d \major
  \time 5/4
  \partial 4
}

violin = \fixed c'' {
  \global
  r4 r1 r4 r1 r4 r1 r4 
  a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff
  r4 r1 r4 r1 r4 r1 r4
  a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff
  \tuplet 3/2 {a8 b cis'} d'2. r4
  \tuplet 3/2 {b8 cis' d'} e'2. r4
  \tuplet 3/2 {cis'8 d' e'} fis'2~4~\tuplet 3/2 {8 b8 a} r4
  a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff
  << {\tuplet 3/2 {d,4 e,8} fis,4 4 r2
  \tuplet 3/2 {b,,4 cis,8} d,4 4 r2
  \tuplet 3/2 {d,4 e,8} fis,4 b, a,4. e,8 cis,4 r1}
     {\tuplet 3/2 {d4\fffff e8} fis4 4 r2
  \tuplet 3/2 {b,4 cis8} d4 4 r2
  \tuplet 3/2 {d4 e8} fis4 b a4. e8 cis4 r1}>>
  
  \tuplet 3/2 {b'8\fffff cis'' b'} fis'2. r4
  \tuplet 3/2 {a'8 b' a'} e'2. r4
  \tuplet 3/2 {g'8 fis' e'} b'2~4~\tuplet 3/2 {8 d'8 cis'} r4
  \repeat unfold 3 {a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff r4
  \repeat unfold 3 {r1 r4}}
  a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff
  
  \tuplet 3/2 {a8 b cis'} d'2. r4
  \tuplet 3/2 {b8 cis' d'} e'2. r4
  \tuplet 3/2 {cis'8 d' e'} fis'2~4~\tuplet 3/2 {8 b8 a} r4
  a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff r4
  \repeat unfold 3 {r1 r4}
  a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff
  
  
}

celloII = \fixed c, {
  \global \repeat unfold 12 {r4 r1}
  r4 r d\fffff e fis r4 r b, cis d r4 r a2. 
  \repeat unfold 5 {r4 r1}
  \tuplet 3/2 {a8\ff b cis'} d'2. r4
  \tuplet 3/2 {b8 cis' d'} e'2. r4
  \tuplet 3/2 {cis'8 d' e'} fis'2~4~\tuplet 3/2 {8 b8 a} r4
  \repeat unfold 17 {r1 r4}
}
contrabass = \fixed c {
  \global \repeat unfold 12 {r4 r1}
  \tuplet 3/2 {d,4\fffff e,8} fis,4 4 r2
  \tuplet 3/2 {b,,4 cis,8} d,4 4 r2
  \tuplet 3/2 {d,4 e,8} fis,4 b, a,4. e,8 cis,4 
  \repeat unfold 25 {r1 r4}
}

drum = \drummode {
  \global r4
  \repeat unfold 10 {\repeat unfold 3 {r4\mp sn cymc bd r}
  sn4\pp 4\mp 4\f 4\ffff cymc4\fff}
  
}

drumsss = \drummode { \global
  \repeat unfold 100 {tomfh4\p cyms4}}

trumpetC = \fixed c' {
  \global \repeat unfold 16 {r4 r1}
  r4 r8 cis\fff d e fis r r2 r8 g a b cis' r r2
  r8 b, cis d e4 r2 r1
  \repeat unfold 4 {r4 r1}
  \tuplet 3/2 {b8\fffff cis' b} fis2. r4
  \tuplet 3/2 {a8 b a} e2. r4
  \tuplet 3/2 {g8 fis e} b2~4~\tuplet 3/2 {8 d8 cis}
  \repeat unfold 9 {r4 r1}
  \tuplet 3/2 {b8\fffff cis' b} fis2. r4
  \tuplet 3/2 {a8 b a} e2. r4
  \tuplet 3/2 {g8 fis e} b2~4~\tuplet 3/2 {8 d8 cis} r4 
}

tuba = \fixed c, {
  \global \repeat unfold 24 {r4 r1}
  \tuplet 3/2 {b'8\p cis'' b'} fis'2. r4
  \tuplet 3/2 {a'8 b' a'} e'2. r4
  \tuplet 3/2 {g'8 fis' e'} b'2~4~\tuplet 3/2 {8 d'8 cis'}
  \repeat unfold 9 {r4 r1}
  \tuplet 3/2 {b'8\p cis'' b'} fis'2. r4
  \tuplet 3/2 {a'8 b' a'} e'2. r4
  \tuplet 3/2 {g'8 fis' e'} b'2~4~\tuplet 3/2 {8 d'8 cis'} r4
  
}

hornF = \fixed c' {
  \global \repeat unfold 12 {r4 r1}
  \tuplet 3/2 {d,4\fffff e,8} fis,4 4 r2
  \tuplet 3/2 {b,,4 cis,8} d,4 4 r2
  \tuplet 3/2 {d,4 e,8} fis,4 b, a,4. e,8 cis,4 
  \repeat unfold 9 {r1 r4}
  r8 << {cis8\fff d e fis r r2 r8 g a b cis' r r2
  r8 b, cis d e4.}
        {cis,8\fff d, e, fis, r r2 r8 g, a, b, cis r r2
  r8 b,, cis, d, e,4.}>> r4.
  \repeat unfold 9 {r1 r4}
  r8 << {cis8\fff d e fis r r2 r8 g a b cis' r r2
  r8 b, cis d e4.}
        {cis,8\fff d, e, fis, r r2 r8 g, a, b, cis r r2
  r8 b,, cis, d, e,4.}>> r4. 
}

trombon = \fixed c {
  \global \repeat unfold 20 {r4 r1}
  r4 r4
  \tuplet 3/2 {a8\ff fis a} d4 r2 r4 \tuplet 3/2 {b8 g b} e4 r2 r4 \tuplet 3/2 {cis'8 a cis'} d'4 r2
  r1 \tuplet 3/2 {b''8\fffff cis''' b''} fis''2. r4
  \tuplet 3/2 {a''8 b'' a''} e''2. r4
  \tuplet 3/2 {g''8 fis'' e''} b''2~4~\tuplet 3/2 {8 d''8 cis''} 
  \repeat unfold 9 {r4 r1}
  \tuplet 3/2 {b''8\fffff cis''' b''} fis''2. r4
  \tuplet 3/2 {a''8 b'' a''} e''2. r4
  \tuplet 3/2 {g''8 fis'' e''} b''2~4~\tuplet 3/2 {8 d''8 cis''} r4 
}

piccolo = \fixed c'' {
  \global
  \repeat unfold 8 {r4 r1} r4 r4
  \tuplet 3/2 {a8 fis a} d4 r2 r4 \tuplet 3/2 {b8 g b} e4 r2 r4 \tuplet 3/2 {cis'8 a cis'} d'4 r2
  \repeat unfold 4 {r1 r4}
  a16\ppppp gis a\pppp gis a\ppp gis a\pp gis\p a\mp gis\mf a\mf gis\f a\ff gis\fff a\ffff gis\fffff
  \repeat unfold 16 {r4 r1} r4 r4
  \tuplet 3/2 {a8 fis a} d4 r2 r4 \tuplet 3/2 {b8 g b} e4 r2 r4 \tuplet 3/2 {cis'8 a cis'} d'4 r2
  \repeat unfold 4 {r1 r4}
}

saxI = \fixed c' {
  \global \repeat unfold 20 {r4 r1}
  << {\tuplet 3/2 {a8\fffff b cis'} d'2. r4
  \tuplet 3/2 {b8 cis' d'} e'2. r4
  \tuplet 3/2 {cis'8 d' e'} fis'2~4~\tuplet 3/2 {8 b8 a} r4}
     {\tuplet 3/2 {a'8\fffff b' cis''} d''2. r4
  \tuplet 3/2 {b'8 cis'' d''} e''2. r4
  \tuplet 3/2 {cis''8 d'' e''} fis''2~4~\tuplet 3/2 {8 b'8 a'} r4}>>
  \repeat unfold 17 {r1 r4}
}

saxII = \fixed c {
  \global \repeat unfold 20 {r4 r1}
  \tuplet 3/2 {a8\f b cis'} d'2. r4
  \tuplet 3/2 {b8 cis' d'} e'2. r4
  \tuplet 3/2 {cis'8 d' e'} fis'2~4~\tuplet 3/2 {8 b8 a} r4
  \repeat unfold 17 {r1 r4}
}

saxIII = \fixed c {
  \global \repeat unfold 20 {r4 r1}
  r4 r4
  \tuplet 3/2 {a8\fff fis a} d4 r2 r4 \tuplet 3/2 {b8 g b} e4 r2 r4 \tuplet 3/2 {cis'8 a cis'} d'4 r2
  \repeat unfold 17 {r1 r4}
}

right = \fixed c {
  \global
  \repeat unfold 10 {\tuplet 3/2 {d4\fffff e8} fis4 4 r2
  \tuplet 3/2 {b,4 cis8} d4 4 r2
  \tuplet 3/2 {d4 e8} fis4 b a4. e8 cis4 r1 }
}

left = \fixed c, {
  \global
  \repeat unfold 10 {r4 r d\fff e fis r4 r b, cis d r4 r a2. r4 
  a16\ppppp a a\pppp a a\ppp a a\pp a\p a\mp a\mf a\mf a\f a\ff a\fff a\ffff a\fffff}
   
}

violinPart = \new Staff \with {
  midiInstrument = "violin"
  instrumentName = "Violon"
  shortInstrumentName = "Vl"
} \violin

celloIIPart = \new Staff \with {
  midiInstrument = "cello"
  instrumentName = "Violoncelle"
  shortInstrumentName = "Vlc"
} { \clef bass \celloII }


contrabassPart = \new Staff \with {
  midiInstrument = "contrabass"
  instrumentName = "Contrebasse"
  shortInstrumentName = "Ctb"
} { \clef bass \contrabass }

drumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Batterie"
  shortInstrumentName = "Bt"
} \drum

drumsssPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Batterie_fond"
  shortInstrumentName = "Bf"
} \drumsss

trumpetCPart = \new Staff \with {
  midiInstrument = "trumpet"
  instrumentName = "Trompette"
  shortInstrumentName = "Tpt"
} \trumpetC

tubaPart = \new Staff \with {
  midiInstrument = "tuba"
  instrumentName = "Tuba"
  shortInstrumentName = "Tub"
} \tuba

hornFPart = \new Staff \with {
  midiInstrument = "french horn"
  instrumentName = "Cor"
  shortInstrumentName = "Cor"
} \hornF

trombonPart = \new Staff \with {
  midiInstrument = "trombone"
  instrumentName = "Trombone"
  shortInstrumentName = "Trb"
} \trombon

oboePart = \new Staff \with {
  midiInstrument = "piccolo"
  instrumentName = "Piccolo"
  shortInstrumentName = "Pic"
} \piccolo

sopranoSaxPart = \new Staff \with {
  instrumentName = "Saxo 1"
  shortInstrumentName = "Sx1"
  midiInstrument = "soprano sax"
} \saxI

tenorSaxPart = \new Staff \with {
  instrumentName = "Saxo 2"
  shortInstrumentName = "Sx2"
  midiInstrument = "tenor sax"
} \saxII

bassSaxPart = \new Staff \with {
  instrumentName = "Saxo 3"
  shortInstrumentName = "Sx3"
  midiInstrument = "baritone sax"
} \saxIII
pianoPart = \new PianoStaff  <<
  \new Staff = "right" \with {
    midiInstrument = "rock organ"
  } { \clef bass \right }
  \new Staff = "left" \with {
    midiInstrument = "rock organ"
  } { \clef bass \left }
>>

fullMusic = \transpose c e {
  <<
    \violinPart
    \celloIIPart
    \contrabassPart
    \drumsPart
    \drumsssPart
    \trumpetCPart
    \tubaPart
    \hornFPart
    \trombonPart
    \oboePart
    \sopranoSaxPart
    \tenorSaxPart
    \bassSaxPart
    \pianoPart
  >>
}

\score {
  \header {
    title = "GÉNÉRIQUE"
    composer = \kergall
  }
  \fullMusic
  \layout {\context{\Staff \RemoveAllEmptyStaves}}
  \midi { \tempo 4=170 }
}
