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

\layout {
  \context{
    \Staff
    \RemoveAllEmptyStaves
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

strophemode =
#(define-music-function (num italic debut paroles) (integer? boolean? (integer? 0) ly:music?)
  (let ((num-str (string-append (number->string num) "."))
        (skip_debut (if (> debut 0)
            #{ \lyricmode { \repeat unfold #debut \skip 1 } #}
            #{
            #}))
       )
  (if italic
    #{
      \lyricmode {
        #skip_debut
        \override LyricText.font-shape = #'italic
        \set stanza = \markup \italic #num-str
        #paroles
      }
    #}
    #{
      \lyricmode {
        #skip_debut
        \set stanza = #num-str
        #paroles
      }
    #}
)))

#(define-markup-command (couplets-markup layout props start-num num-cols lines) 
  (integer? integer? markup-list?)
  (let* ((numbered-lines 
           (let loop ((lst lines) (i start-num))
             (if (null? lst)
                 '()
               (let* ((num-str (string-append (number->string i) ". "))
                      (line-block (make-line-markup 
                                   (list (make-bold-markup num-str) 
                                         (car lst))))
                      (formatted-block (if (even? i)
                                           (make-italic-markup line-block)
                                           line-block)))
               (cons formatted-block
                     (loop (cdr lst) (+ i 1))))))))
     
   (define (take n l)
     (if (or (<= n 0) (null? l)) '() (cons (car l) (take (- n 1) (cdr l)))))
   (define (drop n l)
     (if (or (<= n 0) (null? l)) l (drop (- n 1) (cdr l))))
   (define (split-list lst n)
     (if (<= n 1)
       (list lst)
       (let* ((len (length lst))
              (size (inexact->exact (ceiling (/ len n)))))
        (cons (take size lst)
              (split-list (drop size lst) (- n 1))))))
   (define (interleave-vertical-space col-lines)
     (if (or (null? col-lines) (null? (cdr col-lines)))
        col-lines
        (cons (car col-lines)
           (cons (make-vspace-markup 1)
                 (interleave-vertical-space (cdr col-lines))))))
   (define (interleave-null lst)
     (if (or (null? lst) (null? (cdr lst)))
       lst
       (cons (car lst)
          (cons (make-null-markup)
             (interleave-null (cdr lst))))))
   (define (pad-with-null lst)
     (append (list (make-null-markup))
       lst
       (list (make-null-markup))))
   
   (let* ((columns (split-list numbered-lines num-cols))
          (spaced-columns (map interleave-vertical-space columns))
          (column-markups (map make-column-markup spaced-columns))
          (with-internal-nulls (interleave-null column-markups))
          (balanced-columns (pad-with-null with-internal-nulls)))
      
     (interpret-markup layout props
       (make-fill-line-markup balanced-columns)))
   ))
