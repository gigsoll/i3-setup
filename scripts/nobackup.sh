#!/usr/bin/bash

mkdir ~/BACKUP
mkdir ~/BACKUP/.config/

# Задаємо змінні
alacritty=$(ls $HOME/.config/ | grep alacritty)
bashtop=$(ls $HOME/.config/ | grep bashtop)
cava=$(ls $HOME/.config/ | grep cava)
fish=$(ls $HOME/.config/ | grep fish)
flameshot=$(ls $HOME/.config/ | grep flameshot)
i3=$(ls $HOME/.config/ | grep i3)
neofetch=$(ls $HOME/.config/ | grep neofetch)
nitrogen=$(ls $HOME/.config/ | grep nitrogen)
omf=$(ls $HOME/.config/ | grep omf)
polybar=$(ls $HOME/.config/ | grep polybar)
spicetify=$(ls $HOME/.config/ | grep spicetify)
spotify=$(ls $HOME/.config/ | grep spotify)
touchegg=$(ls $HOME/.config/ | grep touchegg)
wallpaper=$(ls $HOME/.config/ | grep wallpaper)


# Фільруємо
if [[ $alacritty == alacritty ]]; then
	rm -rf $HOME/.config/alacritty
fi

if [[ $bashtop == bashtop ]]; then
	rm -rf $HOME/.config/bashtop
fi

if [[ $cava == cava ]]; then
	rm -rf $HOME/.config/cava
fi

if [[ $fish == fish ]]; then
	rm -rf $HOME/.config/fish
fi

if [[ $flameshot == flameshot ]]; then
	rm -rf $HOME/.config/fish
fi

if [[ $i3 == i3 ]]; then
	rm -rf $HOME/.config/i3
fi

if [[ $neofetch == neofetch ]]; then
	rm -rf $HOME/.config/neofetch
fi

if [[ $nitrogen == nirogen ]]; then
	rm -rf $HOME/.config/nirogen
fi

if [[ $omf == omf ]]; then
	rm -rf $HOME/.config/omf
fi

if [[ $polybar == polybar ]]; then
	rm -rf $HOME/.config/polybar
fi

if [[ $spicetify == spicetify ]]; then
	rm -rf $HOME/.config/spicetify
fi

if [[ $spotify == spotify ]]; then 
	rm -rf $HOME/.config/spotify
fi

if [[ $touchegg == touchegg ]]; then
	rm -rf $HOME/.config/touchegg
fi

if [[ $wallpaper == wallpaper ]]; then
	rm -rf $HOME/.config/wallpaper
fi

rm .vimrc 
echo "Done"

