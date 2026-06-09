import os
os.system("sudo apt update && sudo apt install pip python3-tk -y")
os.system("pip install gitpython customtkinter --break-system-packages")
import git
git_config = git.Git().config
git_config("user.name", "Stéphane Kergall")
git_config("user.email", "stef.kergall@gmail.com")
