\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key f \major
	\time 2/4
	\tempo "Allegro"
}

soprano = \relative c' {
	\global
	R2
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


VerseOne = \strophemode 1 ##f \lyricmode {
	
}

VerseTwo = \strophemode 2 ##t \lyricmode {
	
}

VerseThree = \strophemode 3 ##f \lyricmode {
	
}


ChoeurPart = \new ChoirStaff <<
	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "S."
		\consists "Ambitus_engraver"
	}  \new Voice = "soprano" {\soprano }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseTwo
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseThree

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "A."
		\consists "Ambitus_engraver"
	}  \new Voice = "alto" {\alto }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \VerseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \VerseTwo
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \VerseThree

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "T."
		\consists "Ambitus_engraver"
		\clef "treble_8"
	}  \new Voice = "tenor" {\tenor }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \VerseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \VerseTwo
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \VerseThree

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "B."
		\consists "Ambitus_engraver"
		\clef bass
	}  \new Voice = "bass" {\bass }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \VerseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \VerseTwo
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \VerseThree

>>


\tocItem \markup "Cloches sur cloches"
\score {
	\header {
		title = "CLOCHES SUR CLOCHES"
		subtitle = "Noël populaire d'Andalousie"
		poet = \markup {"Paroles :" \geoffray}
		arranger = \markup {"Harmonisation :" \moya}
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=130 }
}
