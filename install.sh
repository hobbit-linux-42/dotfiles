#!/bin/bash
pacman -S hyprland waybar yay rio
yay -S colorscript paru
for i in $(find my_home)
do
	cp "$i" "/home/$USR/$i"
done
