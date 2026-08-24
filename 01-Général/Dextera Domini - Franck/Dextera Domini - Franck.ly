\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

italicMark = #(define-music-function
  (text) (markup?)
  #{
    ^\markup \italic \fontsize #1 #text
  #})

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
nonMoriar = \lyricmode {
  Déx -- te -- ra Dó -- mi -- ni
  ex -- al -- tá -- vit me.
  Non mó -- ri -- ar sed ví -- vam,
  et nar -- rá -- bo
  ó -- pe -- ra Dó -- mi -- ni,
  et nar -- rá -- bo
  ó -- pe -- ra Dó -- mi -- ni.
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
  f'4.\p\italicMark "Solo ou petit choeur" es8 d2 |
  es4. d8 c2
  R1*2
  as4. ( ges8 ) f2 |
  ges4. f8 es2 |\break
  R1*6
  
  \key des \major
  des'2\italicMark "dolce" es4. 8 |
  f1~4\< ( es ) f ( ges ) |
  f2\> es |
  2\pp ( f4 ) c |
  des4 4 es4. bes8 |\break
  des4 ( c ) bes c |
  des2 r |
  es2\italicMark "Tutti"  ( f4 ) c |
  des4 4 es4.\< bes8 |
  des4\! ( c ) bes\> c <>\! \break
  
  des2 r\noBreak
  R1\noBreak
  r2 \italicMark "Solo" bes\<~ |\noBreak
  2 ges'4.\! f8 |\break
  es4 4 4. ( f8 ) |
  des2 r |
  r\italicMark"Tutti" bes\<~ |
  2 (ges'4.\! ) f8 |\break
  es2 4. f8 |
  des4\f ( f ) as ges |
  f2 \dimTextDim es4.\dim des8\! |
  2 r | \break
}
sopranoVerseOne = \lyricmode {
	\melodyVerse
	\nonMoriar
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
  
  \key des \major
  des2\italicMark "dolce" bes4. 8 |
  as2 ( des~ |
  4\< c ) des ( es ) |
  des2\> c |
  as2.\pp 4 |
  4 4 bes ges' |
  es2 4 4 |
  f2 des2\italicMark "Tutti"  ( ~ |
  4 c ) des ( es ) |
  as,4 ces bes\< ges' |
  f\! ( es ) des\> es <>\!
  f2 as, \italicMark "Solo" \< ~ |
  2 des4.\! c8 |
  2 (bes4 ) r
  R1
  r2 \italicMark "Tutti" as\p\< ~ |
  2 des4.\! ( c8 ) |
  2 ( bes ) ~ |
  2 des4 ges |
  4 ( es ) bes c |
  des\f ( c ) ces bes |
  as4 ( des ) \dimTextDim c4.\dim des8\! |
  2 r |\break
}
tenorVerseOne = \lyricmode {
	\melodyVerse
	\melodyAlleluiaPlusVerse
	\nonMoriar
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
  es4. 8 f2 |
  R1*2
  as2 bes |
  ges4. 8 as2 |
  R1*6
  
  \key des \major
  des,2\italicMark "dolce" ges4. 8 |
  des2. ( c4 ) |
  bes2\< ( as4 ges ) |
  as2\> 2 |
  ges'2.\pp 4 |
  f4 4 ges4. 8 |
  as2 4 4 |
  des,2 r |
  ges2..\italicMark "Tutti" 8 |
  f4 4 ges4.\< 8 |
  as2\! 4\> 4 <>\! |
  des,2 r |
  r\italicMark "Solo" f\< ~ |
  2 bes4.\! as8 |
  4 ( ges ) bes ( des ) |
  c ( bes as ges ) |
  f r \italicMark"Tutti" f2\< ~ |
  2 bes4.\! ( as8 ) |
  4 ges bes des |
  c ( bes ) as ges |
  f2\f 4 ges |
  as2 \dimTextDim 4.\dim des,8\! |
  2 r |\break
}
bassVerseOne = \lyricmode {
  \melodyVerse
  \melodyAlleluiaPlusVerse
  \melodyAlleluiaPlusVerse
  \nonMoriar
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

goDown = \change Staff = "left"
goUp = \change Staff = "right"

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
	
	R1*2
	<des f>1~ |
	f2 <es g> |
	<des f as>4 r r2
	R1
	as1~ |
	2 bes |
	<es c'>4. <des bes>8 <c as>2 |
	<f des'>4. <es c'>8 <bes des>2 |
	es'2.. ( c'8 |
	as ges es c \goDown as,8 ges, es, as,, )
	\bar "||" \goUp \key des \major \break 
	
	\oneVoice	R1
	r8 des'8 ( as f \goDown des as, des, f, ) \goUp |
	<des f>4 r r2
	r8 f' ( des' as bes as ges es |
	c bes, as, ) r r2
	R1*2
	r8 f' ( es' des' as f es des ) |
	r as' ( ges' es' des' c' bes as ) |
	r as' ( f' des' ) r bes' ( ges' es' ) |
	\voiceOne r8 as'8 bes' as' ges' es' c' as |
	
	\oneVoice des'8 r r4 as2 ~ |
	2 \voiceOne des'4. c'8 |
	2 bes ~ |
	2 ges'4. f'8 |
	es'2.. f'8 |
	\crescTextCresc
	des'2\cresc 4.\! c'8 |
	2 bes ~
	2 ges'4 f' |
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
	  R1*2
	  s1 des |
	  s4 r r2 |
	  R1
	  <des f>1~1 |
	  ges as |
	  <as ges>2~8 r r4 |
	  s1*11
	  des4 c bes c
	  s2*3 f,2~ |
	  2 bes4. as8 |
	  4 ( ges bes des |
	  c bes as^~ <as ges>^~ ) |
	  <f as>2 f2~ |
	  2 bes4. as8 |
	  4 ( ges bes des )
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
	
	s1*6
	as1~1~1~1~2~8 r8 r4 |
	s1
	\key des \major
	\oneVoice des4 r4 r2
	R1 bes4 r r2 |
	r2 r8 as,8 ( c es |
	ges4. ) r8 r2
	R1*2
	r2 des'2~ \voiceOne
	4 c' des' es' |
	as ces' bes ges' |
	f' es' des' es' |
	\tupletSpan 2
	\tuplet 6/4 {
	<as f'>8 as des' f' es' des' r as des' f' es' des'
	}
	<<{
	  \voiceOne \tuplet 6/4 {
	  r8 as des' f' es' des'
	  r a des' f' es' des' |
	  \repeat unfold 2 { r bes des' f' es' des' } |
	  \repeat unfold 2 { r ges bes des' c' bes } |
	  \repeat unfold 2 { r ges c' es' des' c' } |
	  r as des' f' es' des' r a des' f' es' des' |
	  \repeat unfold 2 { r bes des' f' es' des' } |
	  \repeat unfold 2 { r ges bes des' c' bes } |
	}}\\{
	  \voiceTwo \tupletSpan 2
	  \tuplet 6/4 {
	  s8 as4. s a s4
	  s8 bes4. s bes s4 |
	  s1.*2
	  s8 as4. s a s bes s bes s4
	  s1*2
	}}>>
	  
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
	
	\oneVoice R1*2
	bes2 ( des'4\< f' |
	des'\> c' bes2\! ) |
	as4 r r2
	R1
	\voiceTwo des'2 f'4 as' |
	f' es' des'2 |
	as4 r r2 |
	s2*3 s8 r8 r4 |
	s1*9
	\oct {ges'1 |
	f'2 ges' |
	as'1}
	des1
	\voiceThree
	des1 1 es |
	as des1 1 es |
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
