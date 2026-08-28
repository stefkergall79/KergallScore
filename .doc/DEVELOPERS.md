# KergallScore Édition

Tous nos fichiers sources sont libres : téléchargez-les, modifiez-les, décortiquez-les.

Nos partitions sont écrites en [lilypond](https://lilypond.org/index.html). Pour une compilation sans erreur dès le départ, copiez tous les fichiers du dossier [.utils/](../.utils/) dans le dossier d'inclusion par défaut de lilypond.

- Si vous utilisez le paquet système de `lilypond` (ancienne version 2.24.4) :
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* /usr/share/lilypond/2.24.4/ly/
```
- Si vous utilisez la dernière version 2.26.0 téléchargée depuis [le site officiel](https://lilypond.org/download.html) :
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* .prog/lilypond-2.26.0/share/lilypond/2.26.0/ly/
```
- Si vous êtes sur MacOS : vous avez de la chance, un abonnement [Claude](https://claude.ai) vous expliquera la procédure mieux qu'aucun tutoriel.
- Si vous êtes sous Windows : toutes nos condoléances, passez vite sur [Linux](https://linuxmint.com/edition.php?id=326).

> Que contient [.utils/](../.utils/) ?
>> - [settings.ily](../.utils/settings.ily) : fonctions et variables prédéfinies, ainsi que [la signature de KergallScore](mailto:stef.kergall@gmail.com), qu'il serait sage de retirer !
>> 
>> - [composers.ily](../.utils/composers.ily) : la liste de tous les compositeurs, paroliers et harmonisateurs dont KergallScore a reproduit une partition, avec leur nom complet et leurs dates.
