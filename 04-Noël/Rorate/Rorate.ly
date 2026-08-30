\version "2.26.0"
\include "settings.ily"
\include "composers.ily"
#(ly:set-option 'backend 'cairo)

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key f \major
	\time 4/4
}

sopranoOne = \relative c' {
	\global
	a
}


sopranoTwo = \relative c' {
	\global
	
}


alto = \fixed c' {
	\global
	
}


tenor = \relative c {
	\global
	
}


bass = \fixed c {
	\global
	
}


VerseOne = \lyricmode {
	
}


ChoeurPart = \new ChoirStaff \with {
	midiInstrument = "choir aahs"
} <<
	\new Staff \with {
		instrumentName = "S."
		\consists "Ambitus_engraver"
	}  \new Voice = "sopranoOne" {\sopranoOne }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseOne

	\new Staff \with {
		instrumentName = \markup \center-column { "S." "A." }
		\consists Merge_rests_engraver
	} <<
		\new Voice = "sopranoTwo" {\voiceOne \sopranoTwo }
		\new Voice = "alto" {\voiceTwo \alto }
	>>
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseOne

	\new Staff \with {
		instrumentName = \markup \center-column { "T." "B." }
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \VerseOne

>>

\tocItem \markup "Rorate"
\markup \column {
  \fill-line {\bold \fontsize #5 "RORATE" }
  \vspace #1
  \fill-line {
    \epsfile #X #100 #"cache/rorate_refrain.png"
  }
  \vspace #0.5
}

\score {
	\ChoeurPart
	\layout {}
	\midi {\tempo 4=70 }
}
\markup \column {
  \fill-line {\epsfile #X #100 #"cache/rorate_couplets.png"}
}
