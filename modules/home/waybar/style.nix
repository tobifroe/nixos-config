{ ... }:
let custom = {
  font = "JetBrainsMono Nerd Font";
  font_size = "18px";
  font_weight = "bold";
  text_color = "#cad3f5";
  background_0 = "#24273a";
  background_1 = "#363a4f";
  border_color = "#939ab7";
  red = "#ed8796";
  green = "#a6da95";
  yellow = "#eed49f";
  blue = "#8aadf4";
  magenta = "#ee99a0";
  cyant = "#8bd5ca";
  orange = "#f5a97f";
  opacity = "1";
  indicator_height = "2px";
};
in 
{
  programs.waybar.style = with custom; ''
    * {
      border: none;
      border-radius: 0px;
      padding: 0;
      margin: 0;
      font-family: ${font};
      font-weight: ${font_weight};
      opacity: ${opacity};
      font-size: ${font_size};
    }

    window#waybar {
      background: rgba(29, 32, 33, 0.5);
    }

    tooltip {
      background: ${background_1};
      border: 1px solid ${border_color};
    }
    tooltip label {
      margin: 5px;
      color: ${text_color};
    }

    #workspaces {
      padding-left: 15px;
    }
    #workspaces button {
      color: ${magenta};
      padding-left:  5px;
      padding-right: 5px;
      margin-right: 10px;
      border-bottom: ${indicator_height} solid ${background_0};
    }
    #workspaces button.empty {
      color: ${text_color};
    }
    #workspaces button.active {
      color: ${magenta};
      border-bottom: ${indicator_height} solid ${magenta};
    }

    #clock {
      color: ${text_color};
      border-bottom: ${indicator_height} solid ${background_0};
    }

    #tray {
      margin-left: 10px;
      color: ${text_color};
    }
    #tray menu {
      background: ${background_1};
      border: 1px solid ${border_color};
      padding: 8px;
    }
    #tray menuitem {
      padding: 1px;
    }

    #pulseaudio, #network, #cpu, #memory, #disk, #battery, #custom-notification {
      padding-left: 5px;
      padding-right: 5px;
      margin-right: 10px;
      color: ${text_color};
    }

    #cpu {
      border-bottom: ${indicator_height} solid ${green};
    }
    #memory {
      border-bottom: ${indicator_height} solid ${cyant};
    }
    #disk {
      border-bottom: ${indicator_height} solid ${orange};
    }

    #pulseaudio {
      margin-left: 15px;
      border-bottom: ${indicator_height} solid ${blue};
    }
    #network {
      border-bottom: ${indicator_height} solid ${magenta};
    }
    #battery {
      border-bottom: ${indicator_height} solid ${yellow};
    }

    #custom-notification {
      margin-left: 15px;
      padding-right: 2px;
      margin-right: 5px;
      border-bottom: ${indicator_height} solid ${red};
    }

    #custom-launcher {
      font-size: 20px;
      color: ${text_color};
      font-weight: bold;
      margin-left: 15px;
      padding-right: 10px;
      border-bottom: ${indicator_height} solid ${background_0};
    }
  '';
}
