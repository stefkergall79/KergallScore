import time
start = time.time()
import os
import sys
os.system("sudo -v")

def install_package(package_manager: str, package_name: str):
    source = packages[package_manager]
    print(f"Installation de {package_name}...", end=" ", flush=True)
    os.system(source["command"].format(source["apps"][package_name]))
    print("Terminé.")


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
            "GABC": "AISCGre-BR.vscode-gregorio",
            "PDF pour Lilypond": "lhl2617.lilypond-pdf-preview",
            "Extension Lilypond": "bncummings.lytex-language-pack",
            "Python": "ms-python.python"
        }
    }

for depot in packages:
    print(f"Installation pour {depot}")
    if packages[depot]["init"]:
        print(f"Initialisation du dépôt...")
        os.system(packages[depot]["init"])
        print("Terminé.")

    for package in packages[depot]["apps"]:
        install_package(depot, package)

    print("\n")

print("Configuration de Git...", end=" ", flush=True)
import git
git_config = git.Git().config
git_config("user.name", "Stéphane Kergall")
git_config("user.email", "stef.kergall@gmail.com")
git_config("pull.rebase", "false")
print("Terminé.\n")

print("Installation terminée en {:.2f} secondes.".format(time.time() - start))