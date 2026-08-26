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
  des2 r\italicMark "Tutti" |
  es2  ( f4 ) c |
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
  2 r \break
  R1*3
  as2\italicMark "Solo" ( bes8 [ as ] ges4 |
  as4. ) 8 bes [ as ] ges4 |\break
  as2 ( ges8 [ f ] es4 |
  f8 [ es ] des4 ) es2 |
  des4 as'2 bes8. 16 |
  c4 as2 bes8. 16 |
  c4 as2 f'8. 16 |\break
  es4 ( as,4. f8 [ g as ] ) |
  4 f'8 es des2 ~ |
  4 f8 es des2 ~ |
  4 f8 [es ] des2 ~ |
  4 es8 [ f ] ges4 4 |\break
  f2\ff\italicMark"Tutti" ( ges8 [ f ] es4 |
  f4. ) 8 ges [ f ] es4 |
  f2 ( es8 [ des ] c4 |
  des8 [ c ] ) bes4 c2 |
  des4 r r2 |\break
  R1*3
  f2\ff ( as8 [ g ] f4 |
  g4. ) 8 as [ g ] f4 |\break
  g2 ( f8 [ es ] d4 |
  es8 [ d ] c4 ) d2 |
  es4 r r2
  R1
  g,2\p ( as8 [ g ] f4 |\break
  g4. ) 8 as ( [g ] f4 ) |
  g2 r
  R1*7 \bar "||"
 
 \key bes \major f4.\pp g8 a2 |
  bes4. c8 des2 |\break
  es4\< ( d ) c f |
  \dimHairpin
  es\> ( d ) c ( f ) |
  es\pp ( d ) c bes |
  4 ( a ) g f |
  4 ( g8 [ a ] ) bes2 ~ |
  4 c8 [ g ] bes [ a ] g [ a ] |\break
  bes4. c8 d2 |
  c4. bes8 c2 |
  bes ( d4 ) f |
  d c bes2 |
  f' ( g8 [ f ] es4 |\break
  f4. ) 8 g [ f ] es4 |
  f2\cresc ( es8 [ d ] c4 ) |
  d8 [ c ] bes4 c2 |
  bes4.\f c8 d2 |
  c4. bes8 c2 |\break
  bes2 ( d4-^ ) f-^ |
  d-^ c-^ bes2-^ |
  2\fff c4. 8 |
  d1 ( ~ |
  4 c ) d (es ) |\break
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
  2 r
  R1*7
  des2\italicMark"Solo" ( f8 [ es ] des4 |
  es4. ) 8 f [es ] des4 |
  es2 ( des8 [ c ] bes4 |
  c8 [ bes ] as4 ) bes2 |
  as4 c ( des es ) |
  f des2 es8. 16 |
  f4 des2 c8 bes |
  as4 des4. ( bes8 [c des ] ) |
  des4 8\ff\italicMark"Tutti" c bes2 ~ |
  4 des8 c bes2 ~ |
  4 des8 [ c ] bes2 ~ |
  4 4 a2 |
  bes4 r r2
  R1
  bes2\ff ( des8 [ c ] bes4 |
  c4. ) 8 des ( [ c ] bes4 ) |
  c4 2 ( des8. ) 16 |
  es4 c2 des8. 16 |
  es4 c2 as'8. 16 |
  g4 ( c,2 b4 ) |
  c4 r r2
  R1
  r4 es8\p ( [ des ] c2~ |
  4 es8 [ d ] c2~ |
  8 ) g es' [ d ] c4 r
  R1*5
  g4.\pp a8 bes2 |
  a4. g8 a2 |
  
  \key bes \major a4. bes8 c2 |
  d4. c8 bes2 ( ~ |
  \dimHairpin
  2\< a |
  g\> a ) <>\! |
  bes4. c8 d2 |
  c4. bes8 c2 |
  bes d4 f |
  g ( es ) c2 |
  d4. es8 f2 |
  es4. 8 2 |
  d2. 4 |
  f4 es d2 |
  r4 d8. 16 es4 c |
  r d8. 16 bes4 c |
  r d\cresc ( es f ~ |
  4 ) d es4 4 |
  d4.\f es8 f2 |
  es4. 8 2 |
  d2 ( f4-^ ) 4-^ |
  g-^ a,-^ bes2-^ |
  2\fff g'4. 8 |
  f2 bes, ( ~ |
  4 a ) bes ( c ) |
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
  des,2 r\italicMark "Tutti" |
  ges2.. 8 |
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
  2 r
  R1*11
  as'2\pp\italicMark"Solo" ( bes8 [ as ] ges4 |
  as4. ) 8 bes [ as ] ges4 |
  as2 ( ges8 [ f ] es4 |
  f8 [ es ] ) des4 es2 |
  des4 bes'2\italicMark"Tutti" ( c8. ) 16 |
  des4 bes2 c8. 16 |
  des4 bes2 ges8. 16 |
  f4 ( bes,8 [ des ] f2 ) |
  2 ( ges8 [ f ] es4 |
  es4. ) 8 ges [ f ] es4 |
  f2. bes,8 [ des ] |
  f2. ( bes,8 [ des ] ) |
  f4 es8 d c2 ~ |
  4 es8 d c2~ |
  4 es8 [ d ] c2 ~ |
  4 8 [ es ] g4 4 |
  2 ( as8\dim [ g\! ] f4 |
  g4. ) 8 as ( [ g ] f4 ) |
  g2 r
  R1
  c,4.\p d8 es2 |
  d4. c8 d2 |
  c2 es4 g |
  as ( f ) d2 |\break
  
  c4.\pp d8 es2 |
  d4. c8 d2~ |
  1~1 |
  \key bes \major es2. d8 [ c ] |
  bes2. a8 [g ] |
  \dimHairpin
  f1\< ( ~ |
  2\> f' ) |
  2\pp bes, |
  es1 ( d |
  c2 ) f |
  bes, bes'4 4 |
  4 ( g ) a4. 8 |
  bes2 f4 4 |
  g a bes2 |
  r4 8. 16 4 4 |
  r bes8. 16 es,4 g |
  r bes\cresc ( g a |
  bes4. ) 8 8 [ 	a ] g [ f ] |
  bes4.\f 8 2 |
  f4. 8 2 |
  g2 ( d4-^ ) 4-^ |
  es-^ f-^ bes,2-^ |
  bes'2\fff es,4. 8 |
  bes'2. ( a4 ) |
  g2 ( f4 es ) |
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
	es'2.. f'8 |
	des'4 f' as' ges' |
	f'2 \dimTextDim <es' ges>4.\dim <f des'>8\! |
	\tupletSpan 2 \omit TupletBracket \once \omit TupletNumber
	\tuplet 6/4 {
	8\p \oneVoice des8\italicMark "Récit" f as ges f r des des' bes as ges |
	r des f as ges f r des des' bes as ges |
	r des f as ges f r f, as ges f es |
	r f, ges f es des
	}
  \voiceOne ges2 |
  \oneVoice <des f as>\pp\italicMark"Récit" <des es ges bes> <des f as> <des es ges bes> |
	<des f as> \voiceOne <ges c'> |
	des'2~4 c' |
	\oneVoice <as des'>4 \repeat unfold 2 {as2~ <as bes>4~ |
	<as c'>} as2~ <as f'>4~ |
	<as es'> \voiceOne as4 8 f g as |
	4 f'8\italicMark"Gd. Orgue" es' des'2~ |
	\repeat unfold 2 { 4 f'8 es' des'2 ~ | }
	4 es'8 f' ges'2 |
	s1*20
	es1 d~1~1 |
	\oneVoice <a, f>4.\pp <bes, g>8 <c a>2 |
	\voiceOne bes4. c'8 d'2
	es'4 d' c' f' |
	es' d' c' f' |
	es' d' c' bes~ |
	4 a g f |
	4 g8 a bes2 ~ |
	4 c'8 g bes a g a |
	s1*2
	bes2 d'4 f' |
	d' c' bes2 |
	s1*7
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
	  4 ( ges bes des |
	  c bes ) as2 |
	  des4\f c ces bes |
	  as2 s2*8 \omit TupletBracket \tuplet 6/4 {r8 as, bes \slashedGrace des c bes c} |
	  s2*5 <as es'>2 |
	  f'4 g as2 |
	  s1*3
	  s4 es4~2~ |
	  4 s2. s1 |
	  s4 f bes ges |
	  as1~ |
	  \oneVoice <as f'>4\ff <f bes des f>4-. <ges bes es ges>-. q-. |
	  r <f bes des f> <ges bes es ges> q |
	  r <f bes des f> <ges bes es> <es bes' c> |
	  <f bes des> <es f bes> <c f a c>2 |
	  \set Timing.beamExceptions = #'() \set Timing.beatBase = #1/8 \set Timing.beatStructure = 1,3,4
	  <des f bes des>8 f ( des c bes des c es ) |
	  \set Timing.beatStructure = 4,4
	  des f des c bes des c es |
	  des bes' as g f as g bes |
	  as c as g f as g bes |
	  as4 r <as f' as>-. <f d' f>-. |
	  <g es' g>-. r <as f' as> <f d' f> |
	  <g es' g> r <f c' f> <as c d> |
	  <g c es> <es g c> <d g c> <d g b> |
	  <es g c>8 g es d c es d f |
	  \repeat unfold 2 { es g es d c es d f | }
	  es g es d c es d f |
	  es g es d c2 ~ |
	  8 b d es f2~ |
	  8 es g es c4. es8~ |
	  8 d f d b4. c8 |
	  \voiceTwo c1~2 b2 |
	  bes1 a |
	  \key bes \major s1
	  d2 bes' ( ~ |
	  2 a |
	  g a ) |
	  bes4 r d,2 |
	  s2*3 d4 f |
	  g es c2 |
	  \oneVoice <d bes'>4. <es c'>8 <f d'>2 |
	  <es c'>4. <es bes'>8 <es c'>2 |
	  \voiceTwo d f2 ~ |
	  4 <es f>4 <d f>2 |
	  \oneVoice r4 <f bes f'>8 r <g bes g'> r <es bes' es> r |
	  r4 <f bes f'>8 r <g bes g'> r <es bes' es> r |
	  r4 <f bes f'>8 r <bes es> r <c es> r |
	  <bes d> r r4 <f c'>8 r r4 |
	  <d bes'>4. <es c'>8 <f d'>2 |
	  <es c'>4. <es bes'>8 <es c'>2 |
	  <d bes'>2 <f des'>4-^ <f f'>-^ |
	  <g d'>-^ <a c>-^ bes2-^ |
	  r8 d ( f bes g es c ) r |
	  r d( f bes d, c bes ) r |
	  r bes c a' d, bes' es, c' |
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
	\set Timing.beamExceptions = #'() \set Timing.beatBase = #1/12 \set Timing.beatStructure = 1,5
	\tuplet 6/4 {
	<as f'>8 as des' f' es' des'
	\omit TupletBracket r as des' f' es' des'
	}
	\tuplet 6/4 <<{
	  \voiceOne
	  r8 as des' f' es' des'
	  r a des' f' es' des' |
	  \repeat unfold 2 { r bes des' f' es' des' } |
	  \repeat unfold 2 { r ges bes des' c' bes } |
	  \repeat unfold 2 { r ges c' es' des' c' } |
	  r as des' f' es' des' r a des' f' es' des' |
	  \repeat unfold 2 { r bes des' f' es' des' } |
	  \repeat unfold 2 { r ges bes des' c' bes } |
	  \repeat unfold 2 { r ges c' es' des' c' } |
	}
	\new Voice {
	  \voiceTwo \tupletSpan 2 \omit TupletNumber
	  \repeat unfold 2 {
	  s8 as4. s a s4 |
	  s8 bes4. s bes s4 |
	  s1.*2
	}}>>
	\tuplet 6/4 { r8 as des' f' es' des' r as d' es' f' ges' |}
	\tuplet 5/4 { r as des' f' r r ges as c' r |}
	as2 \italicMark"Gd. Orgue" bes8 as ges4 |
	as2 bes8 as ges4 |
	as2 ges8 f es4 |
	f8 es des4 es2 |
	\oneVoice \oct des4 r r2
	R1*2
	<bes des'>2 <as es'> |
	\voiceOne f'4 r f'8 [ es' ] des'4 |
	\oneVoice es'2 f'8 [ es' ] des'4 |
	es'2 des'8 [ c' ] <bes des'>4 |
	<es' c'>8 <des' bes> <as c'>4 <bes des'>2 |
	<as c'>2 \voiceOne des'4 es' |
	f' des'2 es'4 |
	f' des'2 c'8 bes |
	as4 des'4. bes8 c' des' |
	\oneVoice \oct {des'4 bes-.} <es bes>-. q-.
	r \oct bes <es bes> q |
	r \oct bes <es bes> <ges bes> |
	<f bes> q <f a>2 |
	<<{\voiceOne bes8 r r4}\new Voice {\voiceTwo f2}>> ges8 as es4 |
	f2 ges8 f es4 |
	bes2 des'8 c' bes4 |
	c'2 des'8 c' bes4 |
	c'4 r <as c'>-. <f c'>-. |
	<g c'>-. r <as c'> <f c'> |
	<g c'> r <as c'> <f c'> |
	<g c'> q c' b |
	<<{c'4 r}\new Voice{\voiceTwo g2}>> as8 g f4 |
	g2 as8 g f4 |
	g2 r
	R1
	c4. ( d8 es2 |
	d4. c8 d2 |
	c es4 g |
	as f d2 ) |
	<c g>1~g~1~2 fis2 |
	
	\key bes \major f1~1~ |
	1~1 |
	<<{bes4. c'8 r2 | c'4. bes8 c'2}\new Voice{\voiceThree f1~1}>> |
	<f bes>2. bes4 |
	4 g f2 |
	bes4. 8 2~ |
	4 g a2 |
	<g bes> <f a> |
	<g bes>4 <a c'> <bes d'>2 |
	d' es'4 c' |
	d'2 bes4 c' |
	d'2 es'4 f' ~ |
	4 d'8 bes ~ 8 a g f |
	bes4. 8 2 ~ |
	4 g a2 |
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
	\voiceTwo
	as2. ges4 |
	f2. ges4 |
	as1 des'~ |
	1~ 2 as~ |
	1 |
	s1*4
	des''2 s |
	s2*7 bes'8 as' ges'4 |
	as'2 bes'8 as' ges'4 |
	as'2 ges'8 f' es'4 |
	f'8 es' des'4 es'2 |
	s1*4
	bes1~1~ |
	<bes f'>2. bes8 des' |
	f'2. bes8 des' |
	f'4 es'8 d' c'2~ |
	4 es'8 d' c'2~ |
	4 es'8 d' c'2 ~ |
	4 c'8 es' g'!2 |
	c'1~1~2 r
	R1
	c4 r r2 |
	g4 r r2 |
	as4 r es r |
	f r g r |
	c r r2 |
	g1~1 |
	d' |
	
	es'2. d'8 c' |
	bes2. a8 g  |
	f1 2 f' ~ |
	2 bes |
	es'1 |
	d' |
	c'2 f |
	<bes f'>1 |
	\oct f' |
	g2 f |
	g4 a bes2 |
	r4 \oct {bes'8 r bes'8 r bes'8 r |
	r4 bes'8 r es' r g' r |
	r4 bes'8 r g' r a' r |
	bes' r r4 f'8 r r4 |}
	bes1 \oct f' |
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
