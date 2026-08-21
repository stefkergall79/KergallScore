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


\score {
	\header {
		title = ""
		composer = ""
	}
	<<
	>>
	\layout {\context{\Staff \RemoveAllEmptyStaves }}
	\midi {\tempo 4=70 }
}
