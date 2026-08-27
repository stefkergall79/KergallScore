[english](.doc/README_en.md)
# <a href="mailto:stef.kergall@gmail.com"><img src=".logos/KergallScore-nobackground.png" style="vertical-align: middle;" width="40px"><span style="vertical-align: middle;"><b>ergallScore</b></span></a>

> 🌐 Une base de données de partitions\
> ✉️ Une commande\
> 🎶 De la musique !

## Nos produits

- Vous voulez relooker une **vieille partition** photocopiée six fois, montée à coups de scans sur LibreOffice ?

| Avant | Après |
| --- | --- |
| <img src="04-Noël/Venez%20mes%20enfants/cache/Venez_mes_enfants-old.png" width="1000px"/> | <img src="04-Noël/Venez%20mes%20enfants/cache/Venez%20mes%20enfants.png" width="1000px"/> |

- Vous n'avez que le **pdf** d'un chant et vous aimeriez entendre à quoi il ressemble ?

| Avant | Après |
| --- | --- |
| <img src="01-Général/Credo III/cache/et_incarnatus_est.jpg" width="1000px"/> | Et incarnatus est.midi <img src="01-Général/Credo III/cache/et_incarnatus_est_musique.jpg" width="800px"/> |

- Vous avez déniché une **mélodie** sans harmonisation, et elle mérite mieux qu'un unisson ?

| Avant | Après |
| --- | --- |
| <img src="01-Général/Noble-époux-de-Marie/cache/Noble%20époux%20de%20Marie-old.png" width="1000px"/> | <img src="01-Général/Noble-époux-de-Marie/cache/Noble-époux-de-Marie.png" width="1000px"/> |

- **Et ce n'est pas tout...**

Deux partitions étalées sur 3 pages que vous verriez bien sur une seule [(comme ici)](08-Assemblages/Jesu%20Salvator%20-%20Jesu%20Rex%20admirabilis/Jesu%20Salvator%20-%20Jesu%20Rex%20admirabilis.pdf) ?\
Un **dossier complet** pour votre chorale, ***table des matières comprise*** ?\
Un **éditeur** pour votre toute dernière composition ?\
**Et pourquoi pas tout à la fois...**

KergallScore vous propose des solutions. [Nous attendons vos commandes](mailto:stef.kergall@gmail.com) du lundi au samedi !

## Pour les spécialistes

Tous nos fichiers sources sont libres : téléchargez-les, modifiez-les, mettez-les en charpie.

Les partitions sont écrites en [lilypond](https://lilypond.org). Pour une compilation sans erreur dès le premier essai, copiez tous les fichiers du répertoire [.utils/](.utils/) dans le dossier d'inclusion par défaut de lilypond.

- Si vous utilisez le paquet système de `lilypond` (vieille version 2.24.4) :
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* /usr/share/lilypond/2.24.4/ly/
```
- Si vous utilisez la dernière version 2.26.0 téléchargée sur [le site web](https://lilypond.org/download.fr.html) :
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* .prog/lilypond-2.26.0/share/lilypond/2.26.0/ly/
```
- Si vous êtes sous MacOS : vous êtes riche, un abonnement [Claude](https://claude.ai) vous expliquera mieux que n'importe quel tutoriel le processus.
- Si vous êtes sous Windows : pauvre de vous, passez vite sous [Linux](https://linuxmint.com/edition.php?id=326).

> Que contient ce fameux [.utils/](.utils/) ?
>> - [settings.ily](.utils/settings.ily) : des fonctions et des variables prédéfinies, ainsi que la [signature de KergallScore](mailto:stef.kergall@gmail.com) que vous avez intérêt à enlever !
>> 
>> - [composers.ily](.utils/composers.ily) : la liste de tous les compositeurs, paroliers et harmonisateurs dont KergallScore a reproduit une partition, avec leur nom complet et leurs dates.
