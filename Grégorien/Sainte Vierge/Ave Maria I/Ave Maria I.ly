\version "2.26.0"
\include "../../../settings.ily"
#(ly:set-option 'backend 'cairo)

\markup \column {
  \fill-line {\bold \fontsize #5 "AVE MARIA I" }
  \vspace #1
  \fill-line {
    \epsfile #X #110 #"Ave Maria I.png"
  }
}