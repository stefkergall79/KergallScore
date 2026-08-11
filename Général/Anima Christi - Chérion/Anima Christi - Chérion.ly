\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\autoBeamOff
	\key f \major
	\time 2/2
	\tempo "Adagio"
}

soprano = \fixed c' {
	\global
	a2 4 4 |
	2 2 |
	g4 f g4. f8 |
	1 |
	d2 4(e) |
	f2 2 |
	2(g4.) 8 |
	a1 |
	2 2 |
	d'2 c' |
	bes2 a4 f |
	g4.(f8) 2 |
	\bar "||"
	a4 4 8. 16 4 |
	g4 f g4. f8 |
	f1  |
	d2 4 e |
	f2 4 4 |
	2(g4.) 8 |
	a1 |
	2 4 4 |
	d'2 c'  |
	bes2 a4(f |
	g4.) f8 2 \bar "||" |
	\partial 4 a4 |
	4 4 4 4 |
	g f g4. f8 |
	f2 r4 d  |
	4. 8 4 e4 |
	f2 2 |
	2(g) |
	a1|
	4 4 4 4 |
	d'2 c' | 
	bes(a4 f |
	g4.) f8 2 \bar "||"
	d2(e) |
	f4. 8 2 |
	e4. 8 d4 4|
	cis2 d \bar "|."
}

alto = \fixed c' {
	\global
	f2 4 4 |
	2 2 |
	d4 4 4(cis8) d |
	1 |
	a,2 4(c) |
	c2 2 |
	d4(a e) d |
	cis1 |
	f2 es |
	d4(e) f2 |
	f2 4 d |
	e4.(f8) 2 |
	
	f4 4 8. 16 4 |
	d4 4 4(cis8) d |
	d1 |
	a,2 4 c4 |
	2 4 4 |
	d4(f e) d |
	cis1 |
	f2 4 es |
	d4(e) f2 |
	2 4(d |
	e4.) f8 2| 
	f4 4 4 4 4 d d d(cis8) d |
	2 r4 g, |
	a,4. 8 4 c |
	2 2 |
	d4(f e d) |
	cis1 |
	f4 4 4 es |
	d(e) f2 |
	2.(d4 |
	e4.) f8 2 |
	 
	a,2(c) |
	4. 8 2 |
	4. 8 a,4 bes, |
	a,2 2 |
}

tenor = \relative c' {
	\global
	a2 4 4 |
	2 2 |
	bes4 a4 4. 8 |
	1 |
	f2 4(g) |
	a2 2 |
	2(g4.)8 |
	e1 |
	a2 2 |
	bes c |
	d c4 a |
	c4.(<c a>8) 2 |
	a4 4 8. 16 4 |
	bes a4 4. 8 |
	1 |
	f2 4 g |
	a2 4 4 |
	2(g4.)8 |
	e1 |
	a2 4 4 bes2 c |
	d c4(a |
	c4.) 8 <a c>2 |
	
	a4 4 4 4 4 |
	bes a a4. 8 |
	2 r4 f |
	4. 8 4 g |
	a2 2 |
	2(g) |
	e1 |
	a4 4 4 4 |
	bes2 c |
	d(c4 a |
	c4.) <a c>8 2 |
	
	f2(g) |
	a4. 8 2 |
	g4. 8 f4 e |
	2 fis |
}

bass = \fixed c {
	\global
	d2 4 4 |
	2 2 |
	g4 d e4. d8 |
	1 |
	2 4(c) |
	f2 2 |
	d(bes,4.) 8 |
	a,1 |
	d2 c |
	bes, a, |
	bes, c4 d |
	c4.(f8) 2 |
	d4 4 8. 16 4 |
	g4 d e4. d8 |
	1 |
	2 4 c |
	f2 4 4 |
	d2(bes,4.) 8 |
	a,1 |
	d2 4 c |
	bes,2 a, |
	bes, c4(d |
	c4.) f8 2 |

  d4 4 4 4 4 |
  g d e4. d8 |
  2 r4 d |
  4. 8 4 c |
  f2 2 |
  d2(bes,) |
  a,1 |
  d4 4 4 c |
  bes,2 a, |
  bes,(c4 d |
  c4.) f8 2 |
  
  d2(c) |
  f4. 8 2 |
  c4. 8 d4 g, |
  a,2 d
}

VerseOne = \lyricmode {
  A -- ni -- ma Chri -- sti, san -- cti -- fi -- ca -- me.
  Cor -- pus Chri -- sti, sal -- va me.
  San -- guis Chri -- sti, i -- ne -- bri -- a me.
  A -- qua la -- te -- ris Chri -- sti, la -- va me.
  Pas -- si -- o Chris -- ti, con -- for -- ta me.
  O bo -- ne Je -- su, ex -- au -- di me.
  In ho -- ra mor -- tis me -- æ vo -- ca me.
  Et iu -- be me ve -- ni -- re ad te,
  ut cum Sanc -- tis tu -- is lau -- dem te.
  In sæ -- cu -- la sæ -- cu -- lo -- rum.
  A -- men.
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

	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
>>

\tocItemComposer "Anima Christi" "Auguste Chérion (1854-1904)"
\score {
	\header {
		title = "ANIMA CHRISTI"
		composer = \cherion
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi { \tempo 4=70 }
}
