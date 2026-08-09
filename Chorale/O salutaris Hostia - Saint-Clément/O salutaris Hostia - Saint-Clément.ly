\version "2.26.0"
\include "settings.ily"

global = {
	\autoBeamOff
	\key c \major
	\time 3/4
	\partial 4
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

VerseOne = \strophemode 1 ##f \lyricmode {
	
}

VerseTwo = \strophemode 2 ##t \lyricmode {
	
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
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseTwo

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
>>


\tocItemComposer "O salutaris Hostia" "Saint-Clément"
\score {
	\header {
		title = "O SALUTARIS HOSTIA"
		subtitle = "Saint-Clément"
		composer = "origine anglaise - XIXe"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=70 }
}
