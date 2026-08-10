\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\autoBeamOff
	\key bes \major
	\tempo 4=60
}

soprano = \fixed c' {
	\global
	\markChanson "Couplets"
	g4 g g bes8[a] g4. d8 g4 4
	c'4 a bes g a fis g4 r
	bes4 4 4 d'8[c'] bes4. f8 bes4 4
	c' a bes g a d g
	
	\break \markChanson "Refrain"
	\repeat volta 2 {
	  f d'4. 8 4 bes c'2 4 a bes4. 8 4 g a2 4 \bar "||"
	  \alternative {
	    \volta 1,2,3 {
	      d g r2 d4 g r4 r2
	    }
	    \volta 4 {
	      d4 g r2 d4 s1
	    }
	  }
	}
	\bar "|."
}

alto = \fixed c' {
	\global
	d4 c d es d c d d g es f d es d d(f)
	f es f ges f es f f es es d d c c bes,
	
	f d es d f f(g)f es d  c bes, d es(d) c
	d g r2 d4 g r4 r2 d4 g r2 d4 g1
}

tenor = \relative c' {
	\global
	bes4 a bes c bes a bes4 4 es c d bes c a bes(c)
	d c d es d c d c bes c g bes g fis g 
	
	f |
	f g f g |
	a(bes) a fis |
	g g g g |
	g2 4 d |
	g r2 d4 g r4 r2 |
	d4	 g r2 d4 g1
}

bass = \fixed c {
  \global
	\repeat unfold 13 g4
	d g(f) bes1~2.(a4) |
	g fis f e es d g, f |
	bes,4. 8 4 d |
	f2 4 c |
	bes, a, g, bes, |
	c4(d) es d |
	g r2 d4 |
	g4 r4 r2 |
	d4	 g r2 d4 s1
}

VerseOne = \strophemode 1 ##f \lyricmode {
	Loin dans l'in -- fi -- ni s'é -- ten -- dent
	les grand prés ma -- ré -- ca -- geux.
	Pas un seul oi -- seau ne chan -- te
	dans les ar -- bres secs et creux.
	
	Ô ter -- re de dé -- tres -- se,
	où nous de -- vons sans ces -- se
	pio -- cher, pio -- cher.
}

VerseTwo = \strophemode 2 ##t \lyricmode {
	Dans ce camp morne et sau -- va -- ge,
	en -- tou -- rés de murs de fer,
	il nous sem -- ble vivre en ca -- ge,
	au mi -- lieu d'un grand dé -- sert.
	
	\repeat unfold 18 \skip1
	ai -- mer, ai -- mer.
}

VerseThree = \strophemode 3 ##f \lyricmode {
	Bruits de chaî -- nes, bruit des ar -- mes,
	sen -- ti -- nel -- le jour et nuit,
	des cris, des pleurs et des lar -- mes,
	la mort pour ce -- lui qui fuit.
}

VerseFour = \strophemode 4 ##t \lyricmode {
	Mais un jour dans no -- tre vi -- e,
	le prin -- temps re -- fleu -- ri -- ra.
	Libre a -- lors, ô ma pa -- tri -- e,
	je di -- rai_: Tu es à moi.
}

verseBass = \lyricmode {
  \repeat unfold 15 \skip1
  ah_! __
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
	} \lyricsto "alto" \VerseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \VerseTwo
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \VerseThree
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "alto" \VerseFour

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \verseBass
>>

\tocItemComposer "Chant des Marais" "César Geoffray"
\score {
	\header {
		title = "CHANT DES MARAIS"
		composer = \markup {"Harmonisation :" \geoffray}
		poet = "1943"
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {}
}
