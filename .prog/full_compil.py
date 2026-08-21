#!/usr/bin/env python3
from pathlib import Path
import subprocess
HERE = Path(__file__).parent.parent.resolve()

categs = list(Path(HERE).iterdir())
print(str(categs))

for cat in [c for c in categs if c.is_dir()]:
    for score in [c for c in cat.iterdir() if c.is_dir()]:
        for file in score.iterdir():
            if file.suffix == ".ly":
                print(file)
                subprocess.run([
                    Path(HERE / ".prog/lilypond-2.26.0/bin/lilypond"),
                    "-o",
                    str(score),
                    str(file)
                ])