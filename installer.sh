#!/usr/bin/env bash
set -e

start=$(date +%s.%N)

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

sudo apt update
sudo apt install -y "${apt_list[@]}"
echo
pip install "${pip_list[@]}" --break-system-packages
echo
if [[ "$1" == "--code" ]]; then
    code --install-extension "${code_list[@]}"
    echo
fi

echo "Configuration de Git..."
git config user.name "Stéphane Kergall"
git config user.email "stef.kergall@gmail.com"
git config pull.rebase false

end=$(date +%s.%N)
elapsed=$(awk "BEGIN {print $end - $start}")
printf "Installation terminée en %.2f secondes.\n" "$elapsed"
