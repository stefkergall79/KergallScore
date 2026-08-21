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
\include "../../02-Carême-Pâques/Jésus-Christ monte au Calvaire/Jésus-Christ monte au Calvaire.ly" \pageBreak
\include "../../02-Carême-Pâques/Vive Jésus, vive sa Croix/Vive Jésus, vive sa Croix.ly" \pageBreak
\include "../../02-Carême-Pâques/Ô Croix dressée sur le monde/Ô Croix dressée sur le monde.ly" \markup \vspace #3
\include "../../02-Carême-Pâques/Stabat Mater - Zoltán Kodály/Stabat Mater - Zoltán Kodály.ly" \pageBreak
\include "../../02-Carême-Pâques/In monte Oliveti - Martini/In monte Oliveti - Martini.ly"

\pageBreak
\tocItem \markup {\bold "01-Général" \vspace #1 }
\include "../../01-Général/Benedictus/Benedictus.ly" \pageBreak
\include "../../01-Général/Règne à jamais/Règne à jamais.ly" \pageBreak
\include "../../01-Général/Christus vincit/Christus vincit.ly" \pageBreak
\include "../../01-Général/Adoramus te - Dubois/Adoramus te - Dubois.ly" \markup \vspace #3
\include "../../01-Général/Sancte Pie Decime/Sancte Pie Decime.ly" \pageBreak
\include "../../01-Général/Alta Trinita/Alta Trinita.ly" \pageBreak
\include "../../01-Général/Cantate Domino - Pitoni/Cantate Domino - Pitoni.ly" \pageBreak
\include "../../01-Général/Jesu salvator - Menegali/Jesu salvator - Menegali.ly"
\include "../../01-Général/Jesu Rex admirabilis - Palestrina/Jesu Rex admirabilis - Palestrina.ly" \pageBreak
\include "../../01-Général/Tollite Hostias - Saint-Saëns/Tollite Hostias - Saint-Saëns.ly" \pageBreak

\pageBreak
\tocItem \markup {\bold "Saint-Sacrement" \vspace #1 }
\include "../../03-Saint-Sacrement/Lauda Sion/Lauda Sion.ly" \pageBreak
\include "../../03-Saint-Sacrement/Lauda Jerusalem/Lauda Jerusalem.ly" \pageBreak
\include "../../03-Saint-Sacrement/Adoremus - Haller/Adoremus - Haller.ly" \pageBreak
\include "../../03-Saint-Sacrement/O memoriale - Palestrina/O memoriale - Palestrina.ly"
\include "../../03-Saint-Sacrement/Pange lingua - Bartolucci/Pange lingua - Bartolucci.ly" \pageBreak
\include "../../03-Saint-Sacrement/Panis angelicus - Casciolini/Panis angelicus - Casciolini.ly" \pageBreak
\include "../../03-Saint-Sacrement/Tantum ergo - Bach/Tantum ergo - Bach.ly" \pageBreak
\include "../../03-Saint-Sacrement/O salutaris - Mozart/O salutaris - Mozart.ly"

\tocItem \markup {\bold "Sainte-Vierge" \vspace #1 }
\include "../../01-Général/O Sanctissima - Sicilien/O Sanctissima - Sicilien.ly"
\include "../../01-Général/O Gloriosa Virginum 3 voix/O Gloriosa Virginum 3 voix.ly"
\include "../../01-Général/O Sanctissima - Roussel/O Sanctissima - Roussel.ly" \pageBreak
\include "../../01-Général/Ave Maris Stella - Perruchot/Ave Maris Stella - Perruchot.ly" \pageBreak
\include "../../01-Général/Je mets ma confiance/Je mets ma confiance.ly"
\include "../../01-Général/O Vierge Marie/O Vierge Marie.ly" \pageBreak
