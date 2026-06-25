\version "2.26.0"
\include "../../settings.ly"

global = { 

	
}
FlûtePart = SoloPart = soprano = \fixed c' {
	\global
	
}
sopranoVerse = \lyricmode {
	
}

alto = \fixed c' {
	\global
	
}
altoVerse = \lyricmode {
	
}

tenor = \fixed c {
	\global
	
}
tenorVerse = \lyricmode {
	
}

bass = \fixed c {
	\global
	
}
bassVerse = \lyricmode {
	
}

ChoeurPart = \new ChoirStaff <<
	\new Staff \with {
		midiInstrument = "choir aahs"	} \soprano}
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "soprano" \verseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "soprano" \verseTwo

	\new Staff \with {
		midiInstrument = "choir aahs"	} \alto}
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "alto" \verseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "alto" \verseTwo

	\new Staff \with {
		midiInstrument = "choir aahs"	}\clef "treble_8 "	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "tenor" \verseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "tenor" \verseTwo

	\new Staff \with {
		midiInstrument = "choir aahs"	}		\new Voice = "bass" { \clef bass 	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "bass" \verseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	}\lyricsto "bass" \verseTwo

>>ClavierPart = \tocItem "Ave"

\score {
	\header {
		dedication = ""
		title = "AVE"
	}
	<<
		FlûtePart
		SoloPart
		ChoeurPart
		ClavierPart
	>>
	\layout {}
	\midi{}
}
