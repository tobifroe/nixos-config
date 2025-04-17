{ pkgs, config, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    # (nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" "NerdFontsSymbolsOnly" ]; })
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    twemoji-color-font
    noto-fonts-emoji
  ];

  catppuccin.enable = true;
  catppuccin.flavor = "macchiato";
  catppuccin.gtk.enable = true;
  catppuccin.starship.enable = true;
  catppuccin.nvim.enable = false;

  gtk = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font";
      size = 12;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme.override {
        color = "black";
      };
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
  };
}
