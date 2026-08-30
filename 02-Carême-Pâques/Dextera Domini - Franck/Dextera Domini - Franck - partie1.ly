\version "2.26.0"
\include "settings.ily"
\include "composers.ily"
\include "cache/notes.ily"
#(set-global-staff-size 17.3 )

ChoeurPartDebut = \new ChoirStaff <<
	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "Sopranes"
		shortInstrumentName = "S."
		\consists "Ambitus_engraver"
	}  \new Voice = "soprano" {\sopranoDebut }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "soprano" \sopranoVerseOne

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = \markup \column {"Altos et""Ténors"}
		shortInstrumentName = \markup \column {"A.""T."}
		\consists "Ambitus_engraver"
		\clef "treble_8"
	}  \new Voice = "tenor" {\tenorDebut }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "tenor" \tenorVerseOne

	\new Staff \with {
		midiInstrument = "choir aahs"
		instrumentName = "Basses"
		shortInstrumentName = "B."
		\consists "Ambitus_engraver"
		\clef bass
	}  \new Voice = "bass" {\bassDebut }
	\new Lyrics \with { \override VerticalAxisGroup.staff-affinity = #CENTER
	} \lyricsto "bass" \bassVerseOne
>>

ClavierPartDebut = \new PianoStaff \with {
	instrumentName = "Orgue"
	shortInstrumentName = "Org."
	midiInstrument = "church organ"
	midiMinimumVolume = #0.1
  midiMaximumVolume = #0.3
} <<
	\new Staff = "right" \with {
	  \consists Merge_rests_engraver
	} { << \rightOneDebut \\ \rightTwoDebut >> }
	\new Staff = "left" \with {
	  \clef bass
	  \consists Merge_rests_engraver
	} { << \leftOneDebut \\ \leftTwoDebut >> }
>>

\tocItemComposer "Dextera Domini" "Franck"
\score {
	\header {
		dedication = \markup \column {
		  "à monsieur l'abbé Hancelin, curé de Sainte-Clothilde"
		  \vspace #0.5
		}
		title = "DEXTERA DOMINI - Partie I."
		subtitle = "Offertoire pour la messe du jour de Pâques"
		composer = \franck
	}
	<<
		\ChoeurPartDebut
		\ClavierPartDebut
	>>
	\layout {\context{\Staff \RemoveEmptyStaves }}
	\midi {\tempo 4=95 }
}

%{\markup \column {
  "La droite du Seigneur a déployé sa puissance, la droite du Seigneur m’a exalté."
  "Je ne mourrai plus, mais je vivrai, et je raconterai les œuvres du Seigneur."
%}