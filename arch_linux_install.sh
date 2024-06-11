sudo pacman -Syu
sudo pacman -S git hyprland waybar rio sddm micro dunst alacritty bat zsh python3 rofi
cp my_home/.bashrc $HOME/.bashrc
cp my_home/.colors $HOME/.colors
cp my_home/.zshrc $HOME/.zshrc
cd my_home/.config
cp -r waybar $HOME/.config
cp -r rio $HOME/.config
cp -r hypr $HOME/.config
cd /usr/share
sudo git clone https://github.com/zsh-users/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo git clone https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git
sudo git clone https://github.com/agkozak/zsh-z.git
sudo git clone https://github.com/zsh-users/zsh-history-substring-search.git
sudo reboot
