echo "Installing yay"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "Installing packages"
sudo pacman -S kitty neovim fastfetch ttf-sourcecodepro-nerd hyprland waybar hyprpaper

yay hyprpolkitagent

echo "Installing zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s $(which zsh)
