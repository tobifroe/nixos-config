{ inputs, nixpkgs, self, username, host, ... }:
{
  imports = [
    ./bluetooth.nix
    ./bootloader.nix
    ./hardware.nix
    ./xserver.nix
    ./network.nix
    ./nh.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./trezor.nix
    ./user.nix
    ./wayland.nix
    ./virtualization.nix
  ];
}
