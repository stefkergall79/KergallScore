[français](../README.md)
# <a href="mailto:stef.kergall@gmail.com"><img src="../.logos/KergallScore-nobackground.png" style="vertical-align: middle;" width="40px"><span style="vertical-align: middle;"><b>ergallScore</b></span></a>

> 🌐 A database of scores\
> ✉️ One request\
> 🎶 Music!

## Our products

- Do you have an **old score** photocopied six times over, patched up with LibreOffice scans?

| Before | After |
| --- | --- |
| <img src="../04-Noël/Venez%20mes%20enfants/cache/Venez_mes_enfants-old.png" width="1000px"/> | <img src="../04-Noël/Venez%20mes%20enfants/cache/Venez%20mes%20enfants.png" width="1000px"/> |

- Do you only have the **pdf** of a song and would like to hear what it sounds like?

| Before | After |
| --- | --- |
| <img src="../01-Général/Credo III/cache/et_incarnatus_est.jpg" width="1000px"/> | Et incarnatus est.midi <img src="../01-Général/Credo III/cache/et_incarnatus_est_musique.jpg" width="1000px"/> |

- Did you find a **melody** with no harmony, one that deserves better than a plain unison?

| Before | After |
| --- | --- |
| <img src="../01-Général/Noble-époux-de-Marie/cache/Noble%20époux%20de%20Marie-old.png" width="1000px"/> | <img src="../01-Général/Noble-époux-de-Marie/cache/Noble-époux-de-Marie.png" width="1000px"/> |

- **And that's not all...**

Two scores spread over 3 pages that you'd rather see on a single one [(like here)](../08-Assemblages/Jesu%20Salvator%20-%20Jesu%20Rex%20admirabilis/Jesu%20Salvator%20-%20Jesu%20Rex%20admirabilis.pdf)?\
A complete **folder** for your choir, ***table of contents included***?\
A **publisher** for your very latest composition?\
**Or why not all of it at once...**

KergallScore has solutions for you. [We're waiting for you](mailto:stef.kergall@gmail.com) Monday to Saturday.

## Specialists'place

All our source files are free: download them, modify them, tear them apart.

Our partitions are written in [lilypond](https://lilypond.org/index.html). For an error-free compilation right out of the box, copy every file from the [.utils/](../.utils/) directory into lilypond's default include folder.

- If you use the system package of `lilypond` (old version 2.24.4):
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* /usr/share/lilypond/2.24.4/ly/
```
- If you use the latest version 2.26.0 downloaded from [the website](https://lilypond.org/download.html):
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* .prog/lilypond-2.26.0/share/lilypond/2.26.0/ly/
```
- If you're on MacOS: you're loaded, a [Claude](https://claude.ai) subscription will explain the process better than any tutorial.
- If you're on Windows: our condolences, hurry up and switch to [Linux](https://linuxmint.com/edition.php?id=326).

> What does [.utils/](../.utils/) contain?
>> - [settings.ily](../.utils/settings.ily): predefined functions and variables, as well as [KergallScore's signature](mailto:stef.kergall@gmail.com), which you'd be wise to remove!
>> 
>> - [composers.ily](../.utils/composers.ily): the list of all composers, lyricists and harmonizers whose score KergallScore has reproduced, with their full name and dates.
