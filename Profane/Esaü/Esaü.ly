\version "2.26.0"

\header {
  title = "Esaü"
  tagline = ##f
}

global = {
  \key g \major
  \numericTimeSignature
  \time 12/8
  \partial 8
}

right = \fixed c' {
  \global
  b8 4. a8 b c' b4( a8) g4 a8
  b4 a8 g4 fis8 e4. b4 8 4.~4 8
  4. a8 b c' b4( a8) g4 a8
  b4 a8 g4 fis8 e4. b4 8 4.
  \repeat unfold 2 {e4 fis8 g4 8 8 a g fis4 8} b4 8
  4. 4 8 8 a g a4 8 8 g fis g4 8 8 fis e fis4 8
  4. \repeat unfold 2{\tuplet 2/3 { e8 fis } g fis e b4 8 4.}
  4 8 e'4. 4 8 d'4. 4 8 c'4. 4 8 b4.
  \repeat unfold 2{g8 8 a g4. a b} g8 8 a g4. fis e b4 8 e'4.~4 \bar "|."

}

left = \fixed c {
  \global r8
  \repeat unfold 2 {
    <e g b>4. 4. 4. 4.
    <d fis a>4. 4. <e g b>4. 4. 4. 4.
  }
  <e g b>4. 4. <d fis a> <c e g>4. 4. 4. <b, d fis>4. 4. <e g b>4.
  4. <d g b> <d fis a>4. 4. <c e g>4. 4. <b, dis fis>4.
  4. 4. 4. <e g b> <d g b> 4. <e g b>4. 4. 4. <d g b>4. 4.
  <e g c'>4. 4. <d g b>4. 4. <e g c'>4. 4. <d g b>
  <d g b>4. 4. <d fis a> <d g b> <e g b>4. 4. <d fis a> <d g b>
  <e g b>4. 4. <d fis a> <e g b>4. 4. 4.~4
}

verse = \lyricmode {
  À l’é -- po -- que ter -- tiai -- re
  vi -- vait un grand bar -- bu,
  E -- sa -- ü_!
  Sa barb’ trai -- nait par ter -- re,
  son corps é -- tait ve -- lu,
  E -- sa -- ü_!
  Pour lui pas be -- soin de cu -- lot -- te,
  de che -- mise ou de re -- din -- go -- te,
  E -- sa -- ü_!
  Ah! mais oui, c’é -- tait é -- pa -- tant,
  c’é -- tait é -- ton -- nant, a -- bra -- ca -- da -- brant!
  Non, vrai -- ment on ne ver -- ra plus,
  de bar -- bus com -- me E -- sa -- ü,
  \repeat unfold 4 { E -- sa -- ü, }
  c’est le roi des bar -- bus,
  c’est le roi des poi -- lus,
  c’est le roi des ve -- lus,
  E -- sa -- ü_!
}

\score {
  \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right \addlyrics { \verse }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>
\layout { }
  \midi { \tempo 4=170 }
}
