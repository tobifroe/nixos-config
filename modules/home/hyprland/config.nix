{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {

      # autostart
      exec-once = [
        "systemctl --user import-environment &"
        "hash dbus-update-activation-environment 2>/dev/null &"
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &"
        "nm-applet &"
        "wl-clip-persist --clipboard both"
        "swaybg -m fill -i /home/tobif/Pictures/wallpapers/others/eldritch.png &"
        "hyprctl setcursor Bibata-Modern-Ice 24 &"
        "poweralertd &"
        "waybar &"
        "swaync &"
        "wl-paste --watch cliphist store &"
        "hyprlock"

        ## App auto start
        "[workspace 1 silent] firefox"
        "[workspace 2 silent] alacritty"
        "[workspace 3 silent] keepassxc"
        "[workspace 4 silent] nautilus"
        "[workspace 5 silent] spotify"
      ];

      input = {
        kb_layout = "de,de";
        kb_options = "grp:alt_caps_toggle";
        numlock_by_default = true;
        follow_mouse = 0;
        float_switch_override_focus = 0;
        mouse_refocus = 0;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
        };
      };

      general = {
        "$mainMod" = "SUPER";
        layout = "dwindle";
        gaps_in = 5;
        gaps_out = 5;
        border_size = 2;
        "col.active_border" = "rgb(a48cf2) rgb(37f499) 45deg";
        "col.inactive_border" = "0x00000000";
        no_border_on_floating = false;
      };

      misc = {
        disable_autoreload = true;
        disable_hyprland_logo = true;
        always_follow_on_dnd = true;
        layers_hog_keyboard_focus = true;
        animate_manual_resizes = false;
        enable_swallow = true;
        focus_on_activate = true;
        new_window_takes_over_fullscreen = 2;
        middle_click_paste = false;
      };

      dwindle = {
        force_split = 0;
        special_scale_factor = 1.0;
        split_width_multiplier = 1.0;
        use_active_for_splits = true;
        pseudotile = "yes";
        preserve_split = "yes";
      };

      master = {
        new_status = "master";
        special_scale_factor = 1;
      };

      decoration = {
        rounding = 2;
        active_opacity = 0.95;
        inactive_opacity = 0.90;
        fullscreen_opacity = 1.0;

        blur = {
          enabled = true;
          size = 2;
          passes = 2;
          # size = 4;
          # passes = 2;
          brightness = 1;
          contrast = 1.400;
          ignore_opacity = true;
          noise = 0;
          new_optimizations = true;
          xray = true;
        };
      };

      animations = {
        enabled = true;

        bezier = [
          "fluent_decel, 0, 0.2, 0.4, 1"
          "easeOutCirc, 0, 0.55, 0.45, 1"
          "easeOutCubic, 0.33, 1, 0.68, 1"
          "easeinoutsine, 0.37, 0, 0.63, 1"
        ];

        animation = [
          # Windows
          "windowsIn, 1, 3, easeOutCubic, popin 30%" # window open
          "windowsOut, 1, 3, fluent_decel, popin 70%" # window close.
          "windowsMove, 1, 2, easeinoutsine, slide" # everything in between, moving, dragging, resizing.

          # Fade
          "fadeIn, 1, 3, easeOutCubic" # fade in (open) -> layers and windows
          "fadeOut, 1, 2, easeOutCubic" # fade out (close) -> layers and windows
          "fadeSwitch, 0, 1, easeOutCirc" # fade on changing activewindow and its opacity
          "fadeShadow, 1, 10, easeOutCirc" # fade on changing activewindow for shadows
          "fadeDim, 1, 4, fluent_decel" # the easing of the dimming of inactive windows
          "border, 1, 2.7, easeOutCirc" # for animating the border's color switch speed
          "borderangle, 1, 30, fluent_decel, once" # for animating the border's gradient angle - styles: once (default), loop
          "workspaces, 1, 4, easeOutCubic, fade" # styles: slide, slidevert, fade, slidefade, slidefadevert
        ];
      };

      bind = [
        # show keybinds list
        "$mainMod, F1, exec, show-keybinds"

        # keybindings
        "$mainMod, Return, exec, alacritty"
        "$mainMod, B, exec, hyprctl dispatch exec '[workspace 1 silent] firefox'"
        "$mainMod, Q, killactive,"
        "$mainMod, F, fullscreen, 0"
        "$mainMod SHIFT, F, fullscreen, 1"
        "$mainMod, Space, togglefloating,"
        "$mainMod, Space, centerwindow,"
        "$mainMod, Space, resizeactive, exact 950 600"
        "$mainMod, D, exec, rofi -show drun || pkill rofi"
        "$mainMod SHIFT, D, exec, hyprctl dispatch exec '[workspace 4 silent] discord --enable-features=UseOzonePlatform --ozone-platform=wayland'"
        "$mainMod SHIFT, S, exec, hyprctl dispatch exec '[workspace 5 silent] SoundWireServer'"
        "$mainMod, Escape, exec, swaylock"
        "ALT, Escape, exec, hyprlock"
        "$mainMod SHIFT, Escape, exec, power-menu"
        "$mainMod, J, togglesplit,"
        "$mainMod, T, exec, toggle_oppacity"
        "$mainMod, E, exec, nautilus"
        "$mainMod SHIFT, B, exec, toggle_waybar"
        "$mainMod, C ,exec, hyprpicker -a"
        "$mainMod, W,exec, wallpaper-picker"
        "$mainMod, N, exec, swaync-client -t -sw"
        "$mainMod SHIFT, W, exec, vm-start"

        # screenshot
        "$mainMod, P, exec, grimblast --notify --cursor --freeze save area ~/Pictures/$(date +'%Y-%m-%d-At-%Ih%Mm%Ss').png"
        ",Print, exec, grimblast --notify --cursor --freeze copy area"

        # switch focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # switch workspace
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # same as above, but switch to the workspace
        "$mainMod SHIFT, 1, movetoworkspacesilent, 1" # movetoworkspacesilent
        "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
        "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
        "$mainMod SHIFT, 0, movetoworkspacesilent, 10"
        "$mainMod CTRL, c, movetoworkspace, empty"

        # window control
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"
        "$mainMod CTRL, left, resizeactive, -80 0"
        "$mainMod CTRL, right, resizeactive, 80 0"
        "$mainMod CTRL, up, resizeactive, 0 -80"
        "$mainMod CTRL, down, resizeactive, 0 80"
        "$mainMod ALT, left, moveactive,  -80 0"
        "$mainMod ALT, right, moveactive, 80 0"
        "$mainMod ALT, up, moveactive, 0 -80"
        "$mainMod ALT, down, moveactive, 0 80"

        # media and volume controls
        ",XF86AudioMute,exec, pamixer -t"
        ",XF86AudioPlay,exec, playerctl play-pause"
        ",XF86AudioNext,exec, playerctl next"
        ",XF86AudioPrev,exec, playerctl previous"
        ",XF86AudioStop, exec, playerctl stop"

        "$mainMod, mouse_down, workspace, e-1"
        "$mainMod, mouse_up, workspace, e+1"

        # clipboard manager
        "$mainMod, V, exec, cliphist list | rofi -dmenu -theme-str 'window {width: 50%;}' | cliphist decode | wl-copy"
      ];

      # binds active in lockscreen
      bindl = [
        # laptop brigthness
        ",XF86MonBrightnessUp, exec, brightnessctl set 5%+"
        ",XF86MonBrightnessDown, exec, brightnessctl set 5%-"
        "$mainMod, XF86MonBrightnessUp, exec, brightnessctl set 100%+"
        "$mainMod, XF86MonBrightnessDown, exec, brightnessctl set 100%-"
      ];

      # binds that repeat when held
      binde = [
        ",XF86AudioRaiseVolume,exec, pamixer -i 2"
        ",XF86AudioLowerVolume,exec, pamixer -d 2"
      ];

      # mouse binding
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
      # windowrulev2
      windowrulev2 = [
        "float, title:^(Picture-in-Picture)$"
        "opacity 1.0 override 1.0 override, title:^(Picture-in-Picture)$"
        "pin, title:^(Picture-in-Picture)$"
        "opacity 1.0 override 1.0 override, title:^(.*imv.*)$"
        "opacity 1.0 override 1.0 override, title:^(.*mpv.*)$"
        "opacity 1.0 override 1.0 override, class:(Aseprite)"
        "opacity 1.0 override 1.0 override, class:(Unity)"
        "opacity 1.0 override 1.0 override, class:(floorp)"
        "opacity 1.0 override 1.0 override, class:(evince)"
        "workspace 1, class:^(floorp)$"
        "workspace 4, class:^(discord)$"
        "workspace 4, class:^(Gimp-2.10)$"
        "workspace 4, class:^(Aseprite)$"
        "workspace 5, class:^(Audacious)$"
        "workspace 5, class:^(Spotify)$"
        "idleinhibit focus, class:^(mpv)$"
        "idleinhibit fullscreen, class:^(firefox)$"
        "float,class:^(zenity)$"
        "center,class:^(zenity)$"
        "size 850 500,class:^(zenity)$"
        "size 850 500,title:^(File Upload)$"
        "float,class:^(pavucontrol)$"
        "float,class:^(SoundWireServer)$"
        "float,class:^(.sameboy-wrapped)$"
        "float,class:^(file_progress)$"
        "float,class:^(confirm)$"
        "float,class:^(dialog)$"
        "float,class:^(download)$"
        "float,class:^(notification)$"
        "float,class:^(error)$"
        "float,class:^(confirmreset)$"
        "float,title:^(Open File)$"
        "float,title:^(File Upload)$"
        "float,title:^(branchdialog)$"
        "float,title:^(Confirm to replace files)$"
        "float,title:^(File Operation Progress)$"

        "opacity 0.0 override,class:^(xwaylandvideobridge)$"
        "noanim,class:^(xwaylandvideobridge)$"
        "noinitialfocus,class:^(xwaylandvideobridge)$"
        "maxsize 1 1,class:^(xwaylandvideobridge)$"
        "noblur,class:^(xwaylandvideobridge)$"
      ];

    };

    extraConfig = "
      monitor=,preferred,auto,1.0

      xwayland {
        force_zero_scaling = true
      }
    ";
  };
}
