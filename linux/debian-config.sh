#!/bin/sh

set -e

# needed
echo "[*] Apt dependencies"
sudo apt install curl git -y

# =======================================================================================
# hyprland, hyprlock, hypridle (not working 29/04/25), rofi-wayland, wallust, gtk-themes 
# =======================================================================================
 
sh <(curl -L https://raw.githubusercontent.com/JaKooLit/Debian-Hyprland/main/auto-install.sh)

# =======================================================================================
# Personal oh-my-zsh theme
# =======================================================================================

mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
echo "fpath+=($HOME/.zsh/pure)" >> ~/.zshrc

# =======================================================================================
# Latest Vesktop
# =======================================================================================

echo "[*] Fetching latest Vesktop .deb URL..."
DEB_URL=$(curl -sL https://api.github.com/repos/Vencord/Vesktop/releases/latest \
  | grep "browser_download_url" \
  | grep ".deb" \
  | cut -d '"' -f 4)

if [ -z "$DEB_URL" ]; then
  echo "[!] Failed to find .deb package URL."
  exit 1
fi

FILENAME=$(basename "$DEB_URL")
wget -q --show-progress "$DEB_URL"

echo "[*] Installing $FILENAME..."
sudo dpkg -i "$FILENAME" || sudo apt-get install -f -y

rm "$FILENAME"

# =======================================================================================
# Vesktop theme
# =======================================================================================

curl -L https://github.com/refact0r/system24/blob/main/theme/system24.theme.css > /home/anon/.config/vesktop/system24.theme.css

# wallpaper (this one is sick as fck) 
wget -O ~/Pictures/wallpapers/debian-ascii.png https://i.postimg.cc/cLF7yDhb/debian-orbitting-ascii-16x9-500cols.png


echo done.
