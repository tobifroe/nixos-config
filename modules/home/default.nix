{inputs, username, host, ...}: {
  imports = [
    ./audacious.nix                   # music player
    ./bat.nix                         # better cat command
    ./btop.nix                        # resouces monitor 
    ./discord/discord.nix                     # discord with catppuccin theme
    ./fastfetch.nix                         # fetch tool
    ./firefox.nix		      # firefox browser
    ./foot.nix                        # foot terminal
    ./fzf.nix                         # fuzzy finder
    ./git.nix                         # version control
    ./gnome.nix                         # gnome apps
    ./gtk.nix                         # gtk theme
    ./hyprland                        # window manager
    ./kitty/kitty.nix                 # terminal
    ./swaync/swaync.nix               # notification deamon
    ./micro.nix                       # nano replacement
    ./nvim.nix                        # neovim editor
    ./packages.nix                    # other packages
    ./rofi.nix                        # launcher
    ./scripts/scripts.nix             # personal scripts
    ./spicetify.nix                   # spotify client
    ./starship.nix                    # shell prompt
    ./swaylock.nix                    # lock screen
    ./vscodium.nix                    # vscode forck
    ./waybar                          # status bar
    ./xdg-mimes.nix                   # xdg config
    ./zsh.nix                         # shell
  ];
}
