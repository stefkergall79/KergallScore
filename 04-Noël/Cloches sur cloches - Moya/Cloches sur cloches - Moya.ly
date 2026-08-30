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

refrain = \lyricmode {
  Que s'as -- sem -- blent gens et bê -- tes, 
  pour for -- mer un grand cor -- tè -- ge,
  qu'à l'é -- ta -- ble, on lui por -- te
  lait cail -- lé, du vin, du beur -- re.
  
}

soprano = \relative c' {
	\global
	R2
	f4\mf 8 8 |
	4 e8 f |
	g4. ( e8 ) |
	c2 |
	g'4 8 a |
	bes4 a8 g |
	a4. ( g8 ) |
	f4 r |
	4 8 8 |
	4 e8 f |
	g4. ( e8 ) |
	c2 |
	g'4 8 a |
	bes4 a8 g |
	a4. ( g8 ) |
	f4 r8 a |
	c4 r8 8 |
	d c bes d |
	c4 r8 c |
	d c d e |
	f [ c ] a d |
	c bes a g |
	f4 r |
	a4.--\pp bes8 |
	a [ g ] f4 |
	c'4.-- d8 |
	c [ bes ] a4\breathe |
	c4.-- 8 |
	b4.-- g8 |
	c4.-- bes!8 |
	a [ g ] f [ g ]\breathe |
	a4.-- bes8 |
	a [ g ] f4 |
	c'4.-- d8 |
	c8 [ bes ] a4 |
	c4.-- 8 |
	b4.-- g8 |
	c4.-- bes8 |
	a [ g ] f \breathe a |
	c4 r8 c |
	d c bes d |
	c4 r8 c |
	d c d e |
	f [ c ] a d |
	c bes a g |
	f2\fermata \bar"|."
}


alto = \relative c'' {
	\global
	R2
	a2\p (~|
	4 g8 [a ] |
	bes2 ~|
	2 ) |\breathe
	4. ( a8 |
	g4 c8 [ bes ] |
	c4. bes8 |
	a2 ) |\breathe
	2~4 g8 [ a ] |
	bes2~2 |
	4. ( a8 |
	g4 c8 [ bes ] |
	c4. bes8 |
	a2 ) |
	f2 ~ |
	2 ( |
	a4. ) 8 |
	bes a bes g |
	a [ g ] f f |
	e d c bes |
	a4 r |
	a'4.-- bes8 |
	a [ g ] f4 |
	4.-- 8 |
	4 4 |\breathe
	4.-- 8 |
	d4.-- 8 |
	e4.-- 8 |
	f [ g ] f [ g ] |\breathe
	a4.-- bes8 |
	a [ g ] f4 |
	4.-- 8 |
	4 4 |
	4.-- 8 |
	d4.-- 8 |
	e4.-- 8 |
	f [ g ] f4 |
	2 ~ |
	2 ( |
	a4. ) \breathe 8 |
	bes a bes g |
	a [ g ] f f |
	e d c bes |
	a2\fermata |
}
altoVerse = \lyricmode {
  \bf __ _ _ _ _ _ _
  qu'a -- gi -- tent les ar -- chan -- ges,
  quell' nou -- velle ap -- por -- tez_?
  \refrain
  \bf
  qu'a -- gi -- tent les ar -- chan -- ges,
  quell' nou -- velle ap -- por -- tez_?
}

tenor = \relative c' {
	\global
	c2->\f ~ |
	2 ~ |
	2 \breathe |
	\repeat unfold 7 { 2->~2\breathe | }
	r8 c es4-> |
	r8 bes d4-> |
	r8 c f4-> ~ |
	2 ~ |
	4 \breathe c8 [ bes ] ( |
	c2 ~ ) |
	4 r |
	4.--\pp d8 |
	c8 [ bes ] a4 |
	4.-- bes8 |
	a [ g ] f4 |
	a4.-- 8 |
	g4.-- b8 |
	g4.-- c8 |
	8 [ bes ] a [ bes ] \breathe |
	c4.-- d8 |
	8 [ bes ] a4 |
	4.-- bes8 |
	a8 [ g ] f4 |
	a4.-- 8 |
	g4.-- b8 |
	g4.-- c8 |
	8 [bes ] a4 \breathe |
	r8 c es4-> |
	r8 bes d4-> |
	r8 c f4-> ~ |
	2 ~ |
	4 ( c8 ) \breathe bes |
	c c c c |
	2\fermata |
}
verseTenor = \lyricmode {
  \repeat unfold 8 { Nang_! }
  \repeat unfold 3 { Ning Nang_! }
  \bf __
  \refrain
  \repeat unfold 3 { Ning Nang_! }
  quell' nou -- velle ap -- por -- tez_?
}

bass = \fixed c {
	\global
	f2->\f ~ |
	2 ~ |
	2 | \breathe |
	\repeat unfold 7 { 2-> ~ 2 \breathe | }
	f2->\breathe |
	2-> |
	2-> \breathe |
	2-> ~ |
	4. \breathe bes8 ( |
	c'4 c |
	f ) r |
	f4.--\pp 8 |
	4 4 |
	a4.-- bes8 |
	a [ g ] f4 |\breathe
	f4.-- 8 |
	g4.-- 8 |
	c4.-- 8 |
	f4 4 |\breathe
	4.-- 8 |
	4 4 |
	a4.-- bes8 |
	a [ g ] f4 |
	4.-- 8 |
	g4.-- 8 |
	c4.-- 8 |
	f4 4 |\breathe
	2-> |
	2-> |\breathe
	2-> |\breathe
	2-> ~ |
	4.\breathe bes8 |
	c'8 8 c8 8 |
	f2 \fermata
}
verseBass = \lyricmode {
  \repeat unfold 12 Nang_!
  \bf __
  \refrain
  \repeat unfold 4 Nang_!
  quell' nou -- velle ap -- por -- tez_?
}

VerseOne = \lyricmode {
	\set stanza = "1. 2."
	Clo -- ches sur clo -- ches joy -- eu -- ses,
  tin -- tent lé-  gè -- res, so -- no -- res.
  Em -- pres -- se_- toi à la crè -- che,
  \set stanza = "1." où un En -- fant vient de naî -- tre.
  Bé -- lèn, ô clo -- ches de Bé -- lèn
  qu'a -- gi -- tent les ar -- chan -- ges,
  quell' nou -- velle ap -- por -- tez_?
  \refrain
  Bé -- lèn, ô clo -- ches de Bé -- lèn
  qu'a -- gi -- tent les ar -- chan -- ges,
  quell' nou -- velle ap -- por -- tez_?
}

VerseTwo = \strophemode 2 ##f 24 \lyricmode {
	où l'En -- fant Dieu vient au mon -- de.
}

VerseThree = \strophemode 3 ##t \lyricmode {
	Et dans la nuit lu -- mi -- neu -- se,
  où t'en vas_- tu, pi -- eux pâ -- tre_?
  Je vais cou -- rant à la pail -- le,
  jus -- qu'à l'en -- fant dans sa cou -- che.
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
		midiMinimumVolume = #0.3
		midiMaximumVolume = #0.5
	}  \new Voice = "alto" {\alto }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \altoVerse

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "T."
		\consists "Ambitus_engraver"
		midiMinimumVolume = #0.1
		midiMaximumVolume = #0.3
		\clef "treble_8"
	}  \new Voice = "tenor" {\tenor }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \verseTenor

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "B."
		\consists "Ambitus_engraver"
		midiMinimumVolume = #0.1
		midiMaximumVolume = #0.3
		\clef bass
	}  \new Voice = "bass" {\bass }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \verseBass

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
	\midi {\tempo 4=110 }
}
