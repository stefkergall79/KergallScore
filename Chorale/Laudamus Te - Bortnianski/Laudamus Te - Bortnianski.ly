\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\autoBeamOff
	\key c \major
	\time 4/4
	\partial 4
	\mergeDifferentlyDottedOn
	\tempo "Adagio ma non troppo"
}

soprano = \fixed c' {
	\global
	\bar ".|:"
	\repeat volta 2 {
	  e4 2. 4 |
	  2(d4) g |
	  f2. g4 |
	  f f e e |
	  g g gis4 4 |
	  a1 |
	  g2 f |
	  e2. r4
	}
	\repeat volta 2 {
	  e4 8 8 f4 g |
	  f4. 8 2 |
	  fis4 8 8 g4 a |
	  g4. 8 2 |
	  gis4 8 8 a4 b |
	  a4. 8 2 |
	  g2 f |
	  e2. r4 |
	}
	\repeat volta 2 {
	  f2 e f e |
	  d dis |
	  e1
	}
}

alto = \fixed c' {
	\global
	c4 2. 4 |
	2(b,4) g, |
	d2. 4 |
	c c c c |
	e e e d |
	e2(f) |
	e d |
	c2. r4 |
	
	c4 8 8 4 4 |
	4. 8 2 |
	d4 8 8 4 4 |
	4. 8 2 |
	e4 8 8 4 4 |
	e4. 8 dis2 |
	e d |
	c2. r4 |
	
	c2 2 2 2 2 2 s1 |
}

tenor = \relative c' {
	\global
	g4 2. 4 |
	2. 4 |
	b2. 4 |
	a4 as g g |
	c4 4 4 d c1 |
	2 b |
	g2. r4 |
	
	g4 8 8 a4 bes |
	a4. 8 2 |
	4 8 8 b4 c |
	b4. 8 2 |
	4 e8 d c4 d |
	c4. 8 2 |
	2 b |
	g2. r4 |
	
	a2 g |
	b4(a) g2 |
	a2 2 g1|
}

bass = \fixed c {
	\global
	c4 2. e4 |
	g2(g,4) g4 |
	2. 4 |
	c4 4 4 4 |
	4 e8[g] c'4 b |
	a(g f2) |
	g2 g, |
	c2. r4 |
	
	c4 8 8 4 e |
	f4. 8 2 |
	d4 8 8 4 fis |
	g4. 8 2 |
	e4 8 8 4 gis4 |
	a4. g8 fis2 |
	g2 g, |
	c2. r4 |
	
	2 2 2 2 |
	<f f,>2 2 c1 |
}

VerseOne = \lyricmode {
	Lau -- da -- mus Te,
	Be -- ne -- di -- ci -- mus Te,
	Glo -- ri -- fi -- ca -- mus Te,
	Do -- mi -- ne.

	\repeat unfold 3 { E -- xo -- ra -- mus Te, Do -- mi -- ne, }
	Do -- mi -- ne.
	
	E -- xo -- ra -- mus Do -- mi -- ne.
}

VerseTwo = \lyricmode {
	\override LyricText.font-shape = #'italic

	Ti -- bie pai -- om,
	Ti -- bie bla -- ga -- sla -- vim,
	Ti -- bie bla -- ga -- da -- rim,
	Gos -- po -- di.

	\repeat unfold 3 { I ma -- lim -- ti -- sia Bo -- je -- nach, }
	Bo -- je -- nach.

	Ma -- lim -- ti -- sia Bo -- je -- nach.
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
		subtitle = "TIBIE PAION"
		composer = \bortnianski
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=70 }
}
