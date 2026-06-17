import time
start = time.time()
import os
import apt
os.system("sudo -v")

def install_package(package_manager: str, package_name: str):
    source = packages[package_manager]
    print(f"Installation de {package_name}...", end=" ", flush=True)
    os.system(source["command"].format(source["apps"][package_name]))
    print("Terminé.")


packages = {
    "apt": {
        "init": "sudo apt-get update -qq ",
        "command": "sudo apt-get install -qq {} -y",
        "apps": {
            "pip": "pip",
            "Tkinter": "python3-tk"
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
 
for depot in packages:
    if packages[depot]["init"]:
        print(f"Initialisation de {depot}...", end=" ", flush=True)
        os.system(packages[depot]["init"])
        print("Terminé.")

    for package in packages[depot]["apps"]:
        install_package(depot, package)

print("Configuration de Git...", end=" ", flush=True)
import git
git_config = git.Git().config
git_config("user.name", "Stéphane Kergall")
git_config("user.email", "stef.kergall@gmail.com")
git_config("pull.rebase", "false")
print("Terminé.")

print("Installation terminée en {:.2f} secondes.".format(time.time() - start))