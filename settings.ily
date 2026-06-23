\version "2.26.0"

\paper{
  print-all-headers = ##t
  tagline = \markup {
    \italic \with-color #blue 
    \with-url #"mailto:stef.kergall@gmail.com"
    "stef.kergall@gmail.com"
    "- Partitions sur commande"
  }
}

tocItemComposer =
#(define-music-function (titre compositeur) (markup? markup?)
   #{
     \tocItem \markup {
       \pad-to-box #'(0 . 40) #'(0 . 0)
       #titre
       #compositeur
     }
   #})

markChanson =
#(define-music-function (marque) (markup?)
   #{
     \sectionLabel \markup \bold #marque
   #})

stropheMode =
#(define-music-function (num debut paroles) (integer? (integer? 0) ly:music?)
   (let ((num-str (string-append (number->string num) "."))
         (skip_debut (if (> debut 0)
                               #{ \lyricmode { \repeat unfold #debut \skip 1 } #}
                               ""))
        )
    (if (odd? num)
      #{
        \lyricmode {
          #skip_debut
          \set stanza = #num-str
          #paroles
        }
      #}
      #{
        \lyricmode {
          #skip_debut
          \override LyricText.font-shape = #'italic
          \set stanza = \markup \italic #num-str
          #paroles
          \revert LyricText.font-shape
        }
      #})))