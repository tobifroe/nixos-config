{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [

    ## CLI utility
    air
    ani-cli
    bitwise                           # cli tool for bit / hex manipulation
    caligula                          # User-friendly, lightweight TUI for disk imaging
    cliphist                          # clipboard manager
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    ffmpeg
    file                              # Show file information 
    glib
    gtt                               # google translate TUI
    gifsicle                          # gif utility
    go
    gtrash                            # rm replacement, put deleted files in system trash
    hexdump
    imv                               # image viewer
    killall
    kubectl
    lazygit
    libnotify
	  man-pages					            	  # extra man pages
	  minikube
    mpv                               # video player
    ncdu                              # disk space
    nextcloud-client
    nitch                             # systhem fetch util
    nixpkgs-review
    nodejs_22
    openssl
    onefetch                          # fetch utility for git repo
    pamixer                           # pulseaudio command line mixer
    playerctl                         # controller for media players
    poweralertd
    programmer-calculator
    pipewire.jack
    qview                             # minimal image viewer
    ripgrep                           # grep replacement
    opentofu
    tldr
    unzip
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    wget
    yazi                              # terminal file manager
    yt-dlp-light
    xdg-utils
    xxd

    ## CLI 
    cbonsai                           # terminal screensaver
    cmatrix
    pipes                             # terminal screensaver
    sl
    tty-clock                         # cli clock

    ## GUI Apps
    calibre
    chromium
    keepassxc
    libreoffice
    nix-prefetch-github
    obsidian
    pavucontrol                       # pulseaudio volume controle (GUI)
    prusa-slicer
    qalculate-gtk                     # calculator
    reaper
    signal-desktop
    veracrypt
    vlc

    # C / C++
    gcc
    gdb
    gnumake

    # Python
    python3

    inputs.alejandra.defaultPackage.${system}
  ]);
}
