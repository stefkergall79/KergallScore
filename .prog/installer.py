#!/usr/bin/env python3
import time
start = time.monotonic()
import subprocess
import urllib.request
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent.parent
PROG_DIR = ROOT_DIR / ".prog"

APT_LIST = ["timidity", "frescobaldi", "python3-pip", "python3-tk"]
PIP_LIST = ["customtkinter", "gitpython"]

LILYPOND_URL = "https://gitlab.com/lilypond/lilypond/-/releases/v2.26.0/downloads/lilypond-2.26.0-linux-x86_64.tar.gz"
MUSESCORE_URL = "https://cdn.jsdelivr.net/musescore/v4.7.4/MuseScore-Studio-4.7.4.260706075-x86_64.AppImage"
OBSIDIAN_URL = "https://github.com/obsidianmd/obsidian-releases/releases/download/v1.13.7/Obsidian-1.13.7.AppImage"


def run(*args):
    subprocess.run(args, check=True)


def download(url: str, destination: Path):
    def report_progress(block_count, block_size, total_size):
        downloaded = block_count * block_size
        percent = min(downloaded * 100 // total_size, 100) if total_size > 0 else 0
        print(f"\r{destination.name} : {percent}%", end="", flush=True)

    urllib.request.urlretrieve(url, destination, reporthook=report_progress)
    print()


def is_apt_installed(package: str) -> bool:
    return subprocess.run(["dpkg", "-s", package], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL).returncode == 0


def is_pip_installed(package: str) -> bool:
    return subprocess.run(["python3", "-m", "pip", "show", package], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL).returncode == 0


# apt
new_apt_packages = [pkg for pkg in APT_LIST if not is_apt_installed(pkg)]
run("sudo", "apt", "update")
run("sudo", "apt", "install", "-y", *APT_LIST)
# lilypond désinstallé car téléchargé depuis le site officiel pour avoir la dernière version
run("sudo", "apt", "remove", "lilypond", "-y")
run("sudo", "apt", "autoremove", "-y")
print()

# pip
new_pip_packages = [pkg for pkg in PIP_LIST if not is_pip_installed(pkg)]
run("python3", "-m", "pip", "install", *PIP_LIST, "--break-system-packages")
print()

# uninstaller : ne retire que ce que cet installeur a réellement ajouté
UNINSTALLER_TEMPLATE = '''#!/usr/bin/env python3
import shutil
import subprocess
from pathlib import Path

ROOT_DIR = Path(__file__).resolve().parent.parent

APT_PACKAGES = {apt_packages}
PIP_PACKAGES = {pip_packages}

def run(*args):
    subprocess.run(args, check=True)


if APT_PACKAGES:
    run("sudo", "apt", "remove", "-y", *APT_PACKAGES)
    run("sudo", "apt", "autoremove", "-y")

if PIP_PACKAGES:
    run("python3", "-m", "pip", "uninstall", "-y", *PIP_PACKAGES, "--break-system-packages")

if input("Supprimer définitivement '" + str(ROOT_DIR) + "' ? (o/N) ").strip().lower() == "o":
    shutil.rmtree(ROOT_DIR)
'''

(PROG_DIR / "uninstaller.py").write_text(UNINSTALLER_TEMPLATE.format(
    apt_packages=new_apt_packages,
    pip_packages=new_pip_packages,
    new_flatpak_code=new_flatpak_code,
))

# lilypond web
lilypond_archive = PROG_DIR / "lilypond-2.26.0-linux-x86_64.tar.gz"
download(LILYPOND_URL, lilypond_archive)
run("tar", "-xzf", str(lilypond_archive), "-C", str(PROG_DIR))
lilypond_archive.unlink()
lilypond_ly_dir = PROG_DIR / "lilypond-2.26.0" / "share" / "lilypond" / "2.26.0" / "ly"
for util_file in (ROOT_DIR / ".utils").iterdir():
    run("cp", str(util_file), str(lilypond_ly_dir))
lilypond_alias = f"alias lilypond='{PROG_DIR / 'lilypond-2.26.0' / 'bin' / 'lilypond'}'\n"
bashrc_path = Path.home() / ".bashrc"
if lilypond_alias not in bashrc_path.read_text():
    with open(bashrc_path, "a") as bashrc:
        bashrc.write(lilypond_alias)

# Musescore, Obsidian
download(MUSESCORE_URL, PROG_DIR / "MuseScore-Studio-4.7.4.260706075-x86_64.AppImage")
download(OBSIDIAN_URL, PROG_DIR / "Obsidian-1.13.7.AppImage")
print()
for appimage in PROG_DIR.glob("*.AppImage"):
    appimage.chmod(appimage.stat().st_mode | 0o111)

# Git
print("Configuration de Git...")
run("git", "config", "--global", "user.name", "Stéphane Kergall")
run("git", "config", "--global", "user.email", "stef.kergall@gmail.com")
run("git", "config", "--global", "pull.rebase", "false")

# Fin
print(f"Installation terminée en {time.monotonic() - start:.2f} secondes.")
