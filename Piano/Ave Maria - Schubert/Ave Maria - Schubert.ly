\version "2.26.0"
\include "../../settings.ily"
#(set-global-staff-size 18.3)


global = {
    \key bes \major
    \time 2/4
    \tempo "Lento"
}

sopranoVoice = \fixed c' {
    \global
    \autoBeamOff
    \tupletUp
    R1*2 \bar ".|:" bes4. a16 bes d'4..(c'16) bes4 r
    c'4( \grace {d'16[c'])} bes[a] g[a] bes8 4 r8
    d'8.(c'32[bes]) a16[g] d'[e'] d'4 cis'8
    a16 a c'8. bes16 \tuplet 6/4 {a[c'] d' es'[c'] a}
    \tuplet 3/2 {bes8 16} 4
    d'16[c'] c'8.(a16) \tuplet 6/4 {g[b d'] f'[d' b]} c'4~
    \tuplet 6/4 {16 g a bes c'32[bes] a g} f8 4 r8
    c'8 16. 32 16. b32 c'16. d'32 c'16.(d'32) bes8 r
    bes c'8. 16 \tuplet 6/4 {c'[b] c' es'[d'] c'} bes16. 32 8 r
    bes8  c'8. 16 d'16. 32 \tuplet 3/2 {d'16[c'] d'} \acciaccatura f' es'8 8 r
    g \acciaccatura d' c'8. 16 \tuplet 6/4 {bes[a] bes des'[c' bes]} c'4. r8
    bes4. a16 bes d'4..(c'16) bes4 r4 r2 R1*2 r2 \bar "|."
}

verse = \lyricmode {
    A -- ve Ma -- ri -- a,
    Gra -- ti -- a ple -- na, Do -- mi -- nus te -- cum,
    be -- ne -- dic -- ta tu in mu -- li -- e -- ri -- bus,
    et be -- ne -- dic -- tus fruc -- tus ven -- tris tu -- i, Je -- su.
    Sanc -- ta Ma -- ri -- a, ma -- ter De -- i,
    o -- ra pro no -- bis, pec -- ca -- to -- ri -- bus,
    nunc et in ho -- ra mor -- tis nos -- træ,
    in ho -- ra mor -- tis nos -- træ.
    A -- ve Ma -- ri -- a.
}

arpegeSimple = #(define-music-function
    (parser location n1 n2 n3 n4)
    (ly:music? ly:music? ly:music? ly:music?)
    #{
        \times 4/6 {
            < $n1 $n2 >16
            < $n2 $n3 >
            < $n3 $n4 >
            < $n2 $n3 >
            < $n1 $n2 >
        }
    #})

arpegePiano = #(define-music-function
  (parser location n1 n2 n3 n4)
  (ly:music? ly:music? ly:music? ly:music?)
  #{
     \times 4/6 { r16}
     \arpegeSimple $n1 $n2 $n3 $n4
  #})

arpegeFin = #(define-music-function
  (parser location n1 n2 n3 n4)
  (ly:music? ly:music? ly:music? ly:music?)
  #{
      \times 4/6 { r16}
      \change Staff = "left"
      \arpegeSimple $n1 $n2 $n3 $n4
      \change Staff = "right"
  #})


right = \fixed c' {
    \global
    \override TupletNumber.transparent = ##t
    \override TupletBracket.transparent = ##t
    \repeat unfold 2 {\arpegePiano d f bes d'}
    \arpegePiano f bes d' f'
    \arpegePiano as d' f' as'
    \arpegePiano g bes es' g'
    \arpegePiano ges a es' ges'
    \arpegePiano f bes d' f'
    \arpegePiano d f bes d'

    \arpegePiano d f bes d'
    \arpegePiano d e bes d'
    \arpegePiano d f bes d'
    \arpegePiano es a c' es'
    \repeat unfold 2 {\arpegePiano d g bes d'}
    \arpegePiano es g c' es'
    \arpegePiano es f a c'
    \arpegePiano d f bes d'
    \arpegePiano d f bes d'
    \arpegePiano d fis bes d'
    \arpegePiano d g bes d'
    \arpegePiano e g bes d'
    \arpegePiano e g a cis'
    \arpegePiano es a c' es'
    \arpegePiano es a c' es'
    \arpegePiano d g bes d'
    \arpegePiano d e bes d'
    \arpegePiano c f a c'
    \arpegePiano f g b f'
    \arpegePiano f a c' f'
    \arpegePiano e bes c' e'
    \arpegePiano f a c' f'
    \arpegePiano f a c' f'
    \arpegePiano es a c' f'
    \arpegePiano es a c' f'
    \arpegePiano d bes d' f'
    \arpegePiano d bes d' f'
    \arpegePiano es a c' f'
    \arpegePiano es a c' f'
    \arpegePiano d g bes d'
    \arpegePiano bes, d g bes
    \arpegePiano c f a c'
    \arpegePiano d fis a d'
    \arpegePiano es g c' es'
    \arpegePiano es g c' es'
    \arpegePiano c es g c'
    \arpegePiano des e bes des'
    \arpegePiano c f a c'
    \arpegePiano es f a c'
    \arpegePiano d f bes d'
    \arpegePiano d e bes d'
    \arpegePiano d f bes d'
    \arpegePiano es f a c'
    \arpegePiano d f bes d'
    \arpegePiano d f bes d'
    \arpegePiano f bes d' f'
    \arpegePiano as d' f' as'
    \arpegePiano g bes es' g'
    \arpegePiano ges a es' ges'
    \arpegePiano f bes d' f'
    \arpegePiano d f bes d' \bar ":|."
    \arpegePiano bes, d f bes

    \stemUp
    \arpegeFin f, bes, d f
    \arpegeFin d, f, bes, d
    \arpegeFin d, f, bes, d
    s2
}

octave =
#(define-music-function
  (parser location note)
  (ly:music?)
  #{
    <<
      \transpose c c, { $note }
      $note
    >>
    r8
  #})

left = \fixed c, {
    \global
    \repeat unfold 9 {\octave bes8}
    \octave g \octave f \octave f
    \octave g \octave g \octave es \octave f
    \repeat unfold 4 {\octave bes}
    \octave a \octave a \octave fis \octave fis
    \octave g \octave g \octave a \octave d'
    \octave c' \octave c'
    \repeat unfold 8 {\octave f'}
    \octave g' \octave g' \octave f' \octave d'
    \octave c' \octave c' \octave es' \octave g'
    \octave f' \octave f' \octave bes \octave g
    \octave f \octave f
    \repeat unfold 12 {\octave bes}
    <bes, f bes d' f' bes' d''>2 \fermata
}


sopranoVoicePart = \new Staff \with {
    instrumentName = "Soprano"
    midiInstrument = "flute"
} { \sopranoVoice }
\addlyrics { \verse }

pianoPart = \new PianoStaff \with {
    instrumentName = "Orgue"
} <<
    \new Staff = "right" \with {
        midiInstrument = "church organ"
    } \right
    \new Staff = "left" \with {
        midiInstrument = "church organ"
    } { \clef bass \left }
>>

\score {
    \header {
        title = "AVE MARIA"
        composer = "Franz Schubert (1797-1828)"
    }
    <<
        \sopranoVoicePart
        \pianoPart
    >>
    \layout { \context {\Staff \RemoveEmptyStaves }}
    \midi {\tempo 4 = 30 }
}
