from pathlib import Path
import git

REPO = git.Repo(Path(__file__).resolve().parent)
print("Récupération du travail des collaborateurs...")
REPO.remote(name="origin").pull()

fichiers_modifies = REPO.index.diff(None)
fichiers_non_suivis = REPO.untracked_files
REPO.git.add(".")

if fichiers_modifies:
	print("Modifications :")
	for file in fichiers_modifies:
		print(f"\t- {file.a_path}")
	REPO.index.commit("Modifications")

if fichiers_non_suivis:
	print("\nNouveaux fichiers :")
	for file in fichiers_non_suivis:
		print(f"\t- {file}")
	REPO.index.commit("Sauvegarde")

if not fichiers_modifies and not fichiers_non_suivis:
	print("Aucun changement à sauvegarder.")

else:
	print("\nExportation...")
	REPO.remote(name="origin").push()
	print("\nSauvegarde terminée.")
