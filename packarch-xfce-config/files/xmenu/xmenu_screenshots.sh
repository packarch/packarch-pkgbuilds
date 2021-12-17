#!/bin/sh

xmenu <<EOF | sh &
Ecran entier							xfce4-screenshooter -f
Ecran entier 5s							xfce4-screenshooter -f -d 5
Ecran entier 10s						xfce4-screenshooter -f -d 10
Région séléctionnée						xfce4-screenshooter -r
Fenêtre séléctionnée dans 5s			xfce4-screenshooter -w -d 5
EOF
