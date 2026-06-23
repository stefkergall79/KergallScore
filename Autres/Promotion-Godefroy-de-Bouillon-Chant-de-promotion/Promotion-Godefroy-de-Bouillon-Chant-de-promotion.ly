\version "2.26.0"

\header {
  title = "Chant de promotion"
  composer = "Promotion Godefroy de Bouillon"
  tagline = ##f
}

#(set-default-paper-size "a4")
#(set-global-staff-size 18.2)

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \partial 2
  \autoBeamOff
}

tenorOne = \fixed c {
  \global
  % En avant la musique.
  \sectionLabel "Refrain"
  a4_\p f
  a4 a a c'8 d'
  a4 r8 a_\mp a a bes bes
  c'4. d'8 c'4 c'
  c'4 r8 a f e f g
  c'4 a8 bes c'4 d'8 d'
  c'8 r bes4_\> bes a
  d'4 b cis'\!\fermata r8 d_\<
  d8. f16 a8 d' f'4.\! f'8
  f'4 f'8 f' f'4 r8 a
  d'8. c'16 d'8 d' c'4. c'8
  d'4_\> d' d' cis'\!
  \partial2. r8 d_\< d8. f16 a8 d' 
  f'8\! e' d' e' f'2
  f'4 r8 a_\p c'4 g8 a
  bes4.\coda bes8_\> a4 a8 a
  a4 a f\!\fermata r8 \bar "||" \break
  \sectionLabel "Couplet" c_\mp
  a4 c'8 c' c'4 d'8 a
  a4 a c' r8 c'_\mf
  c'4 d'8 c' c'4 c'8 c'
  d'4 c' c' r8 a_\f
  a4 bes8 a a4 f8 g
  a4 a g r
  c'_\p c'8 c' c'4 c'8 a
  a4 e f r
  f8_\< f f f a4 a8 a
  a4 c' c'\! r
  f8 f f g a4_\> e8 f
  a4 a f2\!\fermata\bar "||"
  bes4.\coda bes8_\> bes4 bes8 bes
  a4 a fis2\!\fermata\bar "||"
  \key d \major \sectionLabel "Final"
  d4_\f a a2
  b4 g a4. a8
  d'4. d'8 cis'4 a
  b d' e'2
  a4_\ff d' b e'
  d'2 cis'4. d'8 
  d'2\fermata\bar "|."
}

tenorTwo = \fixed c {
  \global
  % En avant la musique.
  a,4_\p a,
  f e f a8 a
  f4 r8  e8_\mp f e f g
  a4. f8 g4 g
  a r8 f a g a bes
  g4 f8 f a bes4 a8
  g r c_\> e f4 e8 d
  e2.\!\fermata r8 d_\<
  d8. d16 f8 a d'4.\! d'8
  d'4 c'8 bes a4 r8 f
  bes8. c'16 bes8 a g4. a8
  bes4_\> a8 g a2\!
   r8 d_\< d8. d16 f8 a
  d'4.\! d'8 d'4 c'8 bes
  a4 r8 f_\p a4 bes8 a
  g4.\coda a8_\> f4 e8 d
  e4 c d\!\fermata r8 c_\mp
  f4 g8 a g4 f8 e
  f4 f g r8 a_\mf
  a4 bes8 a g4 g8 a
  bes4 g a r8 c'_\f
  c'4 d'8 c' c'4 a8 bes
  c'4 c' c' r
  g_\p a8 bes g4 g8 f8
  e4 c d r
  d8_\< c d e f4 f8 e
  f4 g a\! r
  d8 c d e f4_\> g8 f
  e4 c d2\!\fermata
  g4.\coda a8_\> f4 e8 d
  e4 cis d2\!\fermata
  \key d \major
  fis4_\f fis fis2
  g4 b fis4. fis8
  a4. a8 a4 e
  g a cis'2
  fis4_\ff b g b
  a2 a4. a8
  a2\fermata
}

bass = \fixed c {
  \global
  % En avant la musique.
  a,4 a,
  d c d e8 f
  d4 r8 e d4. e8
  e f f f e4 e
  f4 r8 d c c c d
  e4 d8 d f4 f8 f
  e r e e d4 d8 d
  a,2.\fermata r8 d
  d8. d16 d8 d a,4. a,8
  bes,4 bes,8 bes, c4 r8 c
  f8. f16 f8 d e4. f8
  f4 f8 f e2
  a,4 d8. d16 d8 d 
  a,4. a,8 bes,4 bes,8 bes,
  c4 r8 c f4 d8 d
  e4.\coda e8 d4 d8 d
  c4 c a,\fermata r8 c
  c4 e8 f e4 d8 d
  c4 c e r8 f
  f4 f8 f e4 e8 f
  f4 e f r8 f
  f4 f8 f f4 f8 e
  f4 f e r
  e f8 f e4 e8 c
  c4 a, a, r
  a,8 a, bes, bes, c4 d8 c
  c4 e f r
  a,8 a, bes, bes, c4 c8 c
  c4 e a,2\fermata
  e4.\coda e8 d4 d8 d
  cis4 cis a,2\fermata
  \key d \major
  d4 d d2
  d4 d d4. d8
  fis4. fis8 e4 cis
  d fis a2
  d4 fis g e
  fis2 e4. fis8
  <fis d>2 \fermata
}

verseOne = \lyricmode {
  % Ajouter ici des paroles.
  En ce soir, sem -- blab -- les_aux Croi -- sés,
  de -- vant Jé -- ru -- sa -- lem a -- ge -- nou -- illés,
  for -- més en pro -- mo -- tion,
  i -- mi -- tons ce hé -- ros_: Go -- de -- froy de Bou -- illon_!
  Que ce chant au -- jour -- d'hui ré -- veille en nos coeurs
  l'â -- me de che -- va -- lier pour No -- tre- Sei -- gneur_!
  Que sa gloire i -- mmor -- telle ins -- pi -- re notre âme_;
  mar -- chons à sa suite, à Dieu con -- sa -- crons nos armes_!
  \set stanza = "1."
  Con -- tre le Saint- Père d'a -- bord vous lu -- ttez,
  mais vous vous croi -- sez pour vous ra -- che -- ter.
  Sur terre et sur mer vous me -- nez l'ar -- mée_;
  Jé -- ru -- sa -- lem se voit a -- ssié -- gée.
  Pen -- dant plu -- sieurs jours le com -- bat fait rage,
  mais la ville est prise par vo -- tre cou -- rage.
  suite, à Dieu con -- sa -- crons nos armes_!
  Pla -- cés sous vo -- tre nom,
  pou -- ssons en -- cor ce cri vain -- queur_:
  Gloire à Go -- de -- froy de Boui -- llon_!
}

verseTwo = \lyricmode {
  % Ajouter ici des paroles.
  \repeat unfold 81 {\skip1}
  \set stanza = "2."
  A pei -- ne vain -- queur, vous vous e -- ffa -- cez_:
  d'a -- bord aux Lieux Saints vous vous re -- cuei -- llez,
  puis vous re -- fu -- sez la cou -- ro -- nne d'or,
  sur cet -- te ter -- re où Jé -- sus est mort.
  Mais en com -- ba -- ttant pou le Chri -- st(e)- Roi,
  vous vous é -- tei -- gnez, fi dèle à la foi.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
    } { \clef "treble_8" \tenorOne }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \new Staff \with {
      midiInstrument = "choir aahs"
    } { \clef "treble_8" \tenorTwo }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \new Staff \with {
      midiInstrument = "choir aahs"
    } { \clef bass \bass }
  >>
  \layout { }
  \midi {
  \tempo 4=80}
}
