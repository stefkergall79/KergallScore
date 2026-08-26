[français](../README.md)
# <a href="mailto:stef.kergall@gmail.com"><img src="../.logos/KergallScore-nobackground.png" style="vertical-align: middle;" width="40px"><span style="vertical-align: middle;"><b>ergallScore</b></span></a>

> 🌐 A music database<br>
> ✉️ Your requests<br>
> 🎶 Music!

## Enjoy KergallScore's services
Would you like to...

- **Revamp** an old score, photocopied many times, cobbled together with scans in LibreOffice?

| Before | After |
| --- | --- |
| <img src="../04-Noël/Venez%20mes%20enfants/cache/Venez_mes_enfants-old.png" width="1000px"/> | <img src="../04-Noël/Venez%20mes%20enfants/cache/Venez%20mes%20enfants.png" width="1000px"/> |

- **Listen** to what a song would sound like when all you have is the pdf?

| Before | After |
| --- | --- |
| <img src="../01-Général/Credo III/cache/et_incarnatus_est.jpg" width="1000px"/> | Et incarnatus est.midi <img src="../01-Général/Credo III/cache/et_incarnatus_est_musique.jpg" width="1000px"/> |

- **Harmonize** a melody found by chance?

| Before | After |
| --- | --- |
| <img src="../01-Général/Noble-époux-de-Marie/cache/Noble%20époux%20de%20Marie-old.png" width="1000px"/> | <img src="../01-Général/Noble-époux-de-Marie/cache/Noble-époux-de-Marie.png" width="1000px"/> |

- **Or even...**

Would you like to **gather** onto a single sheet a song you have spread over 6 pages [(like here)](../08-Assemblages/Jesu%20Salvator%20-%20Jesu%20Rex%20admirabilis/Jesu%20Salvator%20-%20Jesu%20Rex%20admirabilis.pdf)?\
Do you need a complete **folder** for your choir, ***with a table of contents***?\
Are you looking for a **publisher** for your latest composition?\
**Or even all of that at once...**

KergallScore has solutions for you. [Send an email](mailto:stef.kergall@gmail.com) to enjoy these scores as soon as possible!


## Get our source files

You are free to download and modify all the source files as you wish. For an as-is compilation without errors, all files from the [.utils/](../.utils/) directory must be copied into lilypond's default include folder.

- If you use the system package of `lilypond` (old version 2.24.4):
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* /usr/share/lilypond/2.24.4/ly/
```
- If you use the latest version 2.26.0 downloaded from [the website](https://lilypond.org/download.fr.html):
```bash
ks@pc-ks:~/KergallScore
$ cp .utils/* .prog/lilypond-2.26.0/share/lilypond/2.26.0/ly/
```

> What does [.utils/](../.utils/) contain?
>> - [settings.ily](../.utils/settings.ily): predefined functions and variables, as well as [KergallScore's signature](mailto:stef.kergall@gmail.com), which you should remove!
>> 
>> - [composers.ily](../.utils/composers.ily): the list of all composers, lyricists and harmonizers whose score KergallScore has reproduced, with their full name and dates.
