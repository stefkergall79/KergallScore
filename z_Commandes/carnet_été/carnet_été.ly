\version "2.26.0"
\include "settings.ily"

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
\include "../../Carême-Pâques/Jésus-Christ monte au Calvaire/Jésus-Christ monte au Calvaire.ly" \pageBreak
\include "../../Carême-Pâques/Vive Jésus, vive sa Croix/Vive Jésus, vive sa Croix.ly" \pageBreak
\include "../../Carême-Pâques/Ô Croix dressée sur le monde/Ô Croix dressée sur le monde.ly" \markup \vspace #3
\include "../../Carême-Pâques/Stabat Mater - Zoltán Kodály/Stabat Mater - Zoltán Kodály.ly" \pageBreak
\include "../../Carême-Pâques/In monte Oliveti - Martini/In monte Oliveti - Martini.ly"

\pageBreak
\tocItem \markup {\bold "Général" \vspace #1 }
\include "../../Général/Benedictus/Benedictus.ly" \pageBreak
\include "../../Général/Règne à jamais/Règne à jamais.ly" \pageBreak
\include "../../Général/Christus vincit/Christus vincit.ly" \pageBreak
\include "../../Général/Adoramus te - Dubois/Adoramus te - Dubois.ly" \markup \vspace #3
\include "../../Général/Sancte Pie Decime/Sancte Pie Decime.ly" \pageBreak
\include "../../Général/Alta Trinita/Alta Trinita.ly" \pageBreak
\include "../../Général/Cantate Domino - Pitoni/Cantate Domino - Pitoni.ly" \pageBreak
\include "../../Général/Jesu salvator - Menegali/Jesu salvator - Menegali.ly"
\include "../../Général/Jesu Rex admirabilis - Palestrina/Jesu Rex admirabilis - Palestrina.ly" \pageBreak
\include "../../Général/Tollite Hostias - Saint-Saëns/Tollite Hostias - Saint-Saëns.ly" \pageBreak

\pageBreak
\tocItem \markup {\bold "Saint-Sacrement" \vspace #1 }
\include "../../Général/Lauda Sion/Lauda Sion.ly" \pageBreak
\include "../../Général/Lauda Jerusalem/Lauda Jerusalem.ly" \pageBreak
\include "../../Général/Adoremus - Haller/Adoremus - Haller.ly" \pageBreak
\include "../../Général/O memoriale - Palestrina/O memoriale - Palestrina.ly"
\include "../../Général/Pange lingua - Bartolucci/Pange lingua - Bartolucci.ly" \pageBreak
\include "../../Général/Panis angelicus - Casciolini/Panis angelicus - Casciolini.ly" \pageBreak
\include "../../Général/Tantum ergo - Bach/Tantum ergo - Bach.ly" \pageBreak
\include "../../Général/O salutaris - Mozart/O salutaris - Mozart.ly"

\tocItem \markup {\bold "Sainte-Vierge" \vspace #1 }
\include "../../Général/O Sanctissima - Sicilien/O Sanctissima - Sicilien.ly"
\include "../../Général/O Gloriosa Virginum 3 voix/O Gloriosa Virginum 3 voix.ly"
\include "../../Général/O Sanctissima - Roussel/O Sanctissima - Roussel.ly" \pageBreak
\include "../../Général/Ave Maris Stella - Perruchot/Ave Maris Stella - Perruchot.ly" \pageBreak
\include "../../Général/Je mets ma confiance/Je mets ma confiance.ly"
\include "../../Général/O Vierge Marie/O Vierge Marie.ly" \pageBreak
