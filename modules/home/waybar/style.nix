{ ... }:
let
  custom = {
    # eldritch theme
    font = "JetBrainsMono Nerd Font";
    font_size = "18px";
    font_weight = "bold";
    text_color = "#ebfafa";
    background_0 = "#212337";
    background_1 = "#323449";
    border_color = "#7081d0";
    red = "#f16c75";
    green = "#37f499";
    yellow = "#f1fc79";
    blue = "#04d1f9";
    magenta = "#f265b5";
    cyant = "#04d1f9";
    orange = "#f7c67f";
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
      background: rgba(33, 35, 55, 0.5);
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
