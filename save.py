from pathlib import Path
import git

REPO = git.Repo(Path(__file__).resolve().parent)

def git_status():

	fichiers_modifies = REPO.index.diff(None)
	fichiers_non_suivis = REPO.untracked_files

	if fichiers_modifies:
		print("Modifications :")
		for file in fichiers_modifies:
			print(f"\t- {file.a_path}")

	if fichiers_non_suivis:
		print("\nNouveaux fichiers :")
		for file in fichiers_non_suivis:
			print(f"\t- {file}")

	return fichiers_modifies or fichiers_non_suivis


if not git_status():
	print("Aucun changement à sauvegarder.")

else:
	REPO.index.commit("Modifications")
	REPO.git.add(".")
	REPO.index.commit("Sauvegarde")

	REPO.remote(name="origin").pull()
	REPO.remote(name="origin").push()

	print("\nSauvegarde terminée.")
