{ config, pkgs, ... }:

{
  config = {
    services = {
      trezord = {
        enable = true;
      };
      udev.packages = with pkgs; [ trezor-udev-rules qmk-udev-rules ];
    };
    environment.systemPackages = with pkgs; [
      trezor-suite
      trezorctl
    ];
  };
}
