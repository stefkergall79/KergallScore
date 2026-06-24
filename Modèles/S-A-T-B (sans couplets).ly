\version "2.26.0"
\include "../../settings.ily"
global = {
  \key c \major
  \time 4/4
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  
}

alto = \fixed c' {
  \global
  
}

tenor = \fixed c {
  \global
  
}

bass = \fixed c {
  \global
  
}

verseSoprano = \lyricmode {
  
}

verseAlto = \lyricmode {
  
}

verseTenor = \lyricmode {
  
}

verseBass = \lyricmode {
  
}

\tocItemComposer "" ""
\score {
  \header {
    title = ""
    composer = ""
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {\override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSoprano
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \alto
    \new Lyrics \with {\override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \verseAlto
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new Lyrics \with {\override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \verseTenor
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
    \new Lyrics \with {\override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \verseBass
  >>
  \layout {}
  \midi {\tempo 4=70 }
}
