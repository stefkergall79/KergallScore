import time
start = time.time()
import os
os.system("sudo -v")

print("Mise à jour du cache...", end=" ", flush=True)
os.system("sudo DEBIAN_FRONTEND=noninteractive apt-get update -qq > /dev/null 2>&1")
print("Terminé.")

print("Installation de pip...", end=" ", flush=True)
os.system("sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq pip -y")
print("Terminé.")

print("Installation de tkinter...", end=" ", flush=True)
os.system("sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq python3-tk -y")
print("Terminé.")

print("Installation de customtkinter...", end=" ", flush=True)
os.system("pip install -q customtkinter --break-system-packages > /dev/null 2>&1")
print("Terminé.")

print("Installation de GitPython...", end=" ", flush=True)
os.system("pip install -q gitpython --break-system-packages > /dev/null 2>&1")
print("Terminé.")

print("Configuration de Git...", end=" ", flush=True)
import git
git_config = git.Git().config
git_config("user.name", "Stéphane Kergall")
git_config("user.email", "stef.kergall@gmail.com")
git_config("pull.rebase", "false")
print("Terminé.")

print("Installation terminée en {:.2f} secondes.".format(time.time() - start))