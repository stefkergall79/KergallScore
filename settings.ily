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
