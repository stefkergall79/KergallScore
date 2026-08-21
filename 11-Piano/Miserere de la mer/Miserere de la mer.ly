\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key f \major
  \numericTimeSignature
  \time 9/8
  \omit DynamicText
  \partial 2
}

right = \fixed c' {
  \global
  \autoBeamOff
  d8\p a a a g4 8 f f f a4. r4
  d8 a a a g g g c'4(bes8) a4. r4
  d8 a a a g4 8 f f f e4(c8) d4. r4\fff
  \repeat unfold 2 {a8 d'4. 4 8 c'4. d'8 e' c' d'4. r4}
  a8\p g4. f4 a8 g4. f4 a8 g4 f8 g4. r4
  d8 f4. d4 f8 e4 c8 d2. \bar "|."
}

re = \fixed c {d,8\sustainOn <f d>8 8\sustainOff}
si = \fixed c {bes,,8\sustainOn <d g>8 8\sustainOff}
la = \fixed c {a,,8\sustainOn <d f> 8 8\sustainOff}
lab = \fixed c {a,,8\sustainOn <c e>8 8\sustainOff}

left = \fixed c {
  \global
  r8 \re \si \la \re \re
  \re \si \lab \re \re
  \re \si \la \lab \re \re
  \repeat unfold 2 {\re \re \lab \lab \re \re}
  \si \re \si \re \si \si \si
  \la \la \lab \re \re
}

verse = \lyricmode {
  Per -- du sous le ciel, per -- du sur la mer,
Là- -- haut é -- cou -- tez ma pri -- è -- re.
Per -- du sous le ciel, si loin de la ter -- re.

À moi, No -- tre- -- Dame et tous les saints,
Pre -- nez en pi -- tié tous les ma -- rins_;
Cal -- mez la va -- gue, la vague et le vent,
Cal -- mez pour moi l'ou -- ra -- gan.
}

\score {
  \header {
    title = "MISERERE DE LA MER"
  }
  \new PianoStaff \with {
    midiInstrument = "acoustic grand"
  } <<
    \new Staff \right
    \addlyrics \verse
    \new Staff \with {
      \clef bass
    } \left
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 4 = 80 }
}
