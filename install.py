from os import system
system("sudo apt update && sudo apt install pip")
system("pip install gitpython --break-system-packages")
import git
git_config = git.Git().config
git_config("user.name", "Stéphane Kergall")
git_config("user.email", "stef.kergall@gmail.com")
