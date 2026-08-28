# KergallScore Edition

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
