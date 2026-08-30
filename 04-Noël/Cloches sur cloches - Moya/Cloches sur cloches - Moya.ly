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
	\dynamicUp
}

soprano = \relative c' {
	\global
	R2
	f4\mf 8 8 |
	4 e8 f |
	g4. ( e8 ) |
	c2 |
	g'4 8 a |\break
	bes4 a8 g |
	a4. ( g8 ) |
	f4 r |
	4 8 8 |
	4 e8 f |
	g4. ( e8 ) |\break
	c2 |
	g'4 8 a |
	bes4 a8 g |
	a4. ( g8 ) |
	f4 r8 a |\break
	c4 r8 8 |
	d c bes d |
	c4 r8 c |
	d c d e |
	f [ c ] a d |\break
	c bes a g |
	f4 r |
	a4.\pp bes8 |
	a [ g ] f4 |
	c'4.-_ d8 |
	c [ bes ] a4\breathe |\break
	c4.-_ 8 |
	b4.-_ g8 |
	c4.-_ bes!8 |
	a [ g ] f [ g ]\breathe |
	a4.-_ bes8 |
	a [ g ] f4 |
	c'4.-_ d8 |\break
	c8 [ bes ] a4 |
	c4.-_ 8 |
	b4.-_ g8 |
	c4.-_ bes8 |
	a [ g ] f [a ] |
	c4 r8 c |\break
	d c bes d |
	c4 r8 c |
	d c d e |
	f [ c ] a d |
	c bes a g |
	a2\fermata \bar"|."
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
	Clo -- ches sur clo -- ches joy -- eu -- ses,
  tin -- tent légères, so -- no -- res,
  Em -- pres -- se- toi à la crèche,
  où un en -- fant vient de naître.
  Bé -- lèm, ô clo -- ches de Bé -- lèm,
  Qu'agi -- tent les ar -- chan -- ges
  Quel -- le nou -- vel -- le m'ap -- por -- tez_?
  Que s'as -- sem -- blent gens et bêtes, 
  Pour for -- mer un grand cor -- tè -- ge
  Qu'à l'éta -- ble, on lui por -- te lait caillé
  Du vin, du be -- ur -- re.
  Bé -- lèm, ô clo -- ches de Bé -- lèm,
  Qu'agi -- tent les ar -- chan -- ges
  Quel -- le nou -- vel -- le m'ap -- por -- tez_?
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
		composer = \markup {"Harmonisation :" \moya}
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=130 }
}
