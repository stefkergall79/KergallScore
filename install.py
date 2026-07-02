import time
start = time.time()
import os
import sys
os.system("sudo -v")

def install_package(package_manager: str, package_name: str):
    source = packages[package_manager]
    print(f"Installation de {package_name}...")
    os.system(source["command"].format(source["apps"][package_name]))


packages = {
    "apt": {
        "init": "sudo apt-get update",
        "command": "sudo apt-get install -qq {} -y",
        "apps": {
            "Lecteur midi": "timidity",
            "pip": "pip",
            "TKinter": "python3-tk"
        }
    },
    "pip": {
        "init": None,
        "command": "pip install -q {} --break-system-packages",
        "apps": {
            "CustomTkinter": "customtkinter",
            "GitPython": "gitpython"
        }
    }
}

if "--code" in sys.argv:
    packages["code"] = {
        "init": None,
        "command": "code --install-extension {} >/dev/null 2>&1",
        "apps": {
            "Extension GABC": "AISCGre-BR.vscode-gregorio",
            "Extension Lilypond": "lhl2617.VSLilyPond",
            "Extension Python": "ms-python.python",
            "Extension LaTeX": "James-Yu.latex-workshop"
        }
    }

for depot in packages:
    if packages[depot]["init"]:
        print(f"Initialisation de {depot}...")
        os.system(packages[depot]["init"])
        print("\n")

    for package in packages[depot]["apps"]:
        install_package(depot, package)

print("Configuration de Git...")
import git
git_config = git.Git().config
git_config("user.name", "Stéphane Kergall")
git_config("user.email", "stef.kergall@gmail.com")
git_config("pull.rebase", "false")

print("Installation terminée en {:.2f} secondes.".format(time.time() - start))