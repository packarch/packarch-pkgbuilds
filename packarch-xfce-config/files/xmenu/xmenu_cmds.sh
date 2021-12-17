#!/bin/sh

xmenu <<EOF | sh &
Mise à jour									xdotool	exec xfce4-terminal && sleep 0.7 && xdotool type "sudo pacman -Syyu && yay -Syua"
Packages
	Installer un package					xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo pacman -S PKG_NAME"
	Désinstaller un package					xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo pacman -Rs PKG_NAME"
	
	Rechercher un package					xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "pacman -Ss STRING"
	Lister tous les packages installés		xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "pacman -Q"
	Lister tous les packages d'un dépot		xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "pacman -Sl REPO_NAME"
	Vider le cache de Pacman				xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo pacman -Scc"
	Reset les clés de Pacman				xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo pacman -S archlinux-keyring && sudo pacman-key --populate"
Systemd
	Démarrer un service						xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo systemctl start NOM_SERVICE"
	Activer un service						xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo systemctl enable NOM_SERVICE"
	Stopper un service						xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo systemctl stop NOM_SERVICE"
	Désactiver un service					xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo systemctl disable NOM_SERVICE"
	Redémarrer un service					xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "sudo systemctl restart NOM_SERVICE"
	
	Lister sockets en mémoire				xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "systemctl list-sockets"
	Lister unités en mémoire				xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "systemctl list-units"
	Lister timers en mémoire				xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "systemctl list-timers"
GitHub
	Config nom utilisateur					xdotool exec xfce4-terminal && sleep 0.7 && xdotool type 'git config --global user.name "John Doe"'
	Config email utilisateur				xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "git config --global user.email johndoe@example.com"
	Genérer une clé SSH						xdotool exec xfce4-terminal && sleep 0.7 && xdotool type 'ssh-keygen -t ed25519 -C "your_email@example.com"'
	Démarrer agent SSH						xdotool exec xfce4-terminal && sleep 0.7 && xdotool type 'eval "\$(ssh-agent -s)"'
	Ajouter la clé au trousseau				xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "ssh-add ~/.ssh/id_ed25519"
	Authentifier GitHub						xdotool exec xfce4-terminal && sleep 0.7 && xdotool type "ssh-keyscan github.com >> ~/.ssh/known_hosts"

Infos systéme								exec xfce4-terminal -e "zsh -c neofetch;zsh"
EOF
