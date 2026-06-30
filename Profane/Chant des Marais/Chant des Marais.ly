\version "2.26.0"
\include "../../settings.ily"

global = {
	\autoBeamOff
	\key bes \major
	\tempo 4=60
}

soprano = \fixed c' {
	\global
	g4 g g bes8[a] g4. d8 g4 4
	c'4 a bes g a fis g4 r
	bes4 4 4 d'8[c'] bes4. f8 bes4 4
	c' a bes g a d g
	
	\repeat volta 2 {
	  f d'4. 8 4 bes c'2 4 a bes4. 8 4 g a2 4
	  d g r2 d4 g r4 r2
	}
}

alto = \fixed c' {
	\global
	d4 c d es d c d d g es f d es d d(f)
	f es f ges f es f f es es d d c c bes,
	
	f d es d f f(g)f es d  c bes, d es(d) c
	d g r2 d4 g r4 r2
}

tenor = \relative c' {
	\global
	bes4 a bes c bes a bes4 4 es c d bes c a bes(c)
	d c d es d c d c
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
