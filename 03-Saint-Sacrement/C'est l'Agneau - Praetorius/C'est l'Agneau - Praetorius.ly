\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \autoBeamOff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \key es \major
  \tempo "Moderato"
}

soprano = \relative bes' {
  \global
  \repeat volta 2 {
    \bar ".|:"
    bes2  g2 | % 1
    c2.  c4 | % 2
    bes2.  as4 | % 3
    g1 | % 4
    bes2  bes2 | % 5
    es4 ( d4  c4 ) bes4 | % 6
    bes4 ( as4  g4 ) f4 | % 7
    g1 | % 8
    g2  g4  g4 | % 9
    
    c1 | % 10
    
    \alternative {
        \volta 1 {
          f,2.  f4 | % 11
          bes1 | % 12
          as2  bes4  as4 | % 13
          g4 (  c4 ) d4 ( es4  )| % 14
          d2 ( c4.  bes8 ) | % 15
          bes2. r4 | % 16
        }
        \volta 2 {
          d2 ( c4 ) bes4 | % 27
          es1 | % 28
          bes2  bes4  as4 | % 29
          
          g4 ( bes2 ) as4 | % 30
          g2 ( f4.  es8 ) | % 31
          es2.  es4 | \bar "||"
        }
    }
  }
  f4  es4  as4.  g8 | % 33
  g2.  g4 | % 34
  as4  g4  c4.  bes8 | % 35
  bes1 | % 36
  d2  d4  d4 | % 37
  es2 ( c4 ) as4 | % 38
  g2 ( f4 ) g8 [  as8 ] | % 39

  g2.  es4 | % 40
  f4  es4  as4.  g8 | % 41
  g2.  g4 | % 42
  as4  g4  c4.  bes8 | % 43
  bes1 | % 44
  d2  d4  d4 | % 45
  es2  c4 ( as4 ) | % 46
  g2  as4 ( f4 ) | % 47
  es2.  g4 | % 48
  bes4 ( as4 ) g4 ( f4 ) | % 49

  g2.  es4 | % 50
  es2  es2 | % 51
  es1 \bar "|."
}

sopranoVerse = \lyricmode {
  C'est l'A -- gneau, l'A -- gneau de Dieu,
  c'est l'A -- gneau, l'A -- gneau de Dieu,
  qui par a -- mour vient en nous_;
  c'est le Sau -- veur du mon -- de_!
  
  vient en nous_;
  c'est le Sau -- veur du mon -- de_!
  
  Ô chaste A -- gneau de Dieu,
  ô tendre A -- gneau de Dieu,
  ve -- nez en nous,
  ve -- nez en nous_!
  
  Ô chaste A -- gneau de Dieu,
  ô tendre A -- gneau de Dieu,
  ô doux Jé -- sus,
  ve -- nez en nous_;
  ô doux Jé -- sus,
  ve -- nez en nous_!
}

alto = \relative es' {
  \global
  es2  es2 | % 1
  es2.  es4 | % 2
  es2 ( d4 ) d4 | % 3
  es1 | % 4
  g2  f2 | % 5
  es4 ( bes'4  as4 ) g4 | % 6
  g4 ( f4  es4 ) d4 | % 7
  d1 | % 8
  e2  e4  e4 | % 9

  f1 | % 10
  d2.  d4 | % 11
  es1 | % 12
  es2  f4  f4 | % 13
  es4 ( g4 ) f4 ( es4 ) | % 14
  f1 | % 15
  f2. r4 | % 16
  
  %%%
  f2.  f4 | % 27
  es1 | % 28
  f2  es4  f4 | % 29

  es4 ( g2 ) f4 | % 30
  es2 ( d4.  es8 ) | % 31
  es1 ~ 1 ~
  2. es4 | % 34
  f4  es4  as4.  g8 | % 35
  g1 | % 36
  as2  as4  as4 | % 37
  g2 ( es4 ) f4 | % 38
  es2.  d4 | % 39

  es1 ~ | % 40
  es1 ~ | % 41
  es2.  es4 | % 42
  f4  es4  as4.  g8 | % 43
  g1 | % 44
  as2  as4  as4 | % 45
  g4 ( bes4 ) as4 ( f4 ) | % 46
  es2  d2 | % 47
  es1 ~ | % 48
  es1 ~ | % 49

  es2.  des4 | % 50
  c2  bes4 ( as4 ) | % 51
  bes1
}

altoVerse = \lyricmode {

}

tenor = \relative g {
  \global
  g2  bes2 | % 1
  as2.  as4 | % 2
  g2 ( f4 ) bes4 | % 3
  bes1 | % 4
  es2  bes2 | % 5
  g4 ( bes4  es4 ) es4 | % 6
  c2.  c4 | % 7
  b1 | % 8
  c2  c4  c4 | % 9

  c1 | % 10
  bes2.  bes4 | % 11
  bes1 | % 12
  c2  bes4  bes4 | % 13
  bes4 ( g4 ) b4 ( c4 ) | % 14
  bes2 ( a4  es'8 [  d8 ]) | % 15
  d2. r4 | % 16
  %%%
  bes2 ( c4 ) d4 | % 27
  bes1 | % 28
  bes2  c4  bes4 | % 29

  bes4 ( des2 ) c4 | % 30
  bes2 ( as4.  g8 ) | % 31
  g2.  g4 | % 32
  as4  g4  c4.  bes8 | % 33
  bes2.  bes4 | % 34
  bes4  bes4  d4.  es8 | % 35
  es1 | % 36
  bes2  bes4  bes4 | % 37
  bes2  c2 | % 38
  bes2  bes2 | % 39

  bes2.  g4 | % 40
  as4  g4  c4.  bes8 | % 41
  bes2.  bes4 | % 42
  bes4  bes4  d4.  es8 | % 43
  es1 | % 44
  f2  f4  f4 | % 45
  es2.  c4 | % 46
  bes2  f4 ( as4 ) | % 47
  g2.  bes4 | % 48
  d4 ( c4 ) bes4 ( as4 ) | % 49

  bes2.  bes4 | % 50
  bes4 ( as4 ) g4 ( f4 ) | % 51
  g1 
}

tenorVerse = \lyricmode {

}

bass = \relative es {
  \global
  es2  es2 | % 1
  as,2.  as4 | % 2
  bes2.  bes4 | % 3
  es1 | % 4
  es2  d2 | % 5
  c4 ( g'4  as4 ) es4 | % 6
  f2 ( g4 ) as4 | % 7
  g1 | % 8
  c,2  c4  bes'4 | % 9

  as1 | % 10
  as2.  as4 | % 11
  g1 | % 12
  c,2  d4  d4 | % 13
  es2  d4 ( c4 ) | % 14
  f1 | % 15
  bes,2. r4 | % 16
  %%%
  as2.  as4 | % 27
  g1 | % 28
  d'2  c4  d4 | % 29

  es2  as,2 | % 30
  bes1 | % 31
  es1 ~ | % 32
  es1 ~ | % 33
  es2.  es4 | % 34
  es4  es4  es4.  es8 | % 35
  es1 | % 36
  f2  f4  f4 | % 37
  g2  as2 | % 38
  bes2  bes,2 | % 39

  es1 ~ | % 40
  es1 ~ | % 41
  es2.  es4 | % 42
  es4  es4  es4.  es8 | % 43
  es1 | % 44
  bes'2  bes4  bes4 | % 45
  c4 ( g4 ) as2 | % 46
  bes2  bes,2 | % 47
  es1 ~ | % 48
  es1 ~ | % 49

  es2.  es4 | % 50
  es2  es2 | % 51
  es1
}

bassVerse = \lyricmode {

}


\tocItemComposer "C'est l'Agneau" "Praetorius"
\score {
  \header {
    title = "C'EST L'AGNEAU"
    composer = \praetorius
  }
  \new ChoirStaff \with {
    midiInstrument = "choir aahs"
  } <<
    \new Staff \with {
      \consists Merge_rests_engraver
    } <<
      \new Voice = "soprano" {\voiceOne \soprano}
      \new Voice = "alto" {\voiceTwo \alto}
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \sopranoVerse
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "alto" \altoVerse
    
    \new Staff \with {
      \consists Merge_rests_engraver
      \clef bass
    } <<
      \new Voice = "tenor" {\voiceOne \tenor}
      \new Voice = "bass" {\voiceTwo \bass}
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \tenorVerse
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "bass" \bassVerse
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves }}
  \midi {\tempo 4=100 }
}
