\version "2.26.0"
\include "../../settings.ily"

\paper {
  print-page-number = ##f
  tocTitleMarkup = \markup \column {
    \fontsize #5 \bold \fill-line {INDEX}
    \vspace #2 
  }
  tocItemMarkup = \markup \fill-line {
    \normal-text \fromproperty #'toc:text
    \normal-text \fromproperty #'toc:page
  }
  ragged-bottom = ##t
}

\markuplist \table-of-contents

\pageBreak
\tocItem \markup {\bold "Carême" \vspace #1 }
\include "../../Chants populaires/Jésus-Christ monte au Calvaire/Jésus-Christ monte au Calvaire.ly" \pageBreak
\include "../../Chants populaires/Vive Jésus, vive sa Croix/Vive Jésus, vive sa Croix.ly" \pageBreak
\include "../../Chants populaires/Ô Croix dressée sur le monde/Ô Croix dressée sur le monde.ly" \markup \vspace #3
\include "../../Chorale/Stabat Mater - Zoltán Kodály/Stabat Mater - Zoltán Kodály.ly" \pageBreak
\include "../../Chorale/In monte Oliveti - Martini/In monte Oliveti - Martini.ly"

\pageBreak
\tocItem \markup {\bold "Général" \vspace #1 }
\include "../../Chants populaires/Benedictus/Benedictus.ly" \pageBreak
\include "../../Chants populaires/Règne à jamais/Règne à jamais.ly" \pageBreak
\include "../../Chants populaires/Christus vincit/Christus vincit.ly" \pageBreak
\include "../../Chorale/Adoramus te - Dubois/Adoramus te - Dubois.ly" \markup \vspace #3
\include "../../Chants populaires/Sancte Pie Decime/Sancte Pie Decime.ly" \pageBreak
\include "../../Chorale/Alta Trinita/Alta Trinita.ly"
\include "../../Chorale/Cantate Domino - Pitoni/Cantate Domino - Pitoni.ly" \pageBreak
\include "../../Chorale/Jesu salvator - Menegali/Jesu salvator - Menegali.ly"
\include "../../Chorale/Jesu Rex admirabilis - Palestrina/Jesu Rex admirabilis - Palestrina.ly" \pageBreak
\include "../../Chorale/Tollite Hostias - Saint-Saëns/Tollite Hostias - Saint-Saëns.ly" \pageBreak

\pageBreak
\tocItem \markup {\bold "Saint-Sacrement" \vspace #1 }
\include "../../Chants populaires/Lauda Sion/Lauda Sion.ly" \pageBreak
\include "../../Chants populaires/Lauda Jerusalem/Lauda Jerusalem.ly" \pageBreak
\include "../../Chorale/Adoremus - Haller/Adoremus - Haller.ly" \pageBreak
\include "../../Chorale/O memoriale - Palestrina/O memoriale - Palestrina.ly"
\include "../../Chorale/Pange lingua - Bartolucci/Pange lingua - Bartolucci.ly" \pageBreak
\include "../../Chorale/Panis angelicus - Baini/Panis angelicus - Baini.ly" \pageBreak
\include "../../Chorale/Tantum ergo - Bach/Tantum ergo - Bach.ly" \pageBreak
\include "../../Chorale/O salutaris - Mozart/O salutaris - Mozart.ly"

\tocItem \markup {\bold "Sainte-Vierge" \vspace #1 }
\include "../../Chorale/O Sanctissima - Sicilien/O Sanctissima - Sicilien.ly"
\include "../../Chorale/O Gloriosa Virginum 3 voix/O Gloriosa Virginum 3 voix.ly"
\include "../../Chorale/O Sanctissima - Roussel/O Sanctissima - Roussel.ly" \pageBreak
\include "../../Chorale/Ave Maris Stella - Perruchot/Ave Maris Stella - Perruchot.ly" \pageBreak
\include "../../Chants populaires/Je mets ma confiance/Je mets ma confiance.ly"
\include "../../Chants populaires/O Vierge Marie/O Vierge Marie.ly" \pageBreak
