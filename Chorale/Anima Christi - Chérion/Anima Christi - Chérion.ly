\version "2.26.0"
\include "../../settings.ily"

global = {
	\autoBeamOff
	\key f \major
	\time 2/2
	\tempo 4=70
}

soprano = \fixed c' {
	\global
	
}

alto = \fixed c' {
	\global
	
}

tenor = \fixed c' {
	\global
	
}

bass = \fixed c {
	\global
	
}

VerseOne = \strophemode 1 \lyricmode {
	
}

ChoeurPart = \new ChoirStaff <<
	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
	} <<
		\new Voice = "soprano" {\voiceOne \soprano }
		\new Voice = "alto" {\voiceTwo \alto }
	>>
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseOne

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
>>

\tocItemComposer "Anima Christi" "Auguste Chérion (1854-1904)"
\score {
	\header {
		title = "ANIMA CHRISTI"
		composer = "Auguste Chérion (1854-1904)"
		meter = "Adagio"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {}
}
