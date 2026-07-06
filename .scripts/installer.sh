#!/usr/bin/env bash
set -e

start=$(date +%s.%N)
# CORRECTION : Ajout de la parenthèse fermante manquante
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

apt_list=(
    "timidity"
    "python3-pip" # CORRECTION : Le paquet apt officiel est python3-pip, pas juste pip
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
echo "Mise à jour et installation des paquets système..."
sudo apt update
sudo apt install -y "${apt_list[@]}"
echo

# pip
echo "Installation des paquets Python..."
# OPTIMISATION : Utilisation de python3 -m pip (plus robuste)
python3 -m pip install "${pip_list[@]}" --break-system-packages
echo

# code
if [[ "$1" == "--code" ]]; then
    echo "Installation des extensions VS Code..."
    # OPTIMISATION : VS Code n'accepte pas toujours les tableaux d'un coup, boucle sécurisée
    for ext in "${code_list[@]}"; do
        code --install-extension "$ext"
    done
    echo
fi

# lilypond web
echo "Téléchargement et installation de LilyPond..."
# OPTIMISATION : On télécharge dans /tmp pour ne pas polluer le dossier courant
cd /tmp
curl -L -O "https://gitlab.com/lilypond/lilypond/-/releases/v2.26.0/downloads/lilypond-2.26.0-linux-x86_64.tar.gz"
sudo tar -xzf lilypond-2.26.0-linux-x86_64.tar.gz -C /opt/

echo "Copie du fichier de configuration LilyPond..."
# CORRECTION : Ajout de sudo car le dossier /opt/ appartient à root
sudo cp "${HERE}/settings.ily" /opt/lilypond-2.26.0/share/lilypond/2.26.0/ly/

# Git
echo "Configuration de Git..."
git config --global user.name "Stéphane Kergall"
git config --global user.email "stef.kergall@gmail.com"
git config --global pull.rebase false

# Fin
end=$(date +%s.%N)
elapsed=$(awk "BEGIN {print $end - $start}")
printf "Installation terminée en %.2f secondes.\n" "$elapsed"