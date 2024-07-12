
#packages
pkgs="git hyprland waybar rio sddm micro dunst alacritty bat zsh python3 rofi neovim"
sudo pacman -Syu
sudo pacman -S $pkgs

#home
cp my_home/.bashrc $HOME/.bashrc
cp my_home/.colors $HOME/.colors
cp my_home/.zshrc $HOME/.zshrc
touch $HOME/.history

#rofi
cp -r my_home/.local/share/rofi $HOME/.local/share/

#configs
cd my_home/.config
cp -r waybar $HOME/.config
cp -r rio $HOME/.config
cp -r hypr $HOME/.config  
cp -r nvim $HOME/.config
cp -r sakura $HOME/.config

#zsh
cd /usr/share
sudo git clone https://github.com/zsh-users/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo git clone https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git
sudo git clone https://github.com/agkozak/zsh-z.git
sudo git clone https://github.com/zsh-users/zsh-history-substring-search.git
sudo chsh $USER -s /bin/zsh

#reboot
sudo systemctl enable sddm.service
sudo reboot
