\version "2.26.0"

#(set-global-staff-size 17.8)

global = {
  \key d \major
  \time 2/2
  \autoBeamOff
}

soloVoice = \fixed c' {
  \global
  \dynamicUp
  R1*8
  a2 4 4 2 2 r2
  4 8 8 d'2 a r2
  4 8 8 2 2 r2
  4 8 8 e'2 a4 4 4(d')2
  
  r4 d'4 4 4 fis'2 cis'
  r4 b b b d'2 a2
  4(b)cis' d' e'2(cis') d'1
}
verseSolo = \lyricmode {
  \repeat unfold 3 { A -- ve Ma -- rí -- a. }
  A -- ve Ma -- rí -- a, Ma -- rí -- a.
  \repeat unfold 3 { A -- ve Ma -- rí -- a. }
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Solo"
  shortInstrumentName = "Sl."
  midiInstrument = "choir aahs"
} { \soloVoice }
\addlyrics { \verseSolo }

soprano = \fixed c' {
  \global
  fis2 4 g b a fis2 a g4 fis e fis e2
  2 dis4 e g fis e2 g4 b a e g fis4 2~1
  
  fis2 4 g b a fis2 a g4 fis e fis e2
  2 dis4 e g fis e2 g4 b a e g fis4 2
  \bar"||" \break
  fis2(b)ais1 d2(g)fis1
  a2 4 4 4(b a g)a1\bar"|."
}

alto = \fixed c' {
  \global
  d2 4 e g fis d2 fis e4 d cis d cis2
  2 bis,4 cis e d cis2 e4 g fis cis e d4 2~1
  
  d2 4 e g fis d2 fis e4 d cis d cis2
  2 bis,4 cis e d cis2 e4 g fis cis e d4 2
  
  fis1 1 d1 1 e4(fis)g fis e1 fis
}

tenor = \fixed c {
  \global
  \repeat unfold 7 {a1}
  a~1
  \repeat unfold 3 { 2 4 4 4 4 2 }
  4 4 4 4 4 4 2
  
  \set Staff.shortInstrumentName = "B."
  fis1 1 r2 g2 d1 g4(fis)e fis g2(e)fis1
}

bass = \fixed c {
  \global
  d1 1 1 a,1 1 1 1 d~1
  d2 4 4 4 4 2 2 4 4 a,4 4 2
  2 4 4 4 4 2 4 4 4 4 d4 4 2

  b,1 fis, g, s a,2 4 4 1 <d d,>1
}
bassI = \fixed c {
  R1*17

  d'1 cis' b a cis'4(d')e' d' cis'2(e')d'1
}
bassII = \fixed c {
  R1*17

  b2(fis)ais1 g2(d)fis1 a2 4 4 1 1
}

verseOne = \lyricmode {
  \set stanza = "1."
  \repeat unfold 2 {
    Les clo -- ches de No -- ël
    tin -- tent dans la val -- lée_:
    elles chan -- tent dans le ciel
    la ve -- nue d'un nou -- veau -_né.
  }
  A -- ve, A -- ve, A -- ve Ma -- rí -- a.
}

verseTwo = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 2.
  \repeat unfold 2 {
    Les ber -- gers du pa -- ys,
    qui gar -- dent les trou -- peaux,
    au ciel voient se le -- ver
    l'é -- toi -- le des temps nou -- veaux.
  }
}

verseThree = \lyricmode {
  \set stanza = "3."
  \repeat unfold 2 {
    En rou -- te, pas -- tou -- reaux,
    pré -- pa -- rons nos flu -- tiaux,
    met -- tons -_nous en che -- min
    en chan -- tant de gais re -- frains_!
  }
}

verseFour = \lyricmode {
  \override LyricText.font-shape = #'italic
  \set stanza = \markup \italic 4.
  \repeat unfold 2 {
    Clo -- ches, clo -- ches, son -- nez,
    son -- nez dans la val -- lée,
    clo -- ches, cloches, an -- non -- cez_:
    un en -- fant nous est don -- né_!
  }
}

verseBassCouplet = \lyricmode {
  \override LyricText.font-shape = #'italic
  \override LyricText.font-series = #'bold
  \repeat unfold 8 { Dmm_! }
}
verseBassRefrain = \lyricmode {
  A -- ve, A -- ve, A -- ve Ma -- rí -- a.
}


choirPart =  \new ChoirStaff <<
  % 1
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "S." "A." }
    shortInstrumentName = \markup \center-column { "S." "A." }
    \consists Merge_rests_engraver
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verseOne
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verseTwo
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verseThree
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \verseFour
  
  % 2
  \new Staff \with {
    midiInstrument = "choir aahs"
    shortInstrumentName = "T."
    \consists Merge_rests_engraver
  } <<
      \clef bass
      \new Voice = "bassI" { \voiceOne \bassI }
      \new Voice = "bassII" { \voiceTwo \bassII }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "bassI" \verseBassRefrain

  
  % 3
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "T." "B." }
    shortInstrumentName = \markup \center-column { "T." "B." }
    \consists Merge_rests_engraver
  } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "tenor" { \verseBassCouplet \verseBassRefrain }
  
>>


\paper {
  print-all-headers = ##t
  tagline = \markup {
    \italic \with-color #blue 
    \with-url #"mailto:stef.kergall@gmail.com"
    "stef.kergall@gmail.com"
    "- Partitions sur commande"
  }
}
\tocItem \markup {
  \pad-to-box #'(0 . 40) #'(0 . 0)
  "" ""
}
\score {
  \header {
    title = "AVE MARIA"
    subtitle = "Noël autrichien"
  }
  <<
    \sopranoVoicePart
    \choirPart
  >>
  \layout {\context{\Staff \RemoveAllEmptyStaves}}
  \midi {\tempo 2=100}
}