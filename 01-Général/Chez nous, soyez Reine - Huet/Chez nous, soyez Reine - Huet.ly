\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

#( set-global-staff-size 18.7 )

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key f \major
	\overrideTimeSignatureSettings
        3/4        % timeSignature
        #1/4       % beatBase
        1,1,1      % beatStructure
        #'()       % beamExceptions
	\time 3/4
	\partial 4
}

soprano = \relative c'' {
	\global
	\markChanson "Refrain"
	c4 a2 bes8.  d16 |
	f4 4 c |
	2 f8. d16 |
	e2 c4 |
	d c bes8 a |
	d4 bes a |
	2 c4 |
	2 4 |
	a2 bes8. d16 |
	f4 4 c |
	2 f8. d16 |
	e2 c4 |
	d c bes8 a |
	d4 bes a |
	2 c4 |
	2 \bar "||" \break
	\markChanson "Couplets"
	\autoBeamOn
	4 |
	bes8 a d c bes a |
	4 g c |
	c d bes |
	4 a c |
	8 f d c bes a |
	a4 g c |
	4. d8 a b |
	c2 \bar "||"
}

alto = \fixed c' {
	\global
	c4 f2 8. 16 |
	4 4 g |
	a2 f8. 16 |
	a2 e4 |
	f4 4 8 8 |
	d4 g e |
	f2 a4 |
	e2 c4 |
	f2 8. 16 |
	4 4 g |
	a2 f8. 16 |
	a2 e4 |
	f4 4 8 8 |
	d4 g e |
	f2 e4 |
	a2
	\autoBeamOn
	c4 |
	f fis g8 f |
	4 e e |
	f2 d8 e |
	f2 g4 |
	a f g8 f |
	4 e e |
	f2. |
	4 e
}

tenor = \relative c {
	\global
	c4 c'2 d8. 16 |
	c4 4 bes |
	a2 bes8. 16 |
	c2 g4 |
	bes a g8 f |
	g4 g a |
	f2 a4 |
	g2 c,4 |
	c'2 d8. 16 |
	c4 4 bes |
	a2 bes8. 16 |
	c2 g4 |
	bes a g8 f |
	g4 g a |
	f2 g4 |
	f2
	\autoBeamOn
	c'4 |
	2 d4 |
	c2 g'4 |
	c,2 4 |
	4 8 d e4 |
	f4 8 es d4 |
	c2 g'4 |
	f2 c4 |
	2
}

bass = \fixed c {
	\global
	c4 f2 bes8. 16 |
	a4 4 e |
	f ( e ) d8. 16 |
	a,2 c4 |
	bes, c cis8 d |
	bes,4 g, c |
	d2 a,4 |
	c2 4 |
	f2 bes8. 16 |
	a4 4 e |
	f ( e ) d8. 16 |
	a,2 c4 |
	bes, c cis8 d |
	bes,4 g, c |
	d2 c4 |
	f,2
	
	c4 |
	f a bes8 8 |
	c'4 4 bes |
	a4. g8 f g |
	f2 c4 |
	f a bes8 8 |
	c'4 4 bes |
	a4. g8 f g |
	g2
}

VerseRefrain = \lyricmode {
	Chez nous, soy -- ez Rei -- ne,
	nous som -- mes à vous,
	règ -- nez en Sou -- ver -- ai -- ne
	chez nous, chez nous_;
	soy -- ez la Ma -- don -- ne
	qu'on prie à ge -- noux,
	qui sou -- rit et par -- don -- ne
	chez nous, chez nous.
	\override LyricText.font-shape = #'italic
  B.F. \repeat unfold 15 \skip1
  B.F.
}

VerseOne = \strophemode 1 ##f 44 \lyricmode {
  L'Ar -- chan -- ge qui s'in -- cli -- ne
	vous loue au nom du Ciel_;
	don -- nez la paix di -- vi -- ne
	à no -- tre cœur mor -- tel.
}

VerseTwo = \strophemode 2 ##t 44 \lyricmode {
	Vous ê -- tes no -- tre Mè -- re,
	por -- tez à vo -- tre Fils
	la fer -- ven -- te pri -- è -- re
	de vos en -- fants ché -- ris.
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
	} \lyricsto "soprano" \VerseRefrain
	
	\new Staff \with {
		midiInstrument = "choir aahs"
		\consists Merge_rests_engraver
		\clef bass
	} <<
		\new Voice = "tenor" {\voiceOne \tenor }
		\new Voice = "bass" {\voiceTwo \bass }
	>>
	
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \VerseOne
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \VerseTwo
>>

\paper {
  
}

\tocItemComposer "Chez nous, soyez Reine" "\huet"
\score {
	\header {
		title = "CHEZ NOUS, SOYEZ REINE"
		composer = \huet
		poet = \markup {"Harmonisation :" \roussel}
	}
	\ChoeurPart
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=90 }
}

\markup {
  \vspace #2
  \couplets-markup #3 #3 {
    \column {
      "Gardez, ô Vierge pure,"
      "Nos cœurs doux entre tous,"
      "Nos âmes sans souillure,"
      "Nos cœurs vaillants et doux."
    }
    \column {
      "Dîtes à ceux qui peinent"
      "Et souffrent sans savoir,"
      "Combien lourde est la haine,"
      "Combien doux est l'espoir."
    }
    \column {
      "Lorsque la nuit paisible"
      "Nous invite au sommeil,"
      "Près de nous, invisible,"
      "Restez jusqu'au réveil."
    }
    \column {
      "Par Vous, que notre vie"
      "Soit digne des élus,"
      "Et notre âme ravie,"
      "Au Ciel, verra Jésus."
    }
    \column {
      "Soyez pour nous la Reine"
      "De douce charité,"
      "Et banissez la haine"
      "De toute la Cité."
    }
    \column {
      "À notre heure dernière,"
      "Accueillez dans les Cieux,"
      "À la maison du Père,"
      "Notre retour joyeux !"
    }
  }
}