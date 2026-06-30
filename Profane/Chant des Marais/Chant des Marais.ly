\version "2.26.0"
\include "../../settings.ily"

global = {
	\autoBeamOff
	\key es \major
	\time 4/4
	\tempo 4=60
}

soprano = \fixed c' {
	\global
	g4
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
VerseThree = \strophemode 3 ##f \lyricmode {
	
}
VerseFour = \strophemode 4 ##t \lyricmode {
	
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
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseThree
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseFour

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
>>

\tocItemComposer "Chant des Marais" "César Geoffray"
\score {
	\header {
		title = "CHANT DES MARAIS"
		composer = "Harmonisation : César Geoffray (1901-1972)"
		poet = "1943"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {}
}
