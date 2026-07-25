#!/usr/bin/env bash
set -e

start=$(date +%s.%N)
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

apt_list=(
    "timidity"
    "frescobaldi"
    "python3-pip"
    "python3-tk"
)
pip_list=(
    "customtkinter"
    "gitpython"
)
code_list=(
    "AISCGre-BR.vscode-gregorio"
    "lhl2617.VSLilyPond"
    "ms-python.python"
)

# apt
sudo apt update
sudo apt install -y "${apt_list[@]}"
# lilypond désinstallé car téléchargé depuis le site officiel pour avoir la dernière version
sudo apt remove lilypond -y && sudo apt autoremove -y
echo

# pip
python3 -m pip install "${pip_list[@]}" --break-system-packages
echo

# code
if [[ "$1" == "--code" ]]; then
    for ext in "${code_list[@]}"; do
        code --install-extension "$ext"
    done
    echo
fi

# lilypond web
cd ${HERE}
curl -L -O "https://gitlab.com/lilypond/lilypond/-/releases/v2.26.0/downloads/lilypond-2.26.0-linux-x86_64.tar.gz"
tar -xzf lilypond-2.26.0-linux-x86_64.tar.gz -C .
rm lilypond-2.26.0-linux-x86_64.tar.gz
cp "${HERE}/settings.ily" lilypond-2.26.0/share/lilypond/2.26.0/ly/
echo "alias lilypond='${HERE}/lilypond-2.26.0/bin/lilypond'" >> ~/.bashrc

# Git
echo "Configuration de Git..."
git config --global user.name "Stéphane Kergall"
git config --global user.email "stef.kergall@gmail.com"
git config --global pull.rebase false

# Fin
echo "Installation terminée en $(echo "$(date +%s.%N) - $start" | bc) secondes."
