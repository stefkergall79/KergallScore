\version "2.26.0"
\include "settings.ily"

global = { 
  \partial 4
	\autoBeamOff
	\key f \major
}

soprano = \fixed c' {
	\global
	\repeat unfold 2 {
	  c8 8 f4 a a g f2 4 8 g a4 c'4 4. bes8 a4 r2
	  f8 g a4 a a g a4.(bes8) c'4
	  bes8 a g4 g g f g4.(a8) bes4
	  a8 c' a4. 8 g4. 8 a4 8 c' a4. 8 g4. 8 f4 \bar"||"
	}
}

alto = \fixed c' {
	\global
	s4 s1 s2.
	c8 8 f4 a a4. g8 f4 r2
	f8 e f4f f e f4.(g8) a4
	g8 f e4 e e d e4.(f8) g4
	f8 a f4. 8 e4. 8 f4 8 a f4. 8 e4. 8 f4\break
	
	c8 8 4 f f e c2 4 8 e f4 a a4. g8 f4 r2
	f8 e f4 f f e f4.(g8) a4
	g8 f e4 e e d e4.(f8) g4
	f8 a f4. 8 e4. 8 f4 8 a f4. 8 e4. 8 f4
}

tenor = \relative c' {
	\global
	r4 R1*3 r2 r4
	c8 8 4 4 4 4 2 4 8 8 4 4 4 4 2 4
	8 8 4. 8 4. 8
	a4 8 8 bes4. 8 c4. 8 a4
	
	a8 g a4 c c c a2 4 8 c8 4 4 4. 8 4 r2
	a8 c8 4 4 4 4 2 4
	8 8 4 4 4 4 2 4
	8 8 4. 8 4. 8 a4 8 8 bes4. 8 c4. 8 a4
}

bass = \fixed c {
	\global
	r4 R1*3 r2 r4 s4
	s1*3 r2 r4
	f8 8 4. 8 e4. 8 d4 8 8 4. 8 c4. 8 f4
	
	8 c f4 f f c f2 4 8 c f4 4 4. c8 f4 r2
	f8 c f4 4 4 c f2 4
	8 8 c4 4 4 4 2 4
	f8 8 4. 8 e4. 8 d4 8 8 4. 8 c4. 8 f4
}

VerseOne = \strophemode 1 ##f \lyricmode {
  Un jour, dans la fu -- sil -- la -- de
  ga -- lo -- pant à l’in -- con -- nu,
  nous al -- lions en ca -- val -- ca -- de,
  tu é -- tais mon ca -- ma -- ra -- de,
  ce -- lui que j’ai -- mais le plus,
  ce -- lui que j’ai -- mais le plus.
}

VerseTwo = \strophemode 2 ##f \lyricmode {
  Un ca -- va -- lier par bra -- va -- de,
  des siens le plus ré -- so -- lu,
  me por -- ta son es -- to -- ca -- de,
  ce fut toi mon ca -- ma -- ra -- de,
  ce fut toi qui la re -- çu,
  ce fut toi qui la re -- çu.
}

VerseThree = \strophemode 3 ##t \lyricmode {
  J’ai ven -- gé l’es -- ta -- fi -- la -- de
  que ce coup t’a -- vait va -- lu_;
  mais très tard, dans la nuit froi -- de,
  j’ai pleu -- ré mon ca -- ma -- ra -- de,
  près de ton corps é -- ten -- du,
  près de ton corps é -- ten -- du.
}

VerseFour = \strophemode 4 ##t \lyricmode {
  Je suis ma rou -- te maus -- sa -- de,
  et je che -- vau -- che sans but_;
  au ha -- sard d’une em -- bus -- ca -- de,
  j’ai per -- du mon ca -- ma -- ra -- de,
  je ne ri -- rai ja -- mais plus,
  je ne ri -- rai ja -- mais plus.
}

VerseFive = \strophemode 5 ##f #45 \lyricmode {
  Prince, é -- cou -- te ma ba -- la -- de,
  Et cet ap -- pel é -- per -- du_!
  Prie le Dieu des ca -- val -- ca -- des
  de pla -- cer mon ca -- ma -- ra -- de
  à la droi -- te de Jé -- sus,
  à la droi -- te de Jé -- sus.
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
	} \lyricsto "soprano" {\VerseOne \VerseTwo }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" {\VerseThree \VerseFour }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \VerseFive

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
>>

\tocItem \markup "La cavalcade"
\score {
	\header {
		title = "LA CAVALCADE"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=85 }
}
