from pathlib import Path
import subprocess
HERE = Path(__file__).parent.resolve()

for cat in (
    "Carême-Pâques",
    "Général",
    "Noël",
    "Piano",
    "Profane",
    "X_Autres",
    "y_Assemblages",
    "z_Commandes"
):
    for score in Path(HERE / cat).iterdir():
        for file in score.iterdir():
            if file.suffix == ".ly":
                print(file)
                subprocess.run([
                    Path(HERE / ".prog/lilypond-2.26.0/bin/lilypond"),
                    "-o",
                    str(score),
                    str(file)
                ])