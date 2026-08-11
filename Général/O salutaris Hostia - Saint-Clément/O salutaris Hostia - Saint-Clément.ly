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
	\mergeDifferentlyDottedOn
	\mergeDifferentlyHeadedOn
	\bar ".|:"
	\repeat volta 2 {
	  d4 b(c') b |
	  d'(b) a |
	  g(a) e |
	  g(fis) e |
	  d2 4 | 
	  g4(a) b |
	  a2 g4 |
	  fis2 d4 |
	  b4(c') b |
	  d'(b) a |
	  g(a) e | 
	  g(fis) e |
	  d(e) fis |
	  g(b) a |
	  e(g) fis |
	  g2 s4
	}
	e2. d \bar "|."
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
	2 s4
	
	c2. b,
}

tenor = \fixed c {
	\global
	d4 g2 4 |
	a4(d') c' |
	b4(c') a |
	2 g4 |
	a(g) a |
	b2 g4 |
	e2 a4 |
	2 4 |
	g2 4 |
	a(d') c' |
	b(c') a |
	2 fis4 |
	g2 a4 |
	g2 c'4 |
	2 4 |
	b2 s4
	
	e2. d
}

bass = \fixed c {
	\global
	d4 g,2 g4 |
	d2 4 |
	e(a,) c |
	d2 e4 |
	fis(g) fis |
	e2 4 |
	a,2 4 |
	d2 4 |
	g,2 g4 |
	d2 4 |
	e(a,) c |
	d2 c4 |
	b,2 d4 |
	e(b,) c |
	a,2 d4 |
	g,2 s4
	
	c2. g,
}

VerseOne = \strophemode 1 ##f \lyricmode {
	O sa -- lu -- ta -- ris Hos -- ti -- a,
  quæ cæ -- li pan -- dis os -- ti -- um.
  Bel -- la pre -- munt hos -- ti -- li -- a,
  da ro -- bur, fer au -- xi -- li -- um.
  A -- men.
}

VerseTwo = \strophemode 2 ##t \lyricmode {
	U -- ni tri -- no -- que Do -- mi -- no
  sit sem -- pi -- ter -- na glo -- ri -- a,
  qui vi -- tam si -- ne ter -- mi -- no
  no -- bis do -- net in pa -- tri -- a.
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
		subtitle = "dit \"de Saint-Clément\""
		composer = "origine anglaise - XIXe"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=120 }
}
