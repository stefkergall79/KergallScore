# KergallScore Édition

Tous nos fichiers sources sont libres : téléchargez-les, modifiez-les, vendez-les.

Les partitions sont écrites en [lilypond](https://lilypond.org/index.html). Pour une compilation sans erreur, copiez tous les fichiers du dossier [.utils/](../.utils/) dans le dossier d'inclusion par défaut de lilypond :

- si vous utilisez le paquet système de `lilypond` (ancienne version 2.24.4) : `/usr/share/lilypond/2.24.4/ly/`
- si vous utilisez la dernière version 2.26.0 téléchargée depuis [le site officiel](https://lilypond.org/download.html) : `KergallScore/.prog/lilypond-2.26.0/share/lilypond/2.26.0/ly/`
- si vous êtes sous MacOS : vous êtes riches. [Abonnement claude.ai](https://claude.ai/upgrade)
- si vous êtes sous Windows : pauvres fous ! [Installer Linux est facile](https://linuxmint.com/edition.php?id=326)

Que contient [.utils/](../.utils/) ?
- [settings.ily](../.utils/settings.ily) : fonctions et variables prédéfinies, ainsi que [la signature de KergallScore](mailto:stef.kergall@gmail.com), que vous devriez enlever si vous retouchez une partition
- [composers.ily](../.utils/composers.ily) : la liste de tous les compositeurs, paroliers et harmonisateurs dont KergallScore a reproduit une partition, avec leur nom complet et leurs dates
