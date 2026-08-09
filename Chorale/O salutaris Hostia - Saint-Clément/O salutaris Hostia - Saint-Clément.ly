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
	d4 b(c') b |
	d'(b) a |
	g(a) e |
	g(fis) e |
	d2 4 | \break
	g4(a) b |
	a2 g4 |
	fis2 d4 |
	b4(c') b |
	d'(b) a |
	g(a) e | \break
	g fis e |
	d(e) fis |
	g(b) a |
	e(g) fis |
	g2
}

alto = \fixed c' {
	\global
	d4 2 g4 |
	fis2 4 |
	e2 c4 |
	2 4 |
	4(b,) d |
	e2 d4 |
	cis2 4 |
	d2 4 |
	2 g4 |
	fis2 4 |
	e2 c4 |
	c2 a,4 |
	d2 c4 |
	b,(d) e |
	2 d4 |
	2
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
