\version "2.26.0"
\include "settings.ily"

global = {
	\autoBeamOff
	\key c \major
	\time 4/4
	\partial 4
	\tempo "Adagio ma non troppo"
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


\tocItemComposer "Laudamus Te" "Dmitri Bortnianski (1751-1825)"
\score {
	\header {
		title = "LAUDAMUS TE"
		subtitle = "Tibie Paion"
		composer = "Dmitri Bortnianski (1751-1825)"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=70 }
}
