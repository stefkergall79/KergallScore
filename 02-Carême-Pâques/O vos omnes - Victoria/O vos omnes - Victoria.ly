\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key c \major
	\time 4/4
}

soprano = \relative c'' {
	\global
	R1
	a1
	cis2 d ~ |
	4 c bes2 ~ |
	2 a ~ |
	2 r4 4 ~ | 
	
	4 4 c2 |
	d2. 4 |
	e1 |
	a, |
	R
	r4 a d2 ~ |
	4 4 2 |
	2 cis |
	d1 |
	cis2 r
	R1
	r2 d ~ |
	2 c |
	bes1 | 
	
	a2 r4 4 ~ |
	4 g8 [ f ] g4 4 |
	a1 |
	r4 a2 4 |
	4 4 bes a ~ |
	4 g a cis ~ |
	4 4 4 4 |
	d1 c |
	r4 a2 4 |
	4 4 bes2 ~ |
	2 a ~ |
	2 r |
	d f ~ |
	4 e4 2 ~ |
	2 r4 4 ~ |
	4 4 4 4 |
	d2. 4 |
	cis2 r |
	f1 |
	e2 d4. e8 |
	f2 g |
	c,1 
	
	R1
	r2 e ~ |
	2 f |
	e4 2 d4 |
	e c2 f4 ~ |
	4 d2 e4 ~ |
	8 [ d ] 2 cis4 |
	d2 r |
	R1
	r2 d ~ |
	2 c |
	bes1 |
	a2 r4 4 ~ |
	4 g8 [ f ] g4 4 |
	a1 |
	r4 a2 4 |
	4 4 bes a ~ |
	4 g a cis ~ |
	4 4 4 4 |
	d1 c |
	r4 a2 4 |
	4 4 bes2 ~ |
	2 a ~ |
	1 \bar "|."
}

sopranoVerseOne = \lyricmode {
	O vos óm -- _ _ nes,
	qui tran -- sí -- tis per ví -- am,
	at -- tén -- di -- te et vi -- dé -- te.
	Si est dó -- lor sí -- _ _ mi -- lis
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- us,
	sí -- cut dó -- lor mé -- us.
	At -- tén -- di -- te,
	u -- ni -- vér -- si pó -- pu -- li,
	et vi -- dé -- _ _ _ te
	do -- ló -- rem mé -- _ um,
	do -- ló -- rem mé -- _ _ um.
	Si est dó -- lor sí -- _ _ mi -- lis
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- us,
	sí -- cut dó -- lor mé -- us.
}


alto = \fixed c' {
	\global
	r2 d ~ |
	2 a ~ |
	2 f ~ |
	2 g ~ |
	2 c |
	c'2. 4 |
	2 a4 c' ~ |
	4 b2 a4 |
	g1 |
	fis |
	r2 a |
	2. 4 |
	1 |
	bes2 a4 4 ~ |
	4 g8 [ f ] g2 |
	a r |
	r a ~ |
	2 g |
	a1 |
	d2 g4. f8 |
	
	e4 d2 cis4 |
	d2. 4 |
	e2 r4 4 ~ |
	4 4 4 4 |
	f2. e4 |
	d2 e |
	r4 a2 4 |
	4 4 bes2 |
	a4 g8 [ f ] g2 |
	a4 f2 4 |
	e fis g2 ~ |
	2 e ~ |
	2 r |
	r a |
	c'2. b4 |
	1
	c'4. 8 4 4 |
	bes a2 g4 |
	a2 r |
	1 ~ |
	2 f ~ |
	2 bes |
	a r4 a |
	
	bes2. a4 |
	g2 a |
	r4 a c'2 ~ |
	4 bes a2 |
	2 r4 4 |
	f2 bes |
	a1 |
	fis2 r |
	r a ~ |
	2 g |
	a1 |
	d2 g4. f8 |
	e4 d2 cis4 |
	d2. 4 |
	e2 r4 4 ~ |
	4 4 4 4 |
	f2. e4 |
	d2 e |
	r4 a2 4 |
	4 4 bes2 |
	a g |
	a4 f2 4 |
	e fis g2 ~ |
	4 f e2 ~|
	2 fis |
}

altoVerseOne = \lyricmode {
	O vos óm -- _ nes,
	qui tran -- sí -- tis per __ _ _ ví -- am,
	at -- tén -- di -- te et vi -- dé -- _ _ te.
	Si est dó -- lor sí -- _ _ _ _ _ mi -- lis
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- _ _ _ us,
	sí -- cut dó -- lor mé -- us.
	At -- tén -- di -- te,
	u -- ni -- vér -- si pó -- _ pu -- li,
	et vi -- dé -- te
	do -- ló -- rem mé -- um,
	do -- ló -- rem mé -- um,
	do -- ló -- rem mé -- um.
	Si est dó -- lor sí -- _ _ _ _ _ mi -- lis
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- _ _ us.
}


tenor = \relative c' {
	\global
	d1 f |
	e2 d4. c8 |
	d [ e ] f2 e8 [ d ] |
	e2 f ~ |
	2 e ~ |
	4 4 2 |
	g4 g,8 [ a ] b [ c ] d4 ~ |
	4 cis8 [ b ] cis2 |
	d1 |
	r2 e |
	f2. 4 |
	1 |
	g2 e4 f ~ |
	8 [ e d c ] d2 |
	e r |
	f1 |
	e2 d |
	e1 |
	g4. f8 e4 d |
	
	cis4 f e f ~ |
	4 e d2 ~ |
	4 cis8 [ b ] cis4 a ~ |
	4 4 4 4 |
	d2. c4 |
	bes2 a4 e' ~ |
	4 4 4 4 |
	f4. e8 f4 g ~ |
	8 [ f ] 2 e4 |
	f2 r4 d ~ |
	4 cis d d |
	e d2 cis8 [ b ] |
	cis2 r |
	r d |
	a'2. gis4 |
	1 |
	a4. 8 4 g |
	f4. e8 d4 4 |
	e2 r |
	d1 |
	cis2 d4. c8 |
	d [ e ] f2 e4 |
	f2 e |
	
	f2. e4 |
	d2. cis8 [ b ] |
	cis4 a a'2 ~ |
	4 g f2 |
	e4 4 a2 |
	d,2 g |
	f4 e8 [ d ] e2 |
	d2 r |
	f1 e2 d |
	e1 |
	g4. f8 e4 d |
	cis f e f ~ |
	4 e d2 ~ |
	4 cis8 [ b ] cis4 a ~ |
	4 4 4 4 |
	d2. c4 |
	bes2 a4 e' ~ |
	4 4 4 4 |
	f4. e8 f4 g ~ |
	8 [ f ] 2 e4 |
	f2 r4 d4 ~ |
	4 cis d d |
	e d2 cis8 [ b ] |
	cis2 d |
}
tenorVerseOne = \lyricmode {
	O __ _ vos óm -- _ _ _ _ _ nes,
	qui tran -- sí -- tis per __ _ _ _ ví -- am,
	at -- tén -- di -- te et vi -- dé -- _ te.
	Si est dó -- lor sí -- _ _ mi -- lis,
	sí -- _ _  _ _ mi -- lis
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- _ _ _ _ _ us,
	sí -- cut dó -- lor mé -- _ _ us.
	At -- tén -- di -- te,
	u -- ni -- vér -- si pó -- _ _ pu -- li,
	et vi -- dé -- _ _ _ _ te
	do -- ló -- rem mé -- _ um,
	do -- ló -- rem mé -- um,
	do -- ló -- rem mé -- _ _ _ um.
	Si est dó -- lor sí -- _ _ mi -- lis,
	sí -- _ _ mi -- lis __ _ _
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- _ _ _ _ _ us,
	sí -- cut dó -- lor mé -- _ _ _ us.
}


bass = \fixed c {
	\global
	R1
	d |
	a2 bes ~ |
	4 a g2 ~ |
	2 f ~ |
	2 a ~ |
	4 4 2 |
	g2. f4 |
	e1 |
	d |
	r2 a |
	d'2. 4 |
	1 |
	g2 a |
	bes1 |
	a2 r |
	d'1 |
	c'2 bes |
	a1 |
	g |
	
	a1 |
	bes2. 4 |
	a1 |
	R1*2
	r2 r4 a ~ |
	4 4 4 4 |
	d'2 bes |
	c'1 |
	f4 d2 4 |
	a4 4 g2 ~ |
	2 a ~ |
	2 r |
	R1
	a2 e' ~ |
	4 4 2 |
	a4. 8 4 c' |
	d'4. c'8 bes4 4 |
	a2 r |
	d1 |
	a2 bes ~ |
	4 a g2 |
	f a |
	
	d'2. c'4 |
	bes2 a ~ |
	2 r |
	r r4 d |
	a2 f |
	bes g |
	a1 |
	d2 r |
	d'1 |
	c'2 bes |
	a1 g a |
	bes2. 4 |
	a1
	R1*2
	r2 r4 	a ~ |
	4 4 4 4 |
	d'2 ( bes |
	c'1 )
	f4 d2 4 |
	a a g2 ~ |
	2 a ~ |
	2 d |
}

bassVerseOne = \lyricmode {
	O vos óm -- _ _ nes,
	qui tran -- sí -- tis per ví -- am,
	at -- tén -- di -- te et vi -- dé -- te.
	Si est dó -- lor sí -- _ _ mi -- lis
	sí -- cut dó -- lor mé -- _ _ us,
	sí -- cut dó -- lor mé -- us.
	At -- tén -- di -- te,
	u -- ni -- vér -- si pó -- _ _ pu -- li,
	et vi -- dé -- _ _ te
	do -- ló -- rem mé -- um,
	do -- ló -- rem mé -- _ _ um.
	Si est dó -- lor sí -- _ _ mi -- lis
	sí -- cut dó -- lor mé -- us,
	sí -- cut dó -- lor mé -- _ us.
}



ChoeurPart = \new ChoirStaff \with {
	midiInstrument = "choir aahs"
} <<
	\new Staff \with {
		instrumentName = "S."
		\consists "Ambitus_engraver"
	}  \new Voice = "soprano" {\soprano }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \sopranoVerseOne

	\new Staff \with {
		instrumentName = "A."
		\consists "Ambitus_engraver"
	}  \new Voice = "alto" {\alto }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \altoVerseOne
	
	\new Staff \with {
		instrumentName = "T."
		\consists "Ambitus_engraver"
		\clef "treble_8"
	}  \new Voice = "tenor" {\tenor }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \tenorVerseOne
	
	\new Staff \with {
		instrumentName = "B."
		\consists "Ambitus_engraver"
		\clef bass
	}  \new Voice = "bass" {\bass }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \bassVerseOne
>>

\tocItemComposer "O vos omnes" "\victoria"
\score {
	\header {
		title = "O VOS OMNES"
		composer = \victoria
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=100 }
}
