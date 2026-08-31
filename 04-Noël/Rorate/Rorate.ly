\version "2.26.0"
\include "settings.ily"
\include "composers.ily"
#(ly:set-option 'backend 'cairo)

global = {
	\key f \major
	\cadenzaOn
}

sopranoOne = \relative c' {
	\global
	f2 \bar"|"
	g ( a ) \bar"|"
	a1 \bar"|"
	d2 c \bar"|"
	2 ( bes ) a \bar"|"
	1 ( g ) \bar"|"
	a2 bes a \bar"|"
	g ( f ) e \bar"|"
	f1 ( e ) \bar"|"
	d \bar"||"
}


sopranoTwo = \relative c'' {
	\global
	a2 c ( d )	c1 	bes2 c 	a ( d ) c2 \breve
	2 d f	e ( d ) cis	a ( d1 cis!2 )	d1
}


alto = \fixed c' {
	\global
	c2 	2 ( f )	e1 	g2 2	 f1 2	d1 ( e )
	f2 2 2 	g ( a ) g	d1 ( e ) f
}


tenor = \relative c {
	\global
	f2 	g ( a )	1	d2 c 	c ( bes ) a2 	1 ( g )
	a2 bes c 	bes ( a ) bes 	a\breve	1
}


bass = \fixed c {
	\global
	f2 	e ( d )	s1 	g2 e 	f ( bes, ) f2	1 ( c )
	f2 bes a 	g ( f ) e 	<a, f ^( >1  ~ <a, e )> 	d
}


VerseOne = \lyricmode {
	Ro -- rá -- te cæ -- li dé -- su -- per,
  et nu -- bes plu -- ant ju -- stum.
}

ChoeurPart = \new ChoirStaff \with {
	midiInstrument = "choir aahs"
} <<
	\new Staff \with {
		instrumentName = "Foule"
	}  \new Voice = "sopranoOne" {\sopranoOne }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "sopranoOne" \VerseOne

	\new Staff \with {
		instrumentName = \markup \center-column { "S." "A." }
	} <<
		\new Voice = "sopranoTwo" {\voiceOne \sopranoTwo }
		\new Voice = "alto" {\voiceTwo \alto }
	>>
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "sopranoTwo" \VerseOne

	\new Staff \with {
		instrumentName = \markup \center-column { "T." "B." }
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
>>

\paper {
  system-count = 1
}

\tocItem \markup "Rorate"
\markup \column {
  \fill-line {\bold \fontsize #5 "RORATE" }
  \vspace #1
  \fill-line {
    \epsfile #X #110 #"cache/rorate_refrain.png"
  }
}

\score {
	\ChoeurPart
	\layout {}
	\midi {\tempo 2=80 }
}

spc = #0.8
\markup \column {
  \vspace #spc
  \fill-line {\epsfile #X #110 #"cache/rorate_couplet1.png"}
  \vspace #spc
  \fill-line {\epsfile #X #110 #"cache/rorate_couplet2.png"}
  \vspace #spc
  \fill-line {\epsfile #X #110 #"cache/rorate_couplet3.png"}
  \vspace #spc
  \fill-line {\epsfile #X #110 #"cache/rorate_couplet4.png"}
}
