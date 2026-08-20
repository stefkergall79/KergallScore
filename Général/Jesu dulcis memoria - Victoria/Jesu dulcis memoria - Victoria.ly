\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

#(set-global-staff-size 18 )

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key c \major
	\time 4/4
	\tempo "Andante religioso"
}

soprano = \fixed c' {
	\global
	a2 b a2.(gis4) |
	a c' b2 ( |
	a4.) 8 gis4 4 |
	a2 2 | 
	g?2. a4 |
	g2. 4 |
	a4.( b16 [ c' ] d'4 c' |
	g4. ) 8 4 c' ( |
	a d' b c' |
	b4. ) 8 c'2 | 
	r d'4 8 c' |
	b2 c' |
	a4 ( g a d' |
	b ) c' b2 |
	a4 4 2 |
	fis4 g2 fis4 | 
	g4 b2 a4 |
	b ( g ) fis2 |
	g4 ( a b c' ) |
	b ( a2 ) gis4 |
	a a a a |
	4 4 2 \bar "|."
}

alto = \fixed c' {
	\global
	e1 |
	2. 4 |
	4 4 2~ |
	4 d e2 |
	8 ( [ f ] g4 ) f2 |
	e2 4 ( d~ |
	4 ) 2 g4( ~ |
	4 f2 e4 |
	d4. ) 8 e2 |
	f4. ( g16 [ f ] e2~ |
	4 ) 4 2~ |
	4 4 a2 |
	g4 2 e4 |
	fis ( g2 f4 |
	e4. ) 8 4 g4~ |
	4 f e e |
	d2. 4 |
	2 e |
	dis4 e2(dis4 ) |
	e2 2 |
	2. 4 |
	4 cis d e |
	f(e8 ) d e2 |
}

tenor = \relative c' {
	\global
	c2 b |
	c b4 4 |
	c4.( b16 [ a ] gis2 |
	a4. ) 8 b2 |
	r4 e2 d4 ( ~ |
	4 c8 [ b ] c4 ) 4 |
	4 ( b8 [ a ] b4 ) b |
	c4. ( d16 [c ] b4 c ~ |
	4 ) b c c ( ~ |
	4 b8 [ a ] gis4 a ~ |
	4 ) gis a2 |
	r4 4 d2 ~ |
	4 4 e c~ |
	4 bes ( a4. b16 [ a ] |
	gis4 ) a b e8 ( [ d ] |
	cis ) b16 [cis ] d4 4 ( c ~ |
	4 bes ) a4. 8 |
	b?4 g ( c2 ) |
	b1 |
	b4 c gis ( a |
	b c ) b4. 8 |
	cis4 e f c |
	d ( cis8 ) b cis 2 |
}

bass = \fixed c {
	\global
	a2 gis |
	a e |
	a, e ( |
	f4. ) 8 e4 4 |
	cis2 d |
	e2. f4 |
	g2. e4 |
	a2 g ~ |
	4 g, c2 |
	d e ~ |
	4 e, a,2 |
	a4 8 g fis2 |
	g c |
	d1 |
	e |
	a, |
	d2. 4 |
	g,2 r |
	r b, |
	e2. 4 |
	2. 4 |
	a,1 |
	2 2 |
}

VerseOne = \lyricmode {
	Jé -- su dúl -- cis me -- mó -- ri -- a,
	dans vé -- ra, vé -- ra
	cór -- dis gáu -- di -- a, gáu -- di -- a_:
	Sed sú -- per mel et óm -- ni -- a,
	sú -- per mel et óm -- ni -- a,
	é -- jus dúl -- cis præ -- sén -- ti -- a,
	dúl -- cis præ -- sén -- ti -- a.
}

verseTenor = \lyricmode {
  Jé -- su dúl -- cis me -- mó -- ri -- a,
	dans vé -- ra
	cór -- dis gáu -- di -- a, gáu -- di -- a_:
	Sed sú -- per mel et óm -- ni -- a,
	sú -- per mel et óm -- ni -- a,
	é -- jus dúl -- cis præ -- sén -- ti -- a,
	dúl -- cis præ -- sén -- ti -- a.
}

verseBass = \lyricmode {
  Jé -- su dúl -- cis me -- mó -- ri -- a,
	dans vé -- ra cór -- dis gáu -- di -- a,
	vé -- ra cór -- dis gáu -- di -- a_:
	Sed sú -- per mel et óm -- ni -- a,
	et óm -- ni -- a,
	é -- jus dúl -- cis præ -- sén -- ti -- a,
}


ChoeurPart = \new ChoirStaff <<
	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists "Ambitus_engraver"
	}  \new Voice = "soprano" {\soprano }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseOne

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists "Ambitus_engraver"
	}  \new Voice = "alto" {\alto }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \verseTenor

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists "Ambitus_engraver"
		\clef "treble_8"
	}  \new Voice = "tenor" {\tenor }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \verseTenor

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists "Ambitus_engraver"
		\clef bass
	}  \new Voice = "bass" {\bass }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \verseBass

>>


\tocItemComposer "Jesu dulcis memoria" "\victoria"
\score {
	\header {
		title = "JESU DULCIS MEMORIA"
		composer = \victoria
	}
	\ChoeurPart
	\layout {}
	\midi {\tempo 4=70 }
}
