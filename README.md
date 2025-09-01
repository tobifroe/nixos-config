<h1 align="center">
   <img src="./.github/assets/logo/nixos-logo.png" width="100px" /> 
   <br>
      NixOS Laptop Config
   <br>
</h1>

# 🗃️ Overview

This repository contains a modular, flake-based NixOS configuration focused on a **Wayland/Hyprland** laptop environment, managed with [Home-Manager](https://github.com/nix-community/home-manager). It includes a curated set of packages, custom scripts, and a modern, themed desktop experience.

---

## 📚 Layout

- [`flake.nix`](flake.nix): Flake entrypoint and input management
- [`hosts/laptop`](hosts/laptop): Laptop-specific system configuration
- [`modules/core`](modules/core): Core NixOS modules (hardware, bootloader, network, security, virtualization, etc.)
- [`modules/home`](modules/home): Home-Manager modules (apps, shell, scripts, theming, etc.)
- [`wallpapers`](wallpapers): Wallpaper collection

---

## 🖥️ Main Features

- **Wayland/Hyprland** window manager (with XWayland for compatibility)
- **Waybar** status bar
- **Rofi** application launcher
- **SwayNC** notification daemon
- **Alacritty** terminal
- **Zsh** shell with [Starship](https://starship.rs/) prompt
- **Neovim** as the main text editor
- **NetworkManager** for networking
- **Btop** for system monitoring
- **Nautilus** and **Yazi** for file management
- **Eldritch** theming (GTK, Waybar, etc.)
- **Nerd Fonts** for coding and UI
- **Bibata-Modern-Ice** cursor, **Papirus-Dark** icons
- **Swaylock** and **Hyprlock** for lockscreen
- **qView** for images, **mpv** for video, **audacious** for music
- **Grimblast** for screenshots, **wf-recorder** for screen recording
- **wl-clip-persist** for clipboard, **hyprpicker** for color picking
- **Extensive CLI/GUI package set** (see [`modules/home/packages.nix`](modules/home/packages.nix))
- **Custom scripts** for workflow automation (see below)

---

## 🛠️ Custom Scripts

All scripts are in [`modules/home/scripts/scripts/`](modules/home/scripts/scripts/) and are exported as packages in [`modules/home/scripts/scripts.nix`](modules/home/scripts/scripts.nix).

Some highlights:

- `extract`: Extract `tar.gz` archives
- `compress`: Compress files/folders to `tar.gz`
- `toggle_blur`: Toggle Hyprland blur effect
- `toggle_oppacity`: Toggle Hyprland opacity
- `maxfetch`: Custom system fetch
- `music`: Manage Audacious player
- `runbg`: Run commands detached from terminal
- `wallpaper-picker`: Interactive wallpaper switcher
- `power-menu`, `rofi-power-menu`: Power management menus
- `vm-start`: Start a VM
- ...and more!

---

## ⌨️ Keybinds & Shortcuts

- View all keybinds: <kbd>SUPER</kbd> + <kbd>F1</kbd>
- Wallpaper picker: <kbd>SUPER</kbd> + <kbd>W</kbd>
- Main mod key: <kbd>SUPER</kbd>

Keybinds are defined in the Hyprland config and include workspace switching, launching apps, screenshots, media controls, and more. See [`modules/home/hyprland/config.nix`](modules/home/hyprland/config.nix) for the full list.

---

## 📝 Shell Aliases

A rich set of Zsh aliases is provided for:

- Utilities (`cat` → `bat`, `cd` → `z`, etc.)
- NixOS management (`nix-switch`, `nix-update`, etc.)
- Git workflows (`g`, `gs`, `gc`, etc.)

See [`modules/home/zsh.nix`](modules/home/zsh.nix) for the full list.

---

## 🚀 Installation

> **Warning:**
> This configuration is tailored for a single laptop host. Review and adapt as needed before use. Use at your own risk!

### 1. Install NixOS

Install NixOS using the [official ISO](https://nixos.org/download.html#nixos-iso). The config is tested with the Gnome graphical installer, "No desktop" option.

### 2. Clone the Repo

```bash
nix-shell -p git
git clone https://github.com/tobifroe/nixos-config
cd nixos-config
```

### 3. Run the Install Script

```bash
./install.sh
```

- Prompts for your username
- Sets up the laptop host
- Copies wallpapers
- Copies your hardware config
- Builds and applies the system

### 4. Reboot

After reboot, the config should be active. Log in and enjoy your Hyprland desktop!

### 5. Manual Steps

- Change your Git user info in [`modules/home/git.nix`](modules/home/git.nix)
- (Optional) Enable Discord themes in Discord settings
- (Optional) Configure browser extensions/settings as desired

---

## 🧩 Customization

- Add or remove packages in [`modules/home/packages.nix`](modules/home/packages.nix)
- Add scripts to [`modules/home/scripts/scripts/`](modules/home/scripts/scripts/)
- Tweak theming in the relevant modules (GTK, Waybar, etc.)
- Adjust Hyprland settings in [`modules/home/hyprland/config.nix`](modules/home/hyprland/config.nix)

---

## 👥 Credits

Based on [Frost-Phoenix nixos-config](https://github.com/Frost-Phoenix/nixos-config) and many community resources.

---

<!-- Links -->

[Hyprland]: https://github.com/hyprwm/Hyprland
[Kitty]: https://github.com/kovidgoyal/kitty
[Starship]: https://github.com/starship/starship
[Waybar]: https://github.com/Alexays/Waybar
[rofi]: https://github.com/lbonn/rofi
[Btop]: https://github.com/aristocratos/btop
[nautilus]: https://apps.gnome.org/Nautilus/
[yazi]: https://github.com/sxyazi/yazi
[zsh]: https://ohmyz.sh/
[oh-my-zsh]: https://ohmyz.sh/
[Swaylock-effects]: https://github.com/mortie/swaylock-effects
[Hyprlock]: https://github.com/hyprwm/hyprlock
[audacious]: https://audacious-media-player.org/
[mpv]: https://github.com/mpv-player/mpv
[Neovim]: https://github.com/neovim/neovim
[grimblast]: https://github.com/hyprwm/contrib
[qview]: https://interversehq.com/qview/
[swaync]: https://github.com/ErikReider/SwayNotificationCenter
[Nerd fonts]: https://github.com/ryanoasis/nerd-fonts
[NetworkManager]: https://wiki.gnome.org/Projects/NetworkManager
[wl-clip-persist]: https://github.com/Linus789/wl-clip-persist
[wf-recorder]: https://github.com/ammen99/wf-recorder
[hyprpicker]: https://github.com/hyprwm/hyprpicker
[Catppuccin]: https://github.com/catppuccin/catppuccin
[Papirus-Dark]: https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
[Bibata-Modern-Ice]: https://www.gnome-look.org/p/1197198
