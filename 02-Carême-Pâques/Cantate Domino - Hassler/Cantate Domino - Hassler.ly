\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
	\autoBeamOff
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\key c \major
	\time 4/4
}

\tocItemComposer "Cantate Domino" "\hassler"
\score {
	\header {
		title = "CANTATE DOMINO"
		composer = \hassler
	}
	<<
	>>
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=70 }
}
