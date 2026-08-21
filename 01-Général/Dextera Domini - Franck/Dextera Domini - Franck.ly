\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key bes \major
	\time 4/4
	\dynamicUp
	\tempo "Maestoso ma non lento"
	\autoBeamOff
}

globalO = {
  \mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key bes \major
	\time 4/4
	\dynamicNeutral
}

melodyVerse = \lyricmode {
	Déx -- te -- ra Dó -- mi -- ni
	fé -- cit vir -- tú -- tem,
	déx -- te -- ra Dó -- mi -- ni
	ex -- al -- tá -- vit me.
	Al -- le -- lú -- ia, al -- le -- lú -- ia.
	Déx -- te -- ra Dó -- mi -- ni
	ex -- al -- tá -- vit me.
}
melodyAlleluiaPlusVerse = \lyricmode {
  Déx -- te -- ra Dó -- mi -- ni
	fé -- cit vir -- tú -- tem,
	déx -- te -- ra Dó -- mi -- ni
	ex -- al -- tá -- vit me.
	Al -- le -- lú -- ia, al -- le -- lú -- ia, al -- le -- lú -- ia.
	Déx -- te -- ra Dó -- mi -- ni
	ex -- al -- tá -- vit me.
}

soprano = \relative c'' {
	\global
	R1*32
	bes4.\ff c8 d2 |
	c4. bes8 c2 |
	bes2 d4 f |
	g ( es ) c2 |
	bes4. c8 d2 |
	c4. bes8 c2 |\break
  bes ( d4 ) f |
  d c bes2 |
  f' ( g8 [ f ] es4 |
  f4. ) 8 g [ f ] es4 |
  f2 ( es8 [ d ] c4 ) |\break
  d8 [ c ] bes4 c2 |
  bes4. c8 d2 |
  c4. bes8 c2 |
  \once \hide Slur bes\rit-^_( d4-^ ) f-^ |
  d-^ c-^ bes2-^\!\fermata |\break
  
  \tempo "Un peu plus lent"
  \textMark \markup \italic "Solo ou petit choeur"
  f'4.\p es8 d2 |
  es4. d8 c2
  R1*2
  as4. ( ges8 ) f2 |
  ges4. f8 es2 |\break
  R1*6
}
sopranoVerseOne = \lyricmode {
	\melodyVerse
}


tenor = \relative c' {
	\global
	R1*16
	bes4.\mf c8 d2 |
	c4. bes8 c2 |
	bes2 d4 f |
	g ( es ) c2 |
	bes4. c8 d2 |
	c4. bes8 c2 |\break
  bes ( d4 ) f |
  d c bes2 |
  f'\rinf\cresc ( g8 [ f ] es4 |
  f4. ) 8 g [ f ] es4 |
  f2 ( es8 [ d ] c4 ) |\break
  d8\dim [ c ] bes4 c2 |
  bes4.\mf c8 d2 |
  c4. bes8 c2 |
  bes ( d4 ) f |
  d c bes2 |\break
  
  d4.\ff es8 f2 |
  c4. 8 2 |
  f2 d~ |
  4 g f es |
  d4. es8 f2 |
  c4. 8 2 |
  d2. 4 |
  f es d2 |
  r4 8. 16 es4 c |
  r d8. 16 bes4 c |
  r d ( es f~ |
  4 ) d es4 4 |
  d4. es8 f2 |
  es4. 8 2 |
  \once \hide Slur d2\rit-^ _( f4-^ ) 4-^ |
  g-^ a,-^ bes2-^\!\fermata |
  
  des4.\p c8 bes2 |
  c4. bes8 a2
  R1*2
  f'4. ( es8 ) d2 |
  g4. f8 es2 |
  R1*6
  
}
tenorVerseOne = \lyricmode {
	\melodyVerse
	\melodyAlleluiaPlusVerse
}


bass = \relative c {
  \global
  bes4.\p c8 d2 |
  c4. bes8 c2 |
  bes2 d4 f |
  g ( es ) c2 |
  bes4. c8 d2 |\break
  c4. bes8 c2 |
  bes ( d4 ) f |
  d c bes2 |
  f'\cresc ( g8 [ f ] es4 |
  f4. ) 8 g [ f ] es4 |\break
  f2 ( es8 [ d ] c4 ) |
  d8\dim [ c ] bes4 c2 |
  bes4.\p c8 d2 |
  c4. bes8 c2 |
  bes ( d4 ) f |
  d c bes2 |\break
  
  r2 bes'4.\mf 8 |
  f2 4. 8 |
  g2 d |
  es4 c f2 |
  d4 r bes'4. 8 |
  4 ( g ) a4. 8 |
  bes2 f4 4 |
  g a bes2 |
  r4 d8.\rinf 16 es4 c |
  r d8. 16  bes4 c |
  r d8 ( [ bes ] g4 a |
  bes4. ) 8 8 [ a ] g [ f ] |
  r2 bes4.\mf 8 |
  f2 4. 8 |
  g4 bes2 a4 |
  g a bes2 |
  
  bes4.\ff 8 2 |
  f4. 8 2 |
  g d |
  es4 ( c' ) a f |
  r2  bes4. 8 |
  4 ( g ) a4. 8 |
  bes2 f4 4 |
  g a bes2 |
  r4 8. 16 4 4 |
  r4 8. 16 es,4 g |
  r bes ( g a |
  bes4. ) 8 8 [ a ] g [ f ] |
  bes4. 8 2 |
  f4. 8 2 |
  \once \hide Slur g2\rit-^ _( d4-^ ) d-^ |
  es-^ f-^ bes,2-^\!\fermata |
  
  f'4.\p 8 ges2 |
  
}
bassVerseOne = \lyricmode {
  \melodyVerse
  \melodyAlleluiaPlusVerse
  \melodyAlleluiaPlusVerse
}


ChoeurPart = \new ChoirStaff <<
	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "Sopranes"
		shortInstrumentName = "S."
		\consists "Ambitus_engraver"
	}  \new Voice = "soprano" {\soprano }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \sopranoVerseOne

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = \markup \column {"Altos et""Ténors"}
		shortInstrumentName = \markup \column {"A.""T."}
		\consists "Ambitus_engraver"
		\clef "treble_8"
	}  \new Voice = "tenor" {\tenor }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \tenorVerseOne

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "Basses"
		shortInstrumentName = "B."
		\consists "Ambitus_engraver"
		\clef bass
	}  \new Voice = "bass" {\bass }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \bassVerseOne
>>

rightOne = \fixed c' {
  \globalO
	d1 es |
	d2 <d f> |
	<bes, c g> <a, es f> |
	<d f>1 |
	<es c> |
	d2 <f a,> |
	f1 |
	\repeat unfold 2 { <f d>2 <es c> | }
	f1~1 |
	d |
	<es c> |
	d2.  f4 |
	d c bes,2 |
	
	d1\mf es |
	d2 <d f> |
	<bes, g> <a, f> |
	<f d>1 <es c> |
	<d bes,>2 <f~ a,> |
	f1 <d f>2\rinf <c es> |
	<f d> es |
	<d f> es8 d c4 |
	d2 c |
	d1\mf <es c> |
	<bes, d>2. <f a,>4 |
	<d g,> <a, c> bes,2 |
	
	<d bes>4.\ff <es bes c'>8 <f bes d'>2 |
	<es a c'>4. <es g bes>8 <es a c'>2 |
	<d g bes>2 <f d'>4 <bes f'> |
	g' es'  c'2 |
	<d bes>4. <es c'>8 <f d'>2 |
	<es c'>4. <es bes>8 <es c'>2 |
	<d bes> d'4 f' |
	d' <es f c'> <bes f d>2 |
	\repeat unfold 2 { r4 <f bes f'>8 r <g bes g'> r <es bes es'> r | }
	r4 <f bes f'>8 r <bes es'> r <c' es'> r |
	<bes d'> r r4 <f c'>8 r r4 |
	<d bes>4. <es c'>8 <f d'>2 |
	<es c'>4. <es bes>8 <es c'>2 |
	<d bes>2\rit <f d'>4-^ <f f'>-^ |
	<g d'>-^ <a c'>-^ bes2-^\!\fermata
}

rightTwo = {
  \globalO
  \fixed c {
	  bes1\p |
	  a4. g8 a2 |
	  bes1 s |
	  bes~2 a |
	  bes d'4 f'~ |
	  <bes f'> <c' es'> <bes d'>2 |
	  bes1~1~ |
	  <bes d'>2 es'8 d' c'4 |
	  d'8 c' bes4 c'2 |
	  bes1~2 a |
	  bes~<bes f> |
	  g4 a bes2 |
	  
	  bes1 a4. g8 a2 |
	  bes1 |
	  c'4 es'2. |
	  bes1 |
	  4 g a2 |
	  s d'4 f'~ |
	  <f' bes> <c' es'> <d' bes>2 |
	  bes1~2 4 (c' |
	  bes2 ) g4 a |
	  bes2~ 8 a g f |
	  bes1~2 a |
	  s1*2
  }
	\relative c'' {
	  s1*3
	  g2 f4 es |
	  s1*2
	  s2 f2~ |
	  4 s2. |
	  \repeat unfold 3 { r4 \repeat unfold 3 { s8 r8 } | }
	  \repeat unfold 2 { s8 r r4 } |
	  s1*4
	}
}

leftOne = \fixed c {
	\globalO
	f1~1
	s1*6
	f2 g |
	f g |
	f g4 a |
	f g a2 |
	bes1 f |
	<g g,>2 <d d,> |
	es d |
	
	f1 1 s1*6
	f2 g |
	f g |
	f1~1~1~1 <g g,>2 <d d,> |
	es d |
	
	s2*5 bes2~ |
	4 c' a2 |
	bes4. 8 2~ |
	4 g a2 |
	<g bes>  <f a> |
	<g bes>4 <a c'> <bes d'>2 |
	d' es'4 c' |
	d'2 bes4 c' |
	d'2 es'4 f'~ |
	4 \autoBeamOn d'8 bes~8 a g f |
	bes4. 8 2~ |
	4 g a2 |
	<g bes> <d bes>4 4 |
	\oct es'4 <f es'> <bes d'>2\!\fermata |
}

leftTwo = \fixed c, {
	\globalO
	bes1 f |
	g2 d |
	es f |
	bes1 f |
	g2 f |
	g4 a bes2 |
	bes1~1~1~2 f |
	bes1 f |
	s1 es4 f bes2 |
	
	bes1 f g2 d |
	es4 c f2 |
	bes1 f  |
	g2 f |
	g4 a bes2 |
	1~1~1~2 f |
	bes1 f |
	s1 es4 f bes2 |
	
	\oneVoice
	\oct {
	  bes' 4. 8 2 |
	  f'4. 8 2 |
	  g'2 \voiceTwo d' |
	  es' f' |
	}
	bes1 \oct f'1
	g2 f |
	g4 a bes2 |
	r4  \oct {\repeat unfold 3 { bes'8 r } |
	r4 bes'8 r es' r g' r |
	r4 bes'8 r g' r a' r |
	bes' r r4 f'8 r r4 } |
	bes1 \oct f'1 |
	g2 d4-^ 4-^ |
	es-^ f-^ bes2-^ |
}

ClavierPart = \new PianoStaff \with {
	instrumentName = "Orgue"
	shortInstrumentName = "Org."
	midiInstrument = "church organ"
} <<
	\new Staff = "right" \with {
	  \consists Merge_rests_engraver
	} { << \rightOne \\ \rightTwo>> }
	\new Staff = "left" \with {
	  \clef bass
	  \consists Merge_rests_engraver
	} { << \leftOne \\ \leftTwo>> }
>>


\tocItemComposer "Dextera Domini" "\franck"
\score {
	\header {
		dedication = "à monsieur l'abbé Hancelin, curé de Sainte-Clothilde"
		title = "DEXTERA DOMINI"
		subtitle = "Offertoire pour la messe du jour de Pâques"
		composer = \franck
	}
	<<
		\ChoeurPart
		\ClavierPart
	>>
	\layout {\context{\Staff \RemoveEmptyStaves }}
	\midi {\tempo 4=95 }
}
