\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key g \major
	\time 2/2
	\partial 2
}

soprano = \fixed c' {
	\global
	\markChanson "Refrain"
	d4 g |
	g b8 g d4 g |
	2 4 8 a |
	b4 c'8 b8 a4 g |
	a a d g |
	4 b8 g d4 g |
	2 4 a |
	b c'8 b a4 d' |
	g2 \bar "||"\break
	
	\markChanson "Couplets"
	b4 c' |
	d' c'8 b c'4 e' |
	d'2 b4 c' |
	d' e'8 d' c'4 b |
	4 a b c' |
	d' c'8 b c'4 e' |
	d'2 b4 c' |
	d' e'8 d' c'4 b |
	a2 \bar "|."
}

alto = \fixed c' {
	\global
	d4 4 |
	4 g8 d8 4 g |
	2 4 8 8 |
	4 8 8 e4 4 |
	d d d d |
	d g8 d8 4 4 |
	2 g4 g |
	4 8 8 e4 fis |
	g2
	
	4 e8[fis] |
	g4 8 8 4 fis |
	a(g8[fis]) g4 e8[fis] |
	g4 8 8 e4 4 |
	d d g e8[fis] |
	g4 8 8 4 fis |
	a4(g8[fis]) g4 e8[fis] |
	g4 8 8 e4 4 |
	d2
}

tenor = \relative c' {
	\global
	b4 4 |
	4 d8 b8 4 4 |
	2 4 8 c |
	d4 e8 d c4 b |
	a c b b |
	b d8 b8 4 4 |
	2 4 c |
	d e8 d c4 a |
	b2
	
	d4 c |
	b e8 8 4 c |
	d2 4 c |
	b4 8 8 a4 g |
	4 fis d' c |
	b e8 8 4 c |
	d2 4 c |
	b4 8 8 a4 g |
	fis2
}

bass = \fixed c {
	\global
	g4 4 |
	4 8 8 4 4 |
	2 4 8 8 |
	4 8 8 c4 e |
	fis a g g |
	4 8 8 4 4 |
	2 4 4 |
	4 8 8 c4 d |
	g2
	
	4 4 |
	b, e8 8  a4 4 |
	c'(b8[a]) g4 a |
	b e8[g] a4 c |
	d d g g |
	b, c8[8] a4 4 |
	c'(b8[a]) g4 a |
	b e8[g] a4 c |
	d2
}

VerseOne = \lyricmode {
	Il est né le Di -- vin En -- fant,
	jou -- ez haut -- bois, ré -- son -- nez mu -- set -- tes_!
	Il est né le Di -- vin En -- fant,
	chan -- tons tous son a -- vè -- ne -- ment_!
	\set stanza = "1."
	De -- puis plus de qua -- tre mille ans
	nous le pro -- met -- taient les pro -- phè -- tes,
	de -- puis plus de qua -- tre mille ans
	nous at -- ten -- dions cet heu -- reux temps.
}

VerseTwo = \strophemode 2 ##t 34 \lyricmode {
	Ah, qu'il est beau, qu'il est char -- mant,
	ah, que ses grâ -- ces sont par -- fai -- tes_!
	Ah, qu'il est beau, qu'il est char -- mant,
	qu'il est doux ce Di -- vin En -- fant_!
}

VerseThree = \strophemode 3 ##f 34 \lyricmode {
	Une é -- table est son lo -- ge -- ment,
	un peu de paille est sa cou -- chet -- te,
	une é -- table est son lo -- ge -- ment_;
	pour un Dieu, quel a -- bais -- se -- ment_!
}

VerseFour = \strophemode 4 ##t 34 \lyricmode {
	Ô Jé -- sus, ô Roi tout puis -- sant,
	tout pe -- tit En -- fant que vous ê -- tes,
	ô Jé -- sus, ô Roi tout puis -- sant,
	rég -- nez sur nous en -- tiè -- re -- ment.
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


\tocItem \markup "Il est né, le Divin Enfant"
\score {
	\header {
		title = "IL EST NÉ, LE DIVIN ENFANT"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 2=70 }
}
