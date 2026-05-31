from pathlib import Path
import customtkinter as ctk
import git
import tkinter as tkt

app = ctk.CTk()
app.title("Sauvegarder Lilypond")
app.geometry("300x200")

REPO = git.Repo(Path(__file__).resolve().parent)

def ctk_git_label(text, title=False):
	font = ctk.CTkFont(family="Arial", size=16, weight="bold" if title else "normal")
	label = ctk.CTkLabel(liste_fichiers, text=text, font=font, anchor="w")
	label.pack(fill="x")
	app.update_idletasks()


def ctk_git_status():
	for widget in liste_fichiers.winfo_children():
		widget.destroy()
	app.update_idletasks()

	fichiers_modifies = REPO.index.diff(None)
	fichiers_non_suivis = REPO.untracked_files
	
	if fichiers_modifies:
		ctk_git_label("Fichiers modifiés :", title=True)
		for file in fichiers_modifies:
			ctk_git_label(f"\t- {file.a_path}")
	
	if fichiers_non_suivis:
		ctk_git_label("\nNouveaux fichiers :", title=True)
		for file in fichiers_non_suivis:
			ctk_git_label(f"\t- {file}")

	if not fichiers_modifies and not fichiers_non_suivis:
		ctk_git_label("Aucun changement à sauvegarder.", title=True)
		return False

	return True

def ly_save():
	if not ctk_git_status():
		return

	REPO.index.commit("Modifications")
	REPO.git.add(".")
	REPO.index.commit("Sauvegarde")
	
	try:
		REPO.remote(name="origin").pull()
		REPO.remote(name="origin").push()
	
	except git.exc.GitCommandError as e:
		tkt.messagebox.showwarning("Erreur de Git", str(e))
		return
	
	ctk_git_label("\nSauvegarde terminée.", title=True)

 
btn_save = ctk.CTkButton(app, text="Sauvegarder", command=ly_save)
btn_save.pack(pady=10)
liste_fichiers = ctk.CTkScrollableFrame(app)
liste_fichiers.pack(pady=10, fill="both", expand=True)

app.mainloop()
