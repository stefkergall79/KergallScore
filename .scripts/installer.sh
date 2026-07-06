#!/usr/bin/env bash
set -e

start=$(date +%s.%N)
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")"

apt_list=(
    "timidity"
    "pip"
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

#apt
sudo apt update
sudo apt install -y "${apt_list[@]}"
echo

#pip
pip install "${pip_list[@]}" --break-system-packages
echo

#code
if [[ "$1" == "--code" ]]; then
    code --install-extension "${code_list[@]}"
    echo
fi

#lilypond web
curl -L -O "https://gitlab.com/lilypond/lilypond/-/releases/v2.26.0/downloads/lilypond-2.26.0-linux-x86_64.tar.gz"
sudo tar -xzf lilypond-2.26.0-linux-x86_64.tar.gz -C /opt/
cp "${HERE}/settings.ily" /opt/lilypond-2.26.0/share/lilypond/2.26.0/ly/

#Git
echo "Configuration de Git..."
git config user.name "Stéphane Kergall"
git config user.email "stef.kergall@gmail.com"
git config pull.rebase false

#Fin
end=$(date +%s.%N)
elapsed=$(awk "BEGIN {print $end - $start}")
printf "Installation terminée en %.2f secondes.\n" "$elapsed"
