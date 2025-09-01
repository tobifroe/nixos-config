{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      colors.primary = {
        background = "#212337";
        foreground = "#ebfafa";
      };
    };
  };
}
