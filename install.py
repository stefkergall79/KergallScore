import os

apt = {
    "pip": "Installateur de modules Python Pip",
    "python3-tk": "Module d'interface graphique Tkinter"
}
first_package_apt = True


pip = {
    "gitpython": "Module d'interface Git pour Python",
    "customtkinter": "Module de relooking de l'interface graphique CustomTkinter"
}

for package in apt:
    pass

os.system("sudo apt update && sudo apt install pip python3-tk -y")
os.system("pip install gitpython customtkinter --break-system-packages")
import git
git_config = git.Git().config
git_config("user.name", "Stéphane Kergall")
git_config("user.email", "stef.kergall@gmail.com")
