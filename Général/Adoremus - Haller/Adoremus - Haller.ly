\version "2.26.0"
\include "settings.ily"
\include "composers.ily"

global = {
  \key d \major
  \time 4/4
}

soprano = \fixed c' {
  \global
  fis2.^\pp 4 g1\espressivo fis2 r4 a^\<~4 4 b2 cis'4\! 4 d'4. 8 cis'4 b2 a4 1^\> 1\!\fermata\bar "||"

  \break\cadenzaOn fis\breve \cadenzaOff \bar"|"
  b2 a4.( g8 fis1\fermata)\bar "||" \break
  \cadenzaOn fis\breve \cadenzaOff \bar"|"
  a4.~8 g4.( fis8 e1\fermata) \bar"|."
}

alto = \fixed c' {
  \global
  d2. 4 1 2 r4 fis~4 e4 fis(gis) a4 g4 fis4. 8 a4 g2 fis4 e1  fis1

  d\breve 2 cis(d1) d\breve cis4.~8 b,2(cis1)
}

tenor = \fixed c {
  \global
  a2. 4 b1\espressivo a2 r4 d'~4 e'4 d'2 e'4 4 d'4. e'8 fis'4 d'2 4 4(cis'8 b cis'2) d'1\fermata

 a\breve g2 e s1\fermata d\breve fis2 d2 a1\fermata
}

bass = \fixed c {
  \global
  d2. 4 g1 d2 r4 d'4~4 cis'4 b2 a4 4 b4. 8 fis4 g2 d4 a,1 d1

  d\breve g,2 a, d1 b,\breve fis,2 g,2 a,1
}

verseRefrain = \lyricmode {
  A -- do -- ré -- mus
  in æ -- tér -- num
  San -- ctís -- si -- mum
  Sa -- cra -- mén -- tum.
}

verseOne = \strophemode #1 ##f #8 \lyricmode {
  "Quam dilécta tabernácula tua  //  Dómine vir    -   "\breve -- tú2 -- tum_;1.
  "concupíscit, et déficit ánima mea  //  in átria      "\breve Dó4. -- mi8 -- ni.1.
}

verseTwo = \strophemode #2 ##t #16 \lyricmode {
  "Cor meum, et caro " me -- a_;
  "exsultavérunt in Deum" vi -- vum.
}

verseThree = \strophemode #3 ##f #16 \lyricmode {
  "Etenim passer invénit sibi" do -- mum_;
  "et turtur nidum sibi  //  ubi ponat pullos" su -- os.
}

verseFour = \strophemode #4 ##t #16 \lyricmode {
  "Altária tua, Dómine vir " -- tú -- tum_;
  "rex meus et Deus" me -- us.
}

verseFive = \lyricmode {
  \skip 1*8
  \set stanza = "5."
  "Beáti qui habítant in domo tua,"\breve Dó2 -- mi2 -- ne_;1
  "in sǽcula sæculórum lau "\breve -- dá4. -- bunt8 te.1.
}


versete = \lyricmode {
  1*8
  \markup \italic B.F.\breve
  1*2
  \markup \italic B.F.\breve
}

\tocItemComposer "Adoremus" "Haller"
\score {
  \header {
    title = "ADOREMUS"
    composer = \haller
    poet = "Ps. 84"
  }
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" \verseRefrain
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \verseOne
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \lyricsto "soprano" \verseFour
    \new Lyrics \with {\override LyricText.self-alignment-X = #LEFT
    } \verseFive
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists Merge_rests_engraver
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics\versete
  >>
  \layout { }
  \midi {\tempo 4=90 }
}
