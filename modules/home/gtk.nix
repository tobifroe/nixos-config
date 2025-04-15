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

  gtk = {
    enable = true;
    font = {
      name = "FiraCode Nerd Font";
      size = 12;
    };
    theme = {
      name = "catppuccin-macchiato-mauve-compact+default";
      package = pkgs.catppuccin-gtk.override
      {
        accents = [ "mauve" ];
        variant = "macchiato";
        size = "compact";
      };
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
